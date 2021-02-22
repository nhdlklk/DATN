@extends('layouts.app')
@section('content')
    <div class="our-product-area new-product">
        <div class="container">
            <div class="area-title">
                <h2>Giỏ hàng của bạn</h2>
            </div>
            <table class="table">
                <thead>
                <tr>
                    <th>STT</th>
                    <th>Tên sản phẩm</th>
                    <th>Hình ảnh</th>
                    <th>Giá</th>
                    <th>Số lượng</th>
                    <th>Thành tiền</th>
                    <th>Thao tác</th>
                </tr>
                </thead>
                <tbody>
                <?php $i=1 ?>
                @foreach($products  as $key=>$product)
                <tr>
                    <td><a href=""></a># {{$i}}</td>
                    <td><a href="{{route('get.detail.product',[$product->options->pro_slug,$product->id])}}">{{ $product->name }}</a></td>
                    <td>
                        <img style="width: 80px" src="./..{{pare_url_file($product->options->avatar)}}" alt="">
                    </td>
                    <td>{{number_format($product->price,0,',','.')}} VNĐ</td>
                    <td>
                        <a style="float: left;  width: 32%;  height: 32px; " href="{{route('add.shopping.cart.qty',$key)}}">+ </a>
                        {{$product->qty}}
                        <a style="float: right; width: 32%;  height: 32px; " href="{{route('add.shopping.cart.minus',$key)}}"> -</a>
                    </td>


                    <td>{{number_format($product->qty * $product->price,0,',','.')}} VNĐ</td>
                    <td>
                        <a href="{{route('delete.shopping.cart',$key)}}"><i class="fa fa-trash-o"></i> Xóa</a>
                    </td>
                </tr>
                    <?php $i++ ?>
                @endforeach
                </tbody>
            </table>
            <h2 class="pull-right"> Tổng tiền  :  {{ \Cart::subtotal() }}  <a href="{{route('get.form.pay')}}" class="btn-success btn"> Thanh toán</a></h2>

        </div>
    </div>
    @if(!empty($productPay))
        <div class="">
            <div class="container">
                <div class="area-title">
                    <h2>Có thể bạn quan tâm</h2>
                </div>
                <!-- our-product area start -->
                <div class="row">
                    <div class="col-md-12">
                        <div class="row">

                            <!-- single-product start -->
                            @if(isset($productPay))
                                @foreach($productPay as $product)

                                    <div class="col-lg-3 col-md-3">
                                        <div class="single-product first-sale">

                                            <div class="product-img" style="width: 240px;height: 260px">
                                                @if($product->pro_number ==0)
                                                    <span style="position: absolute;background: #e91e63;color: white;padding: 2px 6px;border-radius: 5px;font-size: 10px;">Tạm hết hàng</span>
                                                @endif
                                                @if($product->pro_sale)
                                                    <span style="position: absolute;font-size:10px;background-image: linear-gradient(-90deg,#ec1f1f 0%,#ff9c00 100%);border-radius: 10px;padding: 1px 7px;color: white;left: 0;margin-top: 20px">{{$product->pro_sale}} %</span>
                                                @endif
                                                <a href="{{route('get.detail.product',[$product->pro_slug,$product->id])}}">
                                                    <img class="primary-image" src="../{{pare_url_file($product->pro_avatar)}}" alt=""  />
                                                    <img class="secondary-image" src="../{{pare_url_file($product->pro_avatar)}}" alt="" />
                                                </a>
                                                <div class="action-zoom">
                                                    <div class="add-to-cart">
                                                        <a href="{{route('get.detail.product',[$product->pro_slug,$product->id])}}" title="Quick View"><i class="fa fa-search-plus"></i></a>
                                                    </div>
                                                </div>
                                                <div class="actions">
                                                    <div class="action-buttons">
                                                        <div class="add-to-links">
                                                            <div class="add-to-wishlist">
                                                                <a href="" title="Add to Wishlist"><i class="fa fa-heart"></i></a>
                                                            </div>
                                                            <div class="compare-button">
                                                                <a href="{{ route('add.shopping.cart',$product->id) }}" title="Add to Cart"><i class="icon-bag"></i></a>
                                                            </div>
                                                        </div>
                                                        <div class="quickviewbtn">
                                                            <a href="{{route('get.detail.product',[$product->pro_slug,$product->pro_id])}}" title="Add to Compare"><i class="fa fa-retweet"></i></a>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="price-box">
                                                    <span class="new-price">{{number_format(($product->pro_price- ($product->pro_price * $product->pro_sale/100 )),0,',',',')}} VNĐ </span>

                                                </div>


                                            </div>
                                            <div class="product-content">
                                                <h2 class="product-name"><a href="#">{{ $product->pro_name }}</a></h2>
                                                {{--                                        <p style="font-size: 11px;line-height: 14px;">{{$product->pro_description}}</p>--}}
                                                <h2 class="product-name"><a href="#"> Số lượt bán : {{ $product->pro_pay }}</a></h2>
                                            </div>
                                        </div>
                                    </div>
                            @endforeach
                        @endif
                        <!-- single-product end -->


                        </div>
                    </div>
                </div>
                <!-- our-product area end -->
            </div>
        </div>
    @endif
    <div id="product_view"></div>
@stop
@section('script')
    <script>
        $(function () {
            $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                }
            });
            let routeRenderProduct = '{{route('post.product.viewpay')}}';
            checkRenderProduct=false;
            $(document).on('scroll',function () {
                if($(window).scrollTop()>150 && checkRenderProduct==false)
                {
                    checkRenderProduct=true;
                    let products=localStorage.getItem('products');
                    products=$.parseJSON(products);
                    if(products.length>0)
                    {
                        $.ajax({
                            url: routeRenderProduct,
                            method: "POST",
                            data : {id: products},
                            success:function (result)
                            {

                                $("#product_view").html('').append(result.data)
                            }
                        });
                    }
                }
            });
        })
    </script>
@stop
