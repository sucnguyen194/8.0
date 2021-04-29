<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class ProductSession extends Model
{
    protected $guarded = ['id'];

    public function product(){
        return $this->belongsTo(Product::class);
    }

    public function import(){
        return $this->belongsTo(Import::class);
    }

    public function export(){
        return $this->belongsTo(Order::class);
    }

    public function agency(){
        return $this->belongsTo(UserAgency::class);
    }

    public function user(){
        return $this->belongsTo(User::class);
    }

    public function admin(){
        return $this->belongsTo(Admin::class,'user_create');
    }

    public function orders(){
        return $this->belongsToMany(Order::class);
    }

    //UPDATE AMOUNT CREATE ORDER (ok)
    public function updateAmountSession($id,$quantity, $order){

        $session = new ProductSession();
        $session = $session->whereType('import')->whereColumn('amount_export','<','amount')->whereProductId($id)->oldest()->first();

        $amount = $session->amount - $session->amount_export - abs($quantity);
        if($amount >= 0 ){
            $session->update([
                'amount_export' => $session->amount_export + abs($quantity)
            ]);
        }else{
            $session->update([
                'amount_export' => $session->amount
            ]);
            $this->subUpdateAmountSession($session,abs($amount),$order);
        }
        $order->imports()->attach($session->id);
    }
    public function subUpdateAmountSession($item, $quantity , $order){

        $session = $item->where('id','>',$item->id)->whereType('import')->whereProductId($item->product_id)->oldest()->first();
        if($order && $session) $order->imports()->attach($session->id);

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

    //UPDATE AMOUNT EDIT ORDER  (ok)
    public function updateAmountSessionEdit($product_id, $quantity, $order){
        $session = new ProductSession();
        if($order){

            $sum_export =  $order->sessions()->whereProductId($product_id)->sum('amount');
            $session = $session->whereProductId($product_id)->whereHas('orders',function($q) use ($order){
                $q->whereOrderId($order->id);
            })->oldest()->first();

            if($session){
                $this->updateAmountSessionDelete($product_id,$sum_export, $order);
                $this->updateAmountSession($session->product_id,abs($quantity),$order);
            }

        }
    }

    //UPDATE AMOUNT AFTER DELETE (ok)
    public function updateAmountSessionDelete($id, $quantity,$order){
        $session = new ProductSession();

        $session = $session->whereProductId($id)->whereType('import')->whereHas('orders',function($q) use ($order){
            $q->whereOrderId($order->id);
        })->oldest()->first();

        if(!$session)
            $session = $session->whereProductId($id)->whereType('import')->oldest()->first();

        $order->imports()->detach();

        $amount =  $session->amount_export - abs($quantity);
        if($amount >= 0){
            $session->update([
                'amount_export' => $amount,
            ]);
        }else{
            $session->update([
                'amount_export' => 0
            ]);
            $this->subUpdateAmountSessionDelete($session,abs($amount));
        }
    }
    public function subUpdateAmountSessionDelete($item, $quantity){

        $session = $item->where('id','>',$item->id)->whereType('import')->whereProductId($item->product_id)->oldest()->first();
        $amount = $session->amount_export - $quantity;
        if($amount >= 0) {
            $session->update([
                'amount_export' => $amount,
            ]);
        }else{
            $session->update([
                'amount_export' => 0
            ]);
            $this->subUpdateAmountSessionDelete($session,abs($amount));
        }
    }
}
