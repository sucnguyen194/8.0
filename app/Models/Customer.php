<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Customer extends Model
{
    protected $table = 'customer';

    protected $fillable = ['name','image','description','job','hotline','email','address','skype','zalo','facebook','twitter','youtube','instagram','content','user_id','user_eidt','public','status','lang','sort'];

    public function getLanguageAttribute(){
        return Lang::where('value',$this->lang)->firstOrFail();
    }
}
