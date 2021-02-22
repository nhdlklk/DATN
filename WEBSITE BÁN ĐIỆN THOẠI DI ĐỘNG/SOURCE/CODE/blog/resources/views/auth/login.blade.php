@extends('layouts.app')

@section('content')
    <div class="breadcrumbs">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="container-inner">
                        <ul>
                            <li class="home">
                                <a href="">Home</a>
                                <span><i class="fa fa-angle-right"></i></span>
                            </li>
                            <li class="category3"><span>Đăng nhập</span></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="customer-login-area">
        <div class="container">
            <div class="row">
                <div class="col-md-6 col-xs-12">
                    <div class="customer-login my-account">
                        <form method="post" class="login" action="">
                            @csrf
                            <div class="form-fields">
                                <h2>Đăng nhập</h2>
                                <p class="form-row form-row-wide">
                                    <label for="username">Email <span class="required">*</span></label>
                                    <input type="text" required class="input-text" name="email" id="username" value="">
                                </p>
                                <p class="form-row form-row-wide">
                                    <label for="password">Password <span class="required">*</span></label>
                                    <input class="input-text"  required type="password" name="password" id="password">
                                </p>
                            </div>
                            <div class="form-action">
                                <p class="lost_password"> <a href="{{route('get.reset.password')}}" target="_blank">Quên mật khẩu ?</a></p>
                                <div class="actions-log">
                                    <input type="submit" class="button" name="login" value="Đăng nhập">
                                </div>

                            </div>
                        </form>
                    </div>
                </div>

        </div>
    </div>
@endsection
