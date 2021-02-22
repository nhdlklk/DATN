<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Http\Requests\RequestResetPassword;
use App\User;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Mail;

class ForgotPasswordController extends Controller
{
    public function getFormResetPassword()
    {
        return view('auth.passwords.email');
    }
    public function sendCodeResetPassword(Request $request)
    {
        $email = $request->email;
        $checkUser = User::where('email',$email)->first();
        if(!$checkUser)
        {
            return redirect()->back()->with('danger','Email không tồn tại');
        }
        $code=bcrypt(md5(time().$email));
        $checkUser->code=$code;
        $checkUser->time_code=Carbon::now();
        $checkUser->save();
        $url = route('get.link.reset.password',['code'=>$checkUser->code,'email'=>$email]);
        $data=[
            'route'=>$url
        ];
        Mail::send('email.reset_password',$data, function($message) use ($checkUser){
            $message->to($checkUser->email, 'Visitor')->subject('Lấy lại mật khẩu');
        });
        return redirect()->back()->with('success','Link lấy lại đã được gửi đến email của bạn');
    }
    public function resetPassword(Request $request)
    {
        $code = $request->code;
        $email = $request->email;
        $CheckUser=User::where([
            'code'=>$code,
            'email'=>$email
        ])->first();
        if(!$CheckUser)
        {
            return redirect()->back()->with('danger','Đường dẫn lấy lại mật khẩu không đúng. Vui lòng thử lại');
        }
        return view('auth.passwords.reset');
    }
    public function saveResetPassword(RequestResetPassword $requestResetPassword)
    {
            if($requestResetPassword->password)
            {
                $code = $requestResetPassword->code;
                $email = $requestResetPassword->email;
                $CheckUser=User::where([
                    'code'=>$code,
                    'email'=>$email
                ])->first();
                if(!$CheckUser)
                {
                    return redirect()->back()->with('danger','Đường dẫn lấy lại mật khẩu không đúng. Vui lòng thử lại');
                }
                $CheckUser->password = bcrypt($requestResetPassword->password);
                $CheckUser->save();
                return redirect()->route('get.login')->with('success','Mật khẩu được đổi thành công');
            }
    }
}
