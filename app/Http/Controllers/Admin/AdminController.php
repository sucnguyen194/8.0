<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Admin;
use Illuminate\Http\Request;
use Spatie\Permission\Models\Role;

class AdminController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        if(auth()->id() > 1){
            $this->authorize('admins.view');
            $admins = Admin::where('id','>', 1)->get();
        }else{
            $admins = Admin::get();
        }

        return view('Admin.Admin.index',compact('admins'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
      if(auth()->id() > 1)  $this->authorize('admins.create');

        $roles = Role::get();
        return view('Admin.Admin.create',compact('roles'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        if(auth()->id() > 1)  $this->authorize('admins.create');

        $request->validate([
            'data.name' => 'required',
            'data.email' => 'required',
        ]);

        $admin = new Admin();
        $admin->forceFill($request->data);
        $admin->password = bcrypt($request->password);
        $admin->save();

        if ($request->roles){
            $admin->syncRoles($request->roles);
        }

        return  flash('Thêm mới thành công!',1,route('admin.admins.index'));
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit(Admin $admin)
    {
        if(auth()->id() > 1)  $this->authorize('admins.edit');

        if(auth()->id() > 1)
            return flash('Lỗi',0);

        $roles = Role::get();

        return view('Admin.Admin.edit',compact('admin','roles'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Admin $admin)
    {
        if(auth()->id() > 1)  $this->authorize('admins.edit');

        if(auth()->id() > 1)
            return flash('Lỗi',0);

        $request->validate([
            'data.name' => 'required',
            'data.email' => 'required',
        ]);

        $admin->forceFill($request->data);

        if (Admin::where('email', $request->password)->where('id', '<>', $admin->id)->count())
            return flash('Email đã tồn tại', 0);

        if($request->has('password'))
            $admin->password = bcrypt($request->password);

        $admin->save();

        if ($request->roles){
            $admin->syncRoles($request->roles);
        }

        return flash('Cập nhật thành công!');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Admin $admin)
    {
        if(auth()->id() > 1)  $this->authorize('admins.destroy');

        if ($admin->id == auth()->id()){
            return flash('?????', 3);
        }
        if(auth()->id() > 1)
            return flash('Lỗi',0);

        $admin->delete();
        return flash('Xoá admin thành công');
    }
}
