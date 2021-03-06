<?php

namespace App\Http\Controllers\Admin;

use App\Enums\LeverUser;
use App\Enums\ProductSessionType;
use App\Enums\SystemsModuleType;
use App\Http\Controllers\Controller;
use App\Models\Admin;
use App\Models\Import;
use App\Models\Product;
use App\Models\ProductSession;
use App\Models\User;
use App\Models\UserAgency;
use Cassandra\Type\UserType;
use Illuminate\Http\Request;
use Cart,Session;
use Illuminate\Support\Facades\Auth;

class ImportController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        if(auth()->id() > 1) $this->authorize('seller.import');

        $products = Product::selectRaw('id,name')->public()->get();
        $agencys = UserAgency::selectRaw('id,name')->status()->get();
        $imports = Import::with(['user','agency','sessions'])
            ->when(\request()->user,function($q, $user){
                $q->where('user_id',$user);
            })
            ->when(\request()->agency,function($q, $agency){
                $q->where('agency_id',$agency);
            })
            ->when(date_range(), function ($q, $range){
                $q->whereBetween('created_at', [$range['from']->startOfDay(), $range['to']->endOfDay()]);
            })
            ->get();
        $admins = Admin::selectRaw('id,name,email')->when(auth()->id() > 1, function ($q){
            $q->where('id','>', 1);
        })->get();

        return view('Admin.Import.index',compact('products','agencys','imports','admins'));
    }
    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        if(auth()->id() > 1) $this->authorize('seller.import');

        $products = Product::selectRaw('id,name,amount')->public()->orderByDesc('id')->get();
        $agencys = UserAgency::selectRaw('id,name')->status()->orderByDesc('id')->get();

        $agency = Session::has('agency') ? Session::get('agency') : 0;

        return view('Admin.Import.create',compact('products','agencys','agency'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        if(auth()->id() > 1) $this->authorize('seller.import');

        if(!Cart::instance('import')->count())
            return flash('????n h??ng tr???ng!', 3);

        switch ($request->send){
            case "cancel":
                Cart::instance('import')->destroy();
                Session::forget('agency');
                return flash('H???y ????n h??ng th??nh c??ng!', 1);
                break;

            case "save":
                $request->validate([
                    'checkout' => 'integer',
                    'agency' => 'required|min:1',
                ]);

                $total = str_replace(',','',Cart::instance('import')->subtotal(0));
                $checkout = $request->checkout;
                $import = Import::create([
                    'agency_id' => $request->agency,
                    'user_id' => Auth::id(),
                    'total' => $total,
                    'checkout' => $checkout,
                    'debt' => $total - $checkout,
                    'note' => $request->note,
                ]);
                foreach(Cart::instance('import')->content() as $cart):

                    $session = ProductSession::create([
                        'import_id' => $import->id,
                        'agency_id' => $import->agency_id,
                        'user_create' => Auth::id(),
                        'product_id' => $cart->id,
                        'amount' => $cart->qty,
                        'price_in' => $cart->price,
                        'type' => ProductSessionType::getKey(ProductSessionType::import)
                    ]);

                //update s??? l?????ng s???n ph???m ???????c nh???p
                $amount = $session->product->amount;
                $amount = $amount + $cart->qty;
                $session->product()->update(['amount' => $amount]);
                endforeach;

                //update c??ng n??? c???a nh?? cung c???p
                $debt = $import->agency->debt;
                $debt = $debt + $import->debt;
                $import->agency->increaseBalance($import->debt,'T???o m???i nh???p h??ng #'.$import->id, $import);
                $import->agency()->update(['debt' => $debt]);
                Session::forget('agency');
                Cart::instance('import')->destroy();
                return flash('Nh???p kho th??nh c??ng!', 1, route('admin.imports.index'));
                break;
                default;
                    return flash('L???i', 0);
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show(Import $import)
    {
        if(auth()->id() > 1) $this->authorize('seller.import');

        $users = User::get();
        $agencys = UserAgency::status()->get();
        $import->load('sessions');

        return view('Admin.Import.show',compact('import','users','agencys'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Import $import)
    {
        if(auth()->id() > 1) $this->authorize('seller.import');

        switch ($request->send){
            case 'user':
                $request->validate([
                    'user' => 'integer|required|min:1',
                    'agency' => 'integer|required|min:1',
                ]);

                $agency = UserAgency::find($request->agency);
                $user = User::find($request->user);
                if(!$agency || !$user)  return flash('Th??ng tin ch??a ???????c c???p nh???t!', 3);
                    if($agency->id <> $import->agency->id){
                        $agency->increaseBalance($import->debt,'Thay ?????i th??ng tin nh???p h??ng #'.$import->id, $import);
                        $agency->update([
                            'debt' => $agency->debt + $import->debt
                        ]);
                        $import->agency->increaseBalance(-$import->debt,'Thay ?????i th??ng tin nh???p h??ng #'.$import->id, $import);
                        $import->agency()->update([
                            'debt' => $import->agency->debt - $import->debt,
                        ]);
                    }

                $import->sessions()->update([
                    'user_create' => $request->user,
                    'agency_id' => $request->agency
                ]);
                $import->update([
                    'user_id' => $request->user,
                    'agency_id' => $request->agency,
                    'note' => $request->note
                ]);
                break;
            case 'checkout':
                $request->validate([
                    'checkout' => 'integer|required|min:1',
                ]);

                $checkout = $request->checkout;
                $debt = $import->total - $checkout;

                $agency_debt = $import->agency->debt - $import->debt + $debt;
                $import->agency->increaseBalance($debt - $import->debt,'C???p nh???t th??ng tin nh???p h??ng #'.$import->id, $import);
                $import->agency()->update([
                    'debt' => $agency_debt
                ]);
                $import->update([
                   'checkout' => $request->checkout,
                   'debt' => $debt,
                ]);

                break;
        }
        return flash('C???p nh???t th??nh c??ng!', 1);
    }

    public function updateSession(Request $request, $id){

        if(auth()->id() > 1) $this->authorize('seller.import');

        $request->validate([
            'amount' => 'required|integer|min:1',
            'price' => 'required|integer|min:0',
        ]);

        $session = ProductSession::find($id);

        $total = $session->import->total + ( ($request->amount * $request->price ) - ( $session->amount * $session->price_in) );
        $debt = $total - $session->import->checkout;
        $debt_agency = $session->agency->debt - $session->import->debt + $debt;
        //update t???ng ti???n + c??ng n??? trong imports
        $session->import()->update([
            'total' => $total,
            'debt' => $debt,
        ]);
        //update c??ng n??? NCC
        $session->agency->increaseBalance($debt - $session->import->debt,'S???a s???n ph???m #'.$session->product->id.' - th??ng tin nh???p h??ng #'.$session->import->id, $session->import);
        $session->agency()->update([
           'debt' => $debt_agency
        ]);

        //update s??? l?????ng trong products
        $amount = $session->product->amount + ($request->amount - $session->amount);
        $session->product()->update([
            'amount' => $amount
        ]);

        //update s??? l?????ng + gi?? nh???p trong product_sessions
        $session->update([
            'amount' => $request->amount,
            'price_in' => $request->price,
        ]);
        return flash('C???p nh???t th??nh c??ng!', 1);
    }

    public function destroySession($id){
        if(auth()->id() > 1) $this->authorize('seller.import');

        $session = ProductSession::find($id);
        if($session->product){
            $session->product()->update([
                'amount' => $session->product->amount - $session->amount
            ]);
        }

        $total = $session->import->total - ($session->amount * $session->price_in);
        $debt = $total - $session->import->checkout;

        $debt_agency = $session->agency->debt - $session->import->debt + $debt;
        if($session->agency){
            $session->agency->increaseBalance($debt - $session->import->debt,'H???y s???n ph???m #'.$session->product_id.' - th??ng tin nh???p h??ng #'.$session->import->id, $session->import);
            $session->agency()->update([
                'debt' => $debt_agency
            ]);
        }
        if($session->import){
            $session->import()->update([
                'total' => $total,
                'debt' => $debt,
            ]);
        }

        $session->delete();
        return flash('X??a th??nh c??ng!', 1);
    }
    public function ajax($id){
        if(auth()->id() > 1) $this->authorize('seller.import');
        $session = ProductSession::find($id);
        return response()->json($session);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Import $import)
    {
        if(auth()->id() > 1) $this->authorize('seller.import');

        $import->delete();

        return flash('X??a th??nh c??ng!', 1);
    }
}
