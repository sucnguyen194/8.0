<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Tags extends Model
{
    protected $table = 'tags';

    protected $fillable = ['name','alias','type_id','type','lang'];

}
