<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Spatie\Permission\Models\Permission;

class PermissionsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        if(auth()->id() > 1) $this->authorize('permissions.view');

        app()->make(\Spatie\Permission\PermissionRegistrar::class)->forgetCachedPermissions();
        $permissions = Permission::get();

        return view('Admin.Permissions.index', compact('permissions'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        if(auth()->id() > 1) $this->authorize('permissions.create');

        $permissions = Permission::whereParentId(0)->get();
        return view('Admin.Permissions.create',compact('permissions'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        if(auth()->id() > 1) $this->authorize('permissions.create');

        $request->validate([
            'title' => 'required',
        ]);
        if(Permission::whereName($request->name)->count())
            return flash('Giá trị đã tồn tại', 0);

        Permission::create($request->all());

        return flash('Thêm mới thành công', 1 , route('admin.permissions.index'));
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
    public function edit(Permission $permission)
    {
        if(auth()->id() > 1) $this->authorize('permissions.edit');

        $permissions = Permission::whereParentId(0)->get();
        return view('Admin.Permissions.edit',compact('permission','permissions'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Permission $permission)
    {
        if(auth()->id() > 1) $this->authorize('permissions.edit');

        $request->validate([
            'title' => 'required',
        ]);
        if(Permission::whereName($request->name)->where('id','<>', $permission->id)->count())
            return flash('Giá trị đã tồn tại', 0);

        $permission->update($request->all());

        return flash('Cập nhật thành công');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Permission $permission)
    {
        if(auth()->id() > 1) $this->authorize('permissions.destroy');

        Permission::whereParentId($permission->id)->delete();
        $permission->delete();
        return flash('Xoá thành công');
    }
}
