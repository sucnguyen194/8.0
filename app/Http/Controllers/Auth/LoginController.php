<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Models\SocialIdentity;
use App\Models\User;
use App\Providers\RouteServiceProvider;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use Illuminate\Support\Facades\Auth;
use Laravel\Socialite\Facades\Socialite;

class LoginController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Login Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles authenticating users for the application and
    | redirecting them to your home screen. The controller uses a trait
    | to conveniently provide its functionality to your applications.
    |
    */

    use AuthenticatesUsers;

    /**
     * Where to redirect users after login.
     *
     * @var string
     */
    protected $redirectTo = '/';

    public function redirectPath()
    {
        return route('home');
    }

    protected function guard()
    {
        return Auth::guard('web');
    }

    protected function loggedOut()
    {
        return redirect()->route('login');
    }

    public function showLoginForm()
    {
        return view('Auth.login');
    }

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest:web')->except('logout');
    }

    public function redirect($provider)
    {
        return Socialite::driver($provider)->redirect();
    }

    public function callback($provider)
    {
        try {
            $info = Socialite::driver($provider)->user();
        } catch (\Exception $e) {
            return redirect()->route('user.login');
        }
        if(!$info->getEmail())
            return redirect()->route('user.register')->withErrors(['message' => 'Tài khoản chưa có email. Vui lòng đăng ký tại đây!']);
        $user = $this->createUser($info,$provider);
        Auth::login($user, true);

        if(Auth::user()->lever <= 1)
            return  redirect()->route('admin.dashboard')->withInput()->with(['message' => 'Đăng nhập thành công!']);

        return redirect()->route('home')->with(['message' => 'Đăng nhập thành công!']);
    }

    public function createUser($info,$provider){

        $account = SocialIdentity::whereProviderName($provider)
            ->whereProviderId($info->getId())
            ->latest()->first();

        if ($account) {
            return $account->user;
        } else {
            $email = $info->getEmail();
            $user = User::whereEmail($email)->first();
            if(!$user){
                $user = new User();
                $user = $user->forceFill(
                    [
                        'email' => $email,
                        'name' => $info->getName(),
                        'email_verified_at' => now(),
                    ]
                );
                $user->save();
            }
            $user->identities()->updateOrCreate(
                [
                    'provider_id' => $info->getId(),
                    'provider_name' => $provider,
                ]
            );

            return $user;
        }
    }
}
