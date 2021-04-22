<?php

namespace App\Http\Controllers\Admin;

use App\Enums\SystemsModuleType;
use App\Enums\Upload;
use App\Http\Controllers\Controller;
use App\Http\Requests\StoreUserRequest;
use App\Http\Requests\UpdateUserRequest;
use App\Models\Admin;
use App\Models\System;
use App\Models\Transaction;
use App\Models\User;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Hash;

class UserController extends Controller
{
    public $type = SystemsModuleType::USER;
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        if(auth()->id() > 1)
        $this->authorize('user.view');

        $user = User::when(request()->id,function ($q,$id){
            $q->where('id',$id);
        })
        ->get();

        return view('Admin.User.list',compact('user'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        if(auth()->id() > 1)
            $this->authorize('user.create');


        return view('Admin.User.add');

    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(StoreUserRequest $request)
    {
        if(auth()->id() > 1)
            $this->authorize('user.create');

        $user = new User();
        $user->forceFill($request->data);

        if($request->hasFile('image')){
            upload_file_image($user,$request->file('image'), null,null, Upload::avata);
        }
        $password = $request->password;
        $re_password = Hash::make($request->re_password);
        if(!Hash::check($password, $re_password))
            return flash('Mất khẩu không khớp!', 3);

        $user->password = bcrypt($password);
        $user->save();

        return flash('Thêm tài khoản thành công!', 1 , route('admin.users.index'));
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show(User $user)
    {
        if(auth()->id() > 1)
            $this->authorize('user.view');

        $transaction = Transaction::whereUserId($user->id)
            ->when(date_range(),function ($q, $date){
                $q->whereBetween('created_at', [$date['from']->startOfDay(), $date['to']->endOfDay()]);
            })
            ->orderByDesc('created_at')
            ->get();

        return  view('Admin.User.transaction',compact('user','transaction'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit(User $user)
    {
        if(auth()->id() > 1)
            $this->authorize('user.edit');

            return view('Admin.User.edit',compact('user'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(UpdateUserRequest $request, User $user)
    {
        if(auth()->id() > 1)
            $this->authorize('user.edit');

            $user->forceFill($request->data);
            if($request->hasFile('image')){
                File::delete($user->avata);
                upload_file_image($user, $request->input('image'), null,null, Upload::avata);
            }
            if($request->password){
                $password = $request->password;
                $re_password = Hash::make($request->re_password);

                if(!Hash::check($password, $re_password))
                    return flash('Mật khẩu không khớp', 3);
                $user->password = bcrypt($request->password);
            }
           $user->save();

           return  flash('Cập nhật thông tin thành công!', 1);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(User $user)
    {
        if(auth()->id() > 1)
            $this->authorize('user.destroy');

        $user->delete();
        return flash('Xóa thành công', 1);
    }

}
