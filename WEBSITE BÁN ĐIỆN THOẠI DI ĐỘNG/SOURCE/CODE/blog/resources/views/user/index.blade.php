@extends('user.layout')
@section('content')
    <script src="https://code.highcharts.com/highcharts.js"></script>
    <script src="https://code.highcharts.com/modules/data.js"></script>
    <script src="https://code.highcharts.com/modules/drilldown.js"></script>
    <script src="https://code.highcharts.com/modules/exporting.js"></script>
    <script src="https://code.highcharts.com/modules/export-data.js"></script>
    <script src="https://code.highcharts.com/modules/accessibility.js"></script>
    <h1 class="page-header">Tổng quan</h1>
        <div class="row placeholders">
                <div class="col-xs-6 col-sm-4 placeholder" style="position: relative">
                  <img src="data:image/gif;base64,R0lGODlhAQABAIAAAHd3dwAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw==" width="200" height="200" class="img-responsive" alt="Generic placeholder thumbnail">
                  <h4 style="position: absolute;top: 50%;left: 50%;transform: translateX(-50%) translateY(-50%);margin: 0;color: white">Tổng đơn hàng : {{$totalTransaction}}</h4>

                </div>
                <div class="col-xs-6 col-sm-4 placeholder" style="position: relative">
                  <img src="data:image/gif;base64,R0lGODlhAQABAIAAAHd3dwAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw==" width="200" height="200" class="img-responsive" alt="Generic placeholder thumbnail">
                  <h4 style="position: absolute;top: 50%;left: 50%;transform: translateX(-50%) translateY(-50%);margin: 0;color: white"> Đã xử lý : {{$totalTransactionDone}}</h4>

                </div>
                <div class="col-xs-6 col-sm-4 placeholder" style="position: relative">
                  <img src="data:image/gif;base64,R0lGODlhAQABAIAAAHd3dwAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw==" width="200" height="200" class="img-responsive" alt="Generic placeholder thumbnail">
                  <h4 style="position: absolute;top: 50%;left: 50%;transform: translateX(-50%) translateY(-50%);margin: 0;color: white"> Chưa xử lý : {{$totalTransaction-$totalTransactionDone}}</h4>
                </div>

              </div>
    <div class="row">
        <div class="col-sm-12">
            <h2> Danh sách đơn hàng của bạn</h2>
            <table class="table table-striped">
                <thead>
                <tr>
                    <th>#</th>
                    <th>Địa chỉ</th>
                    <th>SĐT</th>
                    <th>Tổng tiền</th>
                    <th>Trạng thái</th>
                    <th>Thời gian</th>

                </tr>
                </thead>
                <tbody>
                    @if(isset($transactions))
                        @foreach($transactions as $transaction)
                            <tr>
                                <td>#{{$transaction->id}}</td>

                                <td>{{$transaction->tr_address}}</td>
                                <td>{{$transaction->tr_phone}}</td>
                                <td>{{number_format($transaction->tr_total,0,',','.')}} VNĐ</td>
                                <td>
                                    @if($transaction->tr_status == 1)
                                        <p  class="label-success label"> Đã xử lí</p>
                                    @else
                                        <p class="label-default label"> Chờ xử lí</p>
                                    @endif
                                </td>
                                <td>
                                    {{ $transaction->created_at }}
                                </td>
                            </tr>
                        @endforeach
                        @endif




                </tbody>
            </table>
            <div class="col-md-12 col-sm-4 col-xs-12 text-center">
                <div class="pagination">
                    {!! $transactions->links() !!}
                </div>

            </div>
        </div>
    </div>

    </div>
@stop
