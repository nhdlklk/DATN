<?php

namespace App\Http\Controllers;

use App\Http\Requests\RequestPassword;
use App\Models\Product;
use App\Models\Transaction;
use App\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;

class UserController extends Controller
{
    public function index()
    {
        $transactions=Transaction::where('tr_user_id',get_data_user('web'))
            ->paginate(10);
        $totalTransaction = Transaction::where('tr_user_id',get_data_user('web'))->select('id')
            ->count();
        $totalTransactionDone = Transaction::where('tr_user_id',get_data_user('web'))
            ->where('tr_status',Transaction::STATUS_DONE)
            ->select('id')
            ->count();
        $viewData=[
            'totalTransaction'=>$totalTransaction,
            'totalTransactionDone'=>$totalTransactionDone,
            'transactions'=>$transactions
        ];
        return view('user.index',$viewData);
    }
    public function updateInfo()
    {
        $user = User::find(get_data_user('web'));
        return view('user.info',compact('user'));
    }
    public function saveUpdateInfo(Request $request)
    {
            User::where('id',get_data_user('web'))
               ->update($request->except('_token'));
           return redirect()->back()->with('success','Cập nhật thành công');
    }
    public function updatePassword()
    {
        return view('user.password');
    }
    public function saveUpdatePassword(RequestPassword $requestPassword)
    {
            if(Hash::check($requestPassword->password_old,get_data_user('web','password')))
            {
                $user=User::find(get_data_user('web'));
                $user->password = bcrypt($requestPassword->password);
                $user->save();
                return redirect()->back()->with('success','Cập nhật thành công');
            }
            return redirect()->back()->with('danger','Mật khẩu cũng không đúng');
    }
    public function getProductPay()
    {
        $products=Product::orderBy('pro_pay','DESC')->limit(5)->get();
        return view('user.product',compact('products'));
    }
}
