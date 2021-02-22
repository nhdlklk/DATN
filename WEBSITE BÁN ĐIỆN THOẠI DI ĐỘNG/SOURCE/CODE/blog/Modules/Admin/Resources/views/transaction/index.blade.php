@extends('admin::layouts.master')

@section('content')
    <div class="page-header">
        <ol class="breadcrumb">
            <li><a href="#">Trang Chu</a></li>
            <li><a href="#">Đơn hàng</a></li>
            <li class="active">Danh sách</li>
        </ol>
    </div>
    <div class="table-responsive">
        <h2>Quản lý đơn hàng</h2>
        <table class="table table-striped">
            <thead>
            <tr>
                <th>#</th>
                <th>Tên Khách hàng</th>
                <th>Địa chỉ</th>
                <th>SĐT</th>
                <th>Tổng tiền</th>
                <th>Trạng thái</th>
                <th>Thời gian</th>
                <th>Thao tác</th>
            </tr>
            </thead>
            <tbody>
                    @foreach($transactions as $transaction)
                        <tr>
                            <td>#{{$transaction->id}}</td>
                            <td>{{isset($transaction->user->name) ? $transaction->user->name : '[N\A]'}}</td>
                            <td>{{$transaction->tr_address}}</td>
                            <td>{{$transaction->tr_phone}}</td>
                            <td>{{number_format($transaction->tr_total,0,',','.')}} $</td>
                            <td>
                                @if($transaction->tr_status == 1)
                                    <a href="" class="label-success label"> Đã xử lí</a>
                                @else
                                    <a href="{{route('admin.get.active.transaction',$transaction->id)}}" class="label-default label"> Chờ xử lí</a>
                                @endif
                            </td>
                            <td>
                                {{ $transaction->created_at }}
                            </td>
                            <td>
                                <a style="padding: 5px 10px; border: 1px solid #999;font-size: 12px" href="{{route('admin.get.action.transaction',['delete',$transaction->id]) }}"><i class="fas fa-trash" style="font-size: 11px"> Xóa</i></a>
                                <a class="js_order_item" data-id="{{$transaction->id}}" style="padding: 5px 10px; border: 1px solid #999;font-size: 12px" href="{{route('admin.get.view.order',$transaction->id) }}"><i class="fas fa-eye " style="font-size: 11px"></i></a>
                            </td>
                        </tr>
                    @endforeach




            </tbody>
        </table>
    </div>
    <div class="modal fade" id="myModalOrder" role="dialog">
        <div class="modal-dialog modal-lg">

            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header modal-lg">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">Chi tiết mã đơn hàng #<b class="transaction_id"></b></h4>
                </div>
                <div class="modal-body" id="md_content">
                    <p>Some text in the modal.</p>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-danger" data-dismiss="modal">Đóng</button>
                </div>
            </div>

        </div>
    </div>

@stop
@section('script')
    <script>
        $(function(){
            $(".js_order_item").click(function(event){
                event.preventDefault();
                let $this = $(this);
                let url = $this.attr('href')
                $("#md_content").html('')
                $(".transaction_id").text('').text($this.attr('data-id'));
                $("#myModalOrder").modal('show');

                $.ajax({
                    url: url,
                }).done(function (result) {
                    console.log(result);
                    if(result)
                    {
                        $("#md_content").append(result);
                    }
                })
            });
        })
    </script>
@stop
