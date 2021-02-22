<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\FrontendController;
use App\User;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use Illuminate\Foundation\Auth\RegistersUsers;

class RegisterController extends FrontendController
{
    public function __construct()
    {
        parent::__construct();
    }
    /*
    |--------------------------------------------------------------------------
    | Register Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles the registration of new users as well as their
    | validation and creation. By default this controller uses a trait to
    | provide this functionality without requiring any additional code.
    |
    */

  public function getRegister()
  {
      return view('auth.register');
  }
  public function postRegister(Request $request)
  {

      $user= new User();
      $user->name = $request->name;
      $user->email = $request->email;
      $user->phone = $request->phone;
      $user->password = bcrypt($request->password);
      $user->save();
      if($user->id)
      {
          return redirect()->route('get.login');
      }
      return redirect()->back();
  }

}
