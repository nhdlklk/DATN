@extends('user.layout')
@section('content')

    <h1 class="page-header">Cập nhật mật khẩu</h1>
    <div class="row">
        <div class="sm-col-12">
            <form action="" method="POST">
                @csrf
                <div class="form-group" style="position: relative">
                    <label for="email">Mật khẩu cũ:</label>
                    <input type="password" class="form-control" placeholder="Mật khẩu cũ" name="password_old" value="">
                    <a style="position: absolute;top: 54%;right: 10px;color: #333333" href="javascript:;void(0)"><i class="fa fa-eye"></i></a>
                    @if($errors->has('password_old'))
                        <span class="error-text">
            {{$errors->first('password_old')}}
        </span>
                    @endif
                </div>
                <div class="form-group" style="position: relative">
                    <label for="email">Mật khẩu mới:</label>
                    <input type="password" class="form-control"  placeholder="Mật khẩu mới" name="password" value="">
                    <a style="position: absolute;top: 54%;right: 10px;color: #333333" href="javascript:;void(0)"><i class="fa fa-eye"></i></a>
                    @if($errors->has('password'))
                        <span class="error-text">
            {{$errors->first('password')}}
        </span>
                    @endif
                </div>
                <div class="form-group" style="position: relative">
                    <label for="email">Nhập lại mật khẩu mới:</label>
                    <input type="password" class="form-control"  placeholder="Nhập lại mật khẩu" name="password_confirm" value="">
                    <a style="position: absolute;top: 54%;right: 10px;color: #333333" href="javascript:;void(0)"><i class="fa fa-eye"></i></a>
                    @if($errors->has('password_confirm'))
                        <span class="error-text">
            {{$errors->first('password_confirm')}}
        </span>
                    @endif
                </div>

                <button type="submit" class="btn btn-success">Cập nhật</button>
            </form>
        </div>
    </div>
@stop
@section('script')
    <script>
        $(function(){
            $(".form-group a").click(function () {
                let $this= $(this);
                if($this.hasClass('active'))
                {
                    $this.parents(".form-group").find('input').attr('type','password')
                    $this.removeClass('active');
                }
                else
                {
                    $this.parents(".form-group").find('input').attr('type','text')
                    $this.addClass('active');
                }
            });
        });
    </script>
@stop
