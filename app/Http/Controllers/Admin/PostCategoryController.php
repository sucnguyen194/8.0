<?php

namespace App\Http\Controllers\Admin;

use App\Enums\CategoryType;
use App\Enums\SystemsModuleType;
use App\Http\Controllers\Controller;
use App\Models\Admin;
use App\Models\Category;
use App\Models\Lang;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Session;

class PostCategoryController extends Controller
{
    public function index(){

        if(auth()->id() > 1) $this->authorize('blog.view');

        $lang = isset(request()->lang) ? request()->lang : Session::get('lang');

        $categories = Category::whereType(CategoryType::POST_CATEGORY)->whereLang($lang)
                ->when(request()->user,function($q, $user){
                    $q->where('user',$user);
                })
                ->when(request()->status,function($q, $status){
                    $status = request()->status == 'true' ? 1 : 0 ;
                    $q->where('status',$status);
                })
                ->when(request()->public, function($q, $public){
                    $public = request()->public == 'true' ? 1 : 0 ;
                    $q->where('public',$public);
                })
                ->orderByDesc('id')->get();

        $langs =  Lang::all();
        $users = Admin::get();

        return view('Admin.Post.category.index',compact('categories','langs','users'));
    }

    public function create(){
        if(auth()->id() > 1) $this->authorize('blog.create');
        $categories = Category::whereType(CategoryType::POST_CATEGORY)->langs()->orderByDesc('id')->get();
        return view('Admin.Post.category.create',compact('categories'));
    }

    public function edit(Category $category){
        if(auth()->id() > 1) $this->authorize('blog.edit');
        $lang = $category->lang;
        $type = SystemsModuleType::POST_CATEGORY;
        $categories = Category::whereLang($lang)->whereType($type)->whereNotIn('id',[$category->id])->orderByDesc('id')->get();

        //lang
        if($category->postLangsBefore){
            $id = array_unique($category->postLangsBefore->pluck('post_id')->toArray());
            $lists = Category::whereIn('id',$id)->get()->load('language');
            $langs = Lang::whereNotIn('value',$lists->pluck('lang'))->whereNotIn('value',[$category->lang])->get();
        }else{
            $lists = null;
            $langs = Lang::whereNotIn('value',[$category->lang])->get();
        }
        return view('Admin.Post.category.edit',compact('categories','category','type','lang','langs','lists'));
    }

    public function lang($language, $id){
        if(auth()->id() > 1) $this->authorize('blog.create');

        if(!Lang::whereValue($language)->count())
            return flash('Ngôn ngữ chưa được cấu hình', 3);

        $category = Category::findOrFail($id);
        $categories = Category::whereType(CategoryType::POST_CATEGORY)->whereLang($language)->orderbyDesc('id')->get();
        return view('Admin.Post.category.lang', compact('category','categories','language'));
    }
}
