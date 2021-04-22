<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Transaction extends Model
{
    public function user(){
        return $this->belongsTo(User::class);
    }

    public function agency(){
        return $this->belongsTo(UserAgency::class,'agency_id');
    }

    public function source(){
        return $this->morphTo();
    }
}
