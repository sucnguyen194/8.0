<?php

namespace App\Http\Controllers\Admin;
use App\Enums\ActiveDisable;
use App\Enums\CategoryType;
use App\Enums\SystemsModuleType;
use App\Http\Controllers\Controller;
use App\Jobs\CreateTags;
use App\Models\Admin;
use App\Models\Alias;
use App\Models\Category;
use App\Models\Lang;
use App\Models\Post;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\File;
use Session;

class PostController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        if(auth()->id() > 1) $this->authorize('blog.view');

        $lang = isset(request()->lang) ? request()->lang : Session::get('lang');

        $posts = Post::with('category')
        ->whereLang($lang)->whereType(SystemsModuleType::POST)
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
        ->when(\request()->category,function($q){
            $category = \request()->category == -1 ? 0 : \request()->category;
            $q->where('category_id',$category)->orwhereHas('categorys')->when(\request()->category,function($q, $category){
                $q->where('category_id',$category);
            });
        })
        ->orderByDesc('id')->get();

        $category = Category::whereLang($lang)->whereType(SystemsModuleType::POST_CATEGORY)->public()->get();

        $langs =  Lang::get();

        $user = Admin::when(auth()->id() > 1, function ($q){
            $q->where('id','>', 1);
        })->get();

        return view('Admin.Post.index',compact('posts','langs','user','category'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        if(auth()->id() > 1) $this->authorize('blog.create');
        $categories = Category::wherePublic(ActiveDisable::ACTIVE)
            ->whereType(CategoryType::POST_CATEGORY)
            ->whereLang(Session::get('lang'))
            ->orderByDesc('id')->get();
        return view('Admin.Post.create',compact('categories'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        if(auth()->id() > 1) $this->authorize('blog.create');

        $request->validate([
            'data.title' => 'required',
            'data.alias' => 'required',
        ]);
        $post = new Post();
        $post->forceFill($request->data);
        if(Alias::whereAlias($request->input('data.alias'))->count())
            return  flash('Đường dẫn đã tồn tại', 3);

        if(!$request->has('unlink') && $request->hasFile('image')){
           upload_file_image($post, $request->file('image'), 375, 375);
        }
        $post->save();

        if($request->input('data.tags')){
            CreateTags::dispatch($post)->onQueue('default');
        }
        $post->categories()->attach($request->category_id);

        return flash('Thêm mới thành công',1, $post->route);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit(Post $post)
    {
        if(auth()->id() > 1) $this->authorize('blog.edit');

        $categories = Category::whereType(CategoryType::POST_CATEGORY)->public()->langs()->get();

        if($post->postLangsBefore->count()){
            $id = array_unique($post->postLangsBefore->pluck('post_id')->toArray());
            $posts = Post::whereIn('id',$id)->with('language')->get();
            $langs = Lang::whereNotIn('value',$posts->pluck('lang'))->where('value','<>',$post->lang)->get();
        }else{
            $posts = null;
            $langs = Lang::where('value','<>',$post->lang)->get();
        }
        return  view('Admin.Post.edit', compact('post','categories','langs','posts'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Post $post)
    {
        if(auth()->id() > 1) $this->authorize('blog.edit');

        $request->validate([
            'data.title' => 'required',
            'data.alias' => 'required',
        ]);

        if(Alias::whereAlias($request->input('data.alias'))->whereNotIn('id',[$post->slug->id])->count())
            return flash('Đường dẫn đã tồn tại', 3);

        $post->forceFill($request->data);
        if($request->unlink){
            File::delete($post->image);
            File::delete($post->thumb);
            $post->image = null;
            $post->thumb = null;
        }elseif($request->hasFile('image')){
            File::delete($post->image);
            File::delete($post->thumb);
            upload_file_image($post, $request->file('image'), 375, 375);
        }
        $post->user_edit = Auth::id();
        $post->public = $request->has('public') ? 1 : 0;
        $post->status = $request->has('status') ? 1 : 0;
        $post->save();
        $post->categories()->sync($request->category_id);

        if($post->tags){
            CreateTags::dispatch($post)->onQueue('default');
        }

        return flash('Cập nhật thành công!',1);
    }

    public function lang($lang, $id){

        if(auth()->id() > 1) $this->authorize('blog.create');

        if(!Lang::whereValue($lang)->count())
            return flash('Ngôn ngữ chưa được cấu hình', 3);
        $post = Post::findOrFail($id);
        $categories = Category::whereType(CategoryType::POST_CATEGORY)->whereLang($lang)->public()->get();
        return view('Admin.Post.lang',compact('post','lang','categories'));
    }
    public function add(Request $request, $lang, $id){
        if(auth()->id() > 1) $this->authorize('blog.create');

        $request->validate([
            'data.title' => 'required',
            'data.alias' => 'required',
        ]);
        $post = new Post();
        $post->forceFill($request->data);
        if(Alias::whereAlias($request->input('data.alias'))->count())
            return  flash('Đường dẫn đã tồn tại', 3);

        if(!$request->has('unlink') && $request->hasFile('image')){
            upload_file_image($post, $request->file('image'), 375, 375);
        }
        $post->lang = $lang;
        $post->save();

        $post->categories()->attach($request->category_id);
        if($post->tags){
            CreateTags::dispatch($post)->onQueue('default');
        }
        $old = Post::findOrFail($id);

        if($old) {
            add_post_lang($id,$post,$old,$old->type,$lang);
        }

        return flash('Thêm mới thành công',1,$post->route);
    }
    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function remove($id){
        if(auth()->id() > 1) $this->authorize('blog.destroy');
        $post = Post::findOrFail($id);
        $post->delete();

        return flash('Xóa thành công', 1);
    }

    public function delete(Request $request){
        if(auth()->id() > 1) $this->authorize('blog.destroy');
        if($request->destroy == 'delete'){
            $count = count($request->check_del);
            for($i=0;$i<$count;$i++){
                $id = $request->check_del[$i];
                $post = Post::findOrFail($id);
                $post->delete();
            }
        }
        return flash('Xóa thành công', 1);
    }

    public function destroy($id)
    {
        //
    }
}
