<?php

namespace App\Http\Middleware;

use App\Enums\ActiveDisable;
use App\Models\Lang;
use App\Models\Setting;
use Closure;
use Illuminate\Http\Request;

class Session
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle(Request $request, Closure $next)
    {

        if(!session()->has('lang')){
            $lang = Lang::whereStatus(ActiveDisable::ACTIVE)->first();
            $value = $lang ? $lang->value : config('app.locale');
            session()->put('lang',$value);
        }

        if(!session()->has('setting')){
            session()->put('setting', Setting::langs()->firstOrFail());
        }

        return $next($request);
    }
}
