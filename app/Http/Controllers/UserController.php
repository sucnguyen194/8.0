<?php namespace App\Http\Controllers;
use App\Enums\LeverUser;
use App\Models\SiteSetting;
use App\Models\SocialIdentity;
use App\Models\User;
use Auth;
use App\Http\Requests;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Cookie;
use Laravel\Socialite\Facades\Socialite;
use Psy\Util\Str;
use Session,Schema,DB,Artisan,Mail;
use Illuminate\Http\Request;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class UserController extends Controller {

	public function getInfo(){
	    if(Auth::check())
            return view('User.info');

        return redirect()->route('user.login')->withInput('message','Vui lòng đăng nhập trước khi kiểm tra thông tin');
	}
	public function postEditUser(Request $request){
		$account = $request->account;
		$password = $request->password;
		$re_password = $request->re_password;
		$email = $request->email;
		$name = $request->name;
		$phone = $request->phone;
		$address = $request->address;
		if($account){

		    $getUser = User::where('account',$account)->orwhere('email',$account)->first();

			if(!User::where('account',$account)->whereNotIn('id',$getUser->id)->count())
				return redirect()->back()->withInput()->withErrors(['message' => 'Tài khoản đã tồn tại']);

			if(!User::where('email',$account)->whereNotIn('id',$getUser->id)->count())
                return redirect()->back()->withInput()->withErrors(['message' => 'Email đã tồn tại']);

				if($password == NULL && $re_password== NULL){
					$password = $getUser->password;
					$re_password = $getUser->password;
				}else{
					$password = sha1(md5($request->password));
					$re_password = sha1(md5($request->re_password));
				}
				if($password != $re_password){
                    return redirect()->back()->withInput()->withErrors(['message' => 'Mật khẩu không khớp']);
				}else{

				$user = User::update([
                        'account' => $account,
                        'password' => $password,
                        'name' => $name,
                        'address' => $address,
                        'phone' => $phone,
                        'email' => $email,
                    ]);

					Auth::login($user);
				}
				return redirect()->back()->withInput()->with(['message' => 'Sửa thông tin thành công']);
			}
	}
}
