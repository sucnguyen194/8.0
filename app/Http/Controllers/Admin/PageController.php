<?php

namespace App\Http\Controllers\Admin;

use App\Enums\SystemsModuleType;
use App\Http\Controllers\Controller;
use App\Models\Admin;
use App\Models\Lang;
use App\Models\Post;
use App\Models\User;
use Illuminate\Http\Request;
use Session;

class PageController extends Controller
{
    public function index()
    {
        if(auth()->id() > 1) $this->authorize('blog.view');

        $lang = isset(request()->lang) ? request()->lang : Session::get('lang');

        $posts = Post::with(['language'])->where('lang',$lang)->whereType(SystemsModuleType::PAGE)
            ->when(request()->user,function($q, $user){
                $q->where('user_id',$user);
            })
            ->when(request()->status,function($q){
                $status = request()->status == 'true' ? 1 : 0 ;
                $q->where('status',$status);
            })
            ->when(request()->public, function($q){
                $public = request()->public == 'true' ? 1 : 0 ;
                $q->where('public',$public);
            })
            ->orderByDesc('id')->get();

        $langs =  Lang::get();
        $users = Admin::get();

        return view('Admin.Page.index', compact('posts','langs','users'));
    }

    public function create(){
        if(auth()->id() > 1) $this->authorize('blog.create');

        return view('Admin.Page.create');
    }

    public function edit(Post $page){

        if(auth()->id() > 1) $this->authorize('blog.edit');

        if($page->postLangsBefore){
            $id = array_unique($page->postLangsBefore->pluck('post_id')->toArray());
            $pages = Post::whereIn('id',$id)->get()->load('language');
            $langs = Lang::whereNotIn('value',$pages->pluck('lang'))->where('value','<>',$page->lang)->get();
        }else{
            $pages = null;
            $langs = Lang::where('value','<>',$page->lang)->get();
        }

        return view('Admin.Page.edit', compact('page','pages','langs'));
    }

    public function lang($lang , $id){
        if(auth()->id() > 1) $this->authorize('blog.create');

        $post = Post::findOrFail($id);
        return view('Admin.Page.lang',compact('post','lang'));
    }
}
