<?php
namespace App\Http\Controllers\Admin;

use App\Enums\CategoryType;
use App\Enums\SystemsModuleType;
use App\Http\Controllers\Controller;
use App\Jobs\CreateTags;
use App\Models\Admin;
use App\Models\Alias;
use App\Models\AttributeCategory;
use App\Models\Category;
use App\Models\Lang;
use App\Models\Product;
use App\Models\ProductSession;
use App\Models\User;
use App\Models\UserAgency;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Validator;
use Session, Image;

class ProductController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        if(auth()->id() > 1) $this->authorize('product.view');

        $type = SystemsModuleType::PRODUCT;
        $lang = isset(request()->lang) ? request()->lang : Session::get('lang');
        $products = Product::with('category')->whereType($type)->where('lang',$lang)
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
                $q->where('category_id',$category)
                    ->orwhereHas('categories')->when(\request()->category,function($q, $category){
                    $q->where('category_id',$category);
                });
            })
            ->orderByDesc('created_at')->get();
        $categories = Category::whereLang($lang)->whereType(CategoryType::PRODUCT_CATEGORY)->public()->get();
        $langs =  Lang::get();
        $users = Admin::when(auth()->id() > 1, function ($q){
            $q->where('id','>', 1);
        })->get();

        return view('Admin.Product.list',compact('products','categories','langs','users'));
    }
    public function stock(){
        if(auth()->id() > 1) $this->authorize('seller.card');

        $products = Product::public()->orderByDesc('created_at')->get();

        $sessions = ProductSession::with(['product', 'agency','user','admin'])
            ->when(date_range(),function($q, $date){
                $q->whereBetween('created_at',[$date['from']->startOfDay(),$date['to']->endOfDay()]);
            })
            ->when(\request()->product,function($q, $product){
                $q->where('product_id', $product);
            })
            ->when(\request()->type,function($q, $type){
                $q->where('type', $type);
            })
            ->orderByDesc('created_at')
            ->get();

        $import = $sessions->where('type','import');
        $export = $sessions->where('type','export');
        $import_debt = 0;
        $sales = 0;
        //vốn nhập hàng
        foreach ($import as $session){
            $debt = $session->price_in * $session->amount;
            $import_debt += $debt;
        }
        //doanh thu
        foreach ($export as $session){
            $revenue = $session->price * $session->amount;
            $sales += $revenue;
        }
        $balance = $import_debt - $sales;
        $revenue = $sessions->sum('revenue');
        $import = $import->sum('amount');
        $export = $export->sum('amount');

        return view('Admin.Product.stock',compact('sessions','products','import','export','import_debt','sales','revenue','balance'));
    }
    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        if(auth()->id() > 1) $this->authorize('product.create');

        $categories = Category::whereType(CategoryType::PRODUCT_CATEGORY)->public()->langs()->orderByDesc('id')->get();
        $attributes = AttributeCategory::with('attributes')->public()->oldest('sort')->get();

        return view('Admin.Product.add', compact('categories','attributes'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        if(auth()->id() > 1) $this->authorize('product.create') || $this->authorize('videos.create') || $this->authorize('galleries.create');

        Validator::make($request->data,[
            'name' => 'required',
            'alias' => 'required',
            'price' => 'integer|min:0',
            'price_sale' => 'integer|min:0',
            'amount' => 'integer|min:0',
        ])->validate();

        if(Alias::whereAlias($request->input('data.alias'))->count())
            return flash('Đường dẫn đã tồn tại!', 3);

        $product = new Product;
        $product->fill($request->data);

        if ($request->input('fields.0.name')){
            $fields = [];
            foreach ($request->fields as $field){
                if ($field['name']){
                    $fields[] = $field;
                }
            }
            $product->options = $fields;
        }
        if($request->input('data.video')){
            $product->video = str_replace('https://www.youtube.com/watch?v=','',$request->input('data.video'));
        }
        if($request->file('image') && !$request->unlink){
            upload_file_image($product, $request->file('image'), 375, 375);
        }
        $product->save();

        $checkFile = $request->checkFile ?? null;
        if($request->file('photo') && $checkFile){
            upload_multiple_image($product,$checkFile, $request->file('photo'), 375, 375);
        }

        if($product->tags){
            CreateTags::dispatch($product)->onQueue('default');
        }
        $product->categories()->attach($request->category_id);
        $product->attributes()->attach($request->attribute);

        return  flash('Thêm mới thành công', 1 , $product->route);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show(Product $product)
    {

    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit(Product $product)
    {
        if(auth()->id() > 1) $this->authorize('product.edit');

        $categories = Category::whereType(CategoryType::PRODUCT_CATEGORY)->public()->langs()->orderByDesc('id')->get();
        $photo = $product->photos()->orderby('sort','asc')->get();
        $attributes = AttributeCategory::with('attributes')->public()->oldest('sort')->get();

        if($product->postLangsBefore->count()){
            $id = array_unique($product->postLangsBefore->pluck('post_id')->toArray());
            $posts = Product::whereIn('id',$id)->get()->load('language');
            $langs = Lang::whereNotIn('value',$posts->pluck('lang'))->where('value','<>',$product->lang)->get();
        }else{
            $langs = Lang::where('value','<>',$product->lang)->get();
        }

        return view('Admin.Product.edit',compact('product','categories','photo','posts','langs','attributes'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Product $product)
    {
        if(auth()->id() > 1) $this->authorize('product.create') || $this->authorize('videos.create') || $this->authorize('galleries.create');

        Validator::make($request->data,[
            'name' => 'required',
            'alias' => 'required',
            'price' => 'integer|min:0',
            'price_sale' => 'integer|min:0',
            'amount' => 'integer|min:0',
        ])->validate();

        if(Alias::whereAlias($request->input('data.alias'))->whereNotIn('id',[$product->slug->id])->count() > 0)
            return flash('Đường dẫn đã tồn tại!', 3);

        $product->fill($request->data);

        if ($request->input('fields.0.name')){
            $fields = [];
            foreach ($request->fields as $field){
                if ($field['name']){
                    $fields[] = $field;
                }
            }
            $product->options = $fields;
        }
        if($request->unlink){
            File::delete($product->image);
            File::delete($product->thumb);

            $product->image = null;
            $product->thumb = null;
        }elseif ($request->file('image')){
            upload_file_image($product, $request->file('image'), 375, 375);
        }
        if($request->input('data.video')){
            $product->video = str_replace('https://www.youtube.com/watch?v=','',$request->input('data.video'));
        }
        $product->user_edit = Auth::id();
        $product->save();

        $product->tags()->delete();
        if($product->tags){
            CreateTags::dispatch($product)->onQueue('default');
        }
        $product->categories()->sync($request->category_id);
        $product->attributes()->sync($request->attribute);

        return  flash('Cập nhật thành công!', 1);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function remove($id){
        if(auth()->id() > 1) $this->authorize('product.create') || $this->authorize('videos.create') || $this->authorize('galleries.create');

        $product = Product::findOrFail($id);
        $product->delete();
        return flash('Xóa thành công!', 1);
    }

    public function delete(Request $request)
    {
        if(auth()->id() > 1) $this->authorize('product.create') || $this->authorize('videos.create') || $this->authorize('galleries.create');

        if($request->destroy == 'delete'){
            $count = count($request->check_del);
            for($i=0;$i<$count;$i++){
                $id = $request->check_del[$i];
                $product = Product::findOrFail($id);
                $product->delete();
            }
            return flash('Xóa thành công!', 1);
        }
    }
    public function destroy($id)
    {

    }

    public function lang($lang, $id)
    {
        if(auth()->id() > 1) $this->authorize('product.create');

        if(!Lang::whereValue($lang)->count())
            return flash('Ngôn ngữ chưa được cấu hình!', 3);
        $product = Product::find($id);
        $categories = Category::whereType(CategoryType::PRODUCT_CATEGORY)->public()->whereLang($lang)->langs()->orderByDesc('id')->get();
        $attributes = AttributeCategory::with('attributes')->public()->oldest('sort')->get();
        return view('Admin.Product.lang', compact('categories','product','lang','attributes'));
    }

    public function add(Request $request , $lang, $id)
    {
        if(auth()->id() > 1) $this->authorize('product.create') || $this->authorize('videos.create') || $this->authorize('galleries.create');

        Validator::make($request->data,[
            'name' => 'required',
            'alias' => 'required',
            'price' => 'integer|min:0',
            'price_sale' => 'integer|min:0',
            'amount' => 'integer|min:0',
        ])->validate();

        if(Alias::whereAlias($request->input('data.alias'))->count())
            return flash('Đường dẫn đã tồn tại!', 3);

        $product = new Product;
        $product->fill($request->data);

        if ($request->input('fields.0.name')){
            $fields = [];
            foreach ($request->fields as $field){
                if ($field['name']){
                    $fields[] = $field;
                }
            }
            $product->options = $fields;
        }

        if($request->input('data.video')){
            $product->video = str_replace('https://www.youtube.com/watch?v=','',$request->input('data.video'));
        }
        if($request->file('image') && !$request->unlink){
            upload_file_image($product, $request->file('image'), 375, 375);
        }
        $product->lang = $lang;
        $product->save();

        $product->categories()->attach($request->category_id);
        $product->attributes()->attach($request->attribute);

        $checkFile = $request->checkFile ?? null;
        if($request->file('photo') && $checkFile){
            upload_multiple_image($product, $checkFile, $request->file('photo'), 375, 375);
        }

        if($product->tags){
            CreateTags::dispatch($product)->onQueue('default');
        }

        $old = Product::findOrFail($id);
        if($old) {
            add_post_lang($id,$product,$old,$old->type,$lang);
        }

        return flash('Thêm mới thành công!', 1, $product->route);
    }
}
