<link href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
    @if(\Session::has('success'))
        <div class="alert alert-success alert-dismissible" style="position: fixed;right: 20px">
            <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
            <strong>Thành công!</strong> {{\Session::get('success')}}
        </div>
    @endif
    @if(\Session::has('danger'))
        <div class="alert alert-danger alert-dismissible " style="position: fixed;right: 20px">
            <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
            <strong>Thất bại!</strong> {{\Session::get('danger')}}
        </div>
    @endif
    @yield('content')

</div>
<div class="container" style="margin-top: 200px">

    <div id="loginbox" class="mainbox col-md-6 col-md-offset-3 col-sm-6 col-sm-offset-3">

        <div class="panel panel-default" >
            <div class="panel-heading">
                <div class="panel-title text-center">Tài khoản</div>
            </div>

            <div class="panel-body" >

                <form action="" class="form-horizontal" enctype="multipart/form-data" method="POST">
                    @csrf

                    <div class="input-group" >
                        <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                        <input id="user" required type="email" class="form-control" name="email" value="" placeholder="Email">
                    </div>

                    <div class="input-group" style="margin: 15px 0">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                        <input id="password" required type="password" class="form-control" name="password" placeholder="Mật khẩu">
                    </div>

                    <div class="form-group">
                        <!-- Button -->
                        <div class="col-sm-12 controls">
                            <button type="submit"  class="btn btn-primary pull-right"><i class="glyphicon glyphicon-log-in"></i> Đăng nhập</button>
                        </div>
                    </div>

                </form>

            </div>
        </div>
    </div>
</div>

<div id="particles"></div>

