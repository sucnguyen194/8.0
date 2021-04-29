<?php

namespace App\Http\Controllers\Admin;
use App\Http\Controllers\Controller;
use App\Enums\SystemsModuleType;
use App\Models\UserDebt;
use Illuminate\Http\Request;

class UserDebtController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        if(auth()->id() > 1) $this->authorize('debts.view');

        $users = UserDebt::when(\request()->id,function ($q, $id){
            $q->whereId($id);
        })->orderByDesc('updated_at')->get();

        return view('Admin.Debt.index',compact('users'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        if(auth()->id() > 1) $this->authorize('debts.create');

        return view('Admin.Debt.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        if(auth()->id() > 1) $this->authorize('debts.create');

        $user = new UserDebt();
        $user->forceFill($request->data);
        $user->save();

        return flash('Thêm mới thành công!', 1, route('admin.debts.index'));
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show(UserDebt $debt)
    {
        if(auth()->id() > 1) $this->authorize('debts.view');

        $transactions = $debt->transactions()->when(date_range(),function ($q, $date){
            $q->whereBetween('created_at', [$date['from']->startOfDay(), $date['to']->endOfDay()]);
        })
            ->orderByDesc('created_at')
            ->get();
        return view('Admin.Debt.show',compact('debt','transactions'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit(UserDebt $debt)
    {
        if(auth()->id() > 1) $this->authorize('debts.edit');

        $debt->load('transactions');
        return view('Admin.Debt.edit',compact('debt'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, UserDebt $debt)
    {
        if(auth()->id() > 1) $this->authorize('debts.edit');

        $debt->forceFill($request->data);
        $debt->status = $request->has('stauts') ? 1 : 0;
        $debt->save();
        return flash('Cập nhật thành công!', 1);
    }

    public function debts($id,$type, $current){
        if(auth()->id() > 1) $this->authorize('debts.borrow.pay');

        $user = UserDebt::findOrFail($id);
        switch ($type){
            case 'borrow':
                $status = 'Vay';
                $note = 'Vay vốn #';
                break;
            case 'pay':
                $status = 'Trả';
                $current = - $current;
                $note = "Trả tiền #";
                break;
        }
        $user->increaseBalance($current,$note.number_format($current), $user);
        $debt = $user->debt + $current;
        $user->update([
           'debt' => $debt
        ]);
        $users = UserDebt::orderByDesc('updated_at')->get();

        return response()->json($users);
    }
    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(UserDebt $debt)
    {
        if(auth()->id() > 1) $this->authorize('debts.destroy');

        $debt->transactions()->delete();
        $debt->delete();
        return flash('Xóa thành công!', 1);
    }
}
