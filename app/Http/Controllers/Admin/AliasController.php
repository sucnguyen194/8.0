<?php

namespace App\Http\Controllers\Admin;

use App\Enums\SystemsModuleType;
use App\Http\Controllers\Controller;
use App\Models\Alias;
use Illuminate\Http\Request;

class AliasController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        if(auth()->id() > 1) $this->authorize('setting.alias');

        $alias = Alias::orderByDesc('id')->get();

        return view('Admin.Alias.list',compact('alias'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        if(auth()->id() > 1) $this->authorize('setting.alias');

        return view('Admin.Alias.add');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        if(auth()->id() > 1) $this->authorize('setting.alias');

        $request->validate([
            'alias' => 'required|string',
            'type' => 'required|string',
            'type_id' => 'integer'
        ]);

        if(Alias::whereAlias($request->alias)->count())
            return flash('Đường dẫn đã tồn tại', 3);

        Alias::create([
            'alias' => $request->alias,
            'type' => $request->type,
            'type_id' => $request->type_id,
        ]);
        return flash('Thêm mới thành công', 1, route('admin.alias.index'));
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
    public function edit(Alias $alias)
    {
        if(auth()->id() > 1) $this->authorize('setting.alias');

        return view('Admin.Alias.edit',compact('alias'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Alias $alias)
    {
        if(auth()->id() > 1) $this->authorize('setting.alias');

        $request->validate([
            'alias' => 'required|string',
            'type' => 'required|string',
            'type_id' => 'integer'
        ]);

        if(Alias::whereAlias($request->alias)->whereNotIn('type_id', $alias->id)->count())
          return  flash('Đường dẫn đã tồn tại', 3);

        $alias->model()->update([
           'alias' => $request->alias,
        ]);

        $alias->update([
            'alias' => $request->alias,
            'type' => $request->type,
            'type_id' => $request->type_id,
        ]);

        return flash('Cập nhật thành công!', 1);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Alias $alias)
    {
        if(auth()->id() > 1) $this->authorize('setting.alias');

        $alias->delete();

        return flash('Xóa thành công!', 1);
    }
}
