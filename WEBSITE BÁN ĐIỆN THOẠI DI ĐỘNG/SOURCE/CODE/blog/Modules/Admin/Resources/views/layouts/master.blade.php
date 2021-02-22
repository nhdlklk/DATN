
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">
    <link rel="canonical" href="https://getbootstrap.com/docs/3.3/examples/dashboard/">

    <title>Admin System</title>

    <!-- Bootstrap core CSS -->
    <link href="{{ asset('theme_admin/css/bootstrap.min.css')}}" rel="stylesheet">

    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <!-- <link href="../../assets/css/ie10-viewport-bug-workaround.css" rel="stylesheet"> -->

    <!-- Custom styles for this template -->
    <link href="{{ asset('theme_admin/css/dashboard.css')}}" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
   <!--  <script src="../../assets/js/ie-emulation-modes-warning.js"></script> -->

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
      <script src="https://kit.fontawesome.com/491c891105.js" crossorigin="anonymous"></script>
  </head>

  <body>

    <nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container-fluid">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">E-Moblie</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav navbar-right">
{{--            <li><a href="#">Dashboard</a></li>--}}
{{--            <li><a href="#">Settings</a></li>--}}
            <li><a href="#">Xin chào {{get_data_user('admins','name')}} </a></li>
            <li><a href="{{route('admin.logout')}}">Đăng xuất</a></li>
          </ul>
{{--          <form class="navbar-form navbar-right">--}}
{{--            <input type="text" class="form-control" placeholder="Search...">--}}
{{--          </form>--}}
        </div>
      </div>
    </nav>

    <div class="container-fluid">
      <div class="row">
        <div class="col-sm-3 col-md-2 sidebar">
          <ul class="nav nav-sidebar">
            <li class="{{ \Request::route()->getName() == 'admin.home'?'active' : '' }}"><a href="{{route('admin.home')}}">Trang Tổng Quan </a></li>
            <li class="{{ \Request::route()->getName() == 'admin.get.list.category'?'active' : '' }}"><a href="{{route('admin.get.list.category')}}">Danh Mục</a></li>
            <li class="{{ \Request::route()->getName() == 'admin.get.list.product'?'active' : '' }}"><a href="{{route('admin.get.list.product')}}">Sản phẩm</a></li>
            <li class="{{ \Request::route()->getName() == 'admin.get.list.article'?'active' : '' }} "><a href="{{route('admin.get.list.article')}}">Tin tuc</a></li>
             <li class="{{ \Request::route()->getName() == 'admin.get.list.transaction'?'active' : '' }} "><a href="{{route('admin.get.list.transaction')}}">Đơn hàng</a></li>
              <li class="{{ \Request::route()->getName() == 'admin.get.list.user'?'active' : '' }} "><a href="{{route('admin.get.list.user')}}">Thành Viên</a></li>
              <li class="{{ \Request::route()->getName() == 'admin.get.list.contact'?'active' : '' }} "><a href="{{route('admin.get.list.contact')}}">Liên hệ</a></li>
              <li class="{{ \Request::route()->getName() == 'admin.get.list.rating'?'active' : '' }} "><a href="{{route('admin.get.list.rating')}}">Đánh giá</a></li>
              <li class="{{ \Request::route()->getName() == 'admin.get.warehouse.list'?'active' : '' }} "><a href="{{route('admin.get.warehouse.list')}}">Kho</a></li>
          </ul>

        </div>
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
    </div>
    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')</script>
    <script src="{{ asset('theme_admin/js/bootstrap.min.js')}}"></script>
    <!-- Just to make our placeholder images work. Don't actually copy the next line! -->
   <!--  <script src="../../assets/js/vendor/holder.min.js"></script> -->
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <!-- <script src="../../assets/js/ie10-viewport-bug-workaround.js"></script> -->
        <script>
            function readURL(input) {
                if (input.files && input.files[0]) {
                    var reader = new FileReader();

                    reader.onload = function(e) {
                        $('#out').attr('src', e.target.result);
                    }

                    reader.readAsDataURL(input.files[0]); // convert to base64 string
                }
            }

            $("#in").change(function() {
                readURL(this);
            });
        </script>
@yield('script')
  </body>
</html>
