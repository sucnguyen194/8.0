<?php

namespace App\Http\Controllers;

use App\Enums\AliasType;
use App\Enums\SystemsModuleType;
use App\Models\Alias;
use App\Models\Category;
use App\Models\Order;
use App\Models\Post;
use App\Models\Product;
use App\Models\ProductSession;
use App\Models\SiteSetting;
use Session;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
//        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        $sessions = new ProductSession();
        $order = ProductSession::find(32);

        dd($order);

        return view('Layouts.home');
    }
    public function subUpdateAmountSession($item, $quantity , $order = null){

        $session = $item->where('id','>',$item->id)->whereType('import')->whereProductId($item->product_id)->oldest()->first();
        if($session) $order->createOrderSessions($session->id);

        $amount = $session->amount - $quantity;
        if($amount >= 0) {
            $session->update([
                'amount_export' => $session->amount_export + $quantity
            ]);
        }else{
            $session->update([
                'amount_export' => $session->amount
            ]);
            return $this->subUpdateAmountSession($session,abs($amount), $order);
        }
    }
    public function updateAmountSessionAfter($product_id, $quantity, $order = null){
        $session = new ProductSession();
        $sessions = $session->whereProductId($product_id)->whereHas('orderSessions',function($q) use ($order){
            $q->whereOrderId($order);
        })->oldest()->first();

        $amount = $sessions->amount_export - abs($quantity);
        if($amount >= 0){
            $sessions->update([
                'amount_export' => $amount,
            ]);
        }else{
            $sessions->update([
                'amount_export' => $sessions->amount
            ]);
            $this->subUpdateAmountSessionAfter($sessions,abs($amount));
        }
    }
    public function subUpdateAmountSessionAfter($item, $quantity){

        $session = ProductSession::where('id','>',$item->id)->whereType('import')->whereProductId($item->product_id)->oldest()->first();

        if($session){
            $amount = $session->amount_export - $quantity;
            if($amount >= 0) {
                $session->update([
                    'amount_export' => $amount,
                ]);
            }else{
                $session->update([
                    'amount_export' => $session->amount
                ]);
                return $this->subUpdateAmountSessionAfter($session,abs($amount));
            }
        }else{
            return $this->updateAmountSession($item->product_id, abs($quantity));
        }

    }

    public function getAlias($alias)
    {
        $object = Alias::whereAlias($alias)->firstOrFail();
        switch ($object->type) {
            case (AliasType::PRODUCT);
                $data['product'] = Product::whereAlias($alias)->public()->firstOrFail();
//                $model = $object->findModel($object->type,$object->type_id);
//                $data['comments'] = $model->comments->load(['user','admin']);
//                $data['model'] = $model;
                return view('Product.product',$data);
                break;
            case (AliasType::PRODUCT_CATEGORY);
                return view('Product.category');
                break;
            case (AliasType::POST);
//                $model = $object->findModel($object->type,$object->type_id);
//                $data['comments'] = $model->comments->load(['user','admin']);
//                $data['model'] = $model;
                $post = Post::whereAlias($alias)->public()->firstOrFail();
                $data['post'] = $post;
//                $data['cate'] = $post->category()->get();
                //$data['related'] = $news->categoryid()->newsnotid()->public()->langs()->take(6)->orderByDesc('updated_at')->get();
//                $data['tags'] = Tags::whereType(AliasType::NEWS)->whereTypeId($news->id)->get();
//                $data['prev'] = News::where('id','<',$news->id)->whereCategoryId($news->category_id)->langs()->public()->first();
//                $data['next'] = News::where('id','>',$news->id)->whereCategoryId($news->category_id)->langs()->public()->first();

                if(Session::get(AliasType::POST) <> $post->id){
                    $post->update(['view' => $post->view + 1]);
                    Session::put(AliasType::POST, $post->id);
                }
                if($post->type == SystemsModuleType::PAGE)
                    return view('Post.page', $data);

                return view('Post.show',$data);
                break;
            case (AliasType::POST_CATEGORY);
                $data['cate'] = Category::whereAlias($alias)->public()->firstOrFail();
                $data['posts'] = Post::with(['category','user','categories'])->orwhereHas('categories',function($q) use ($data) {
                    $q->where('category_id',$data['cate']->id);
                })->orWhere('category_id',$data['cate']->id)
                    ->public()->langs()->paginate(20);

                return view('Post.index', $data);
                break;
            case (AliasType::VIDEO);
                return view('Video.video');
                break;
            case (AliasType::GALLERY);
                return view('Gallery.gallery');
                break;
        }

    }
}
