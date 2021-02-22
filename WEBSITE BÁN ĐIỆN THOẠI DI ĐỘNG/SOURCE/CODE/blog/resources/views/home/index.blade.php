@extends('layouts.app')
@section('content')

    <style>
        .active{
            color: #ff9705;
        }
        .category-info p {
            font-size: 13px;
            color: #6d6d6d;
            letter-spacing: 0.1px;
            margin-top: 8px;
            line-height: 20px;
        }
    </style>
    <!-- end home slider -->
    <!-- product section start -->

    <!-- product section end -->
    <!-- banner-area start -->
{{--    <div class="banner-area">--}}
{{--        <div class="container-fluid">--}}
{{--            <div class="row">--}}
{{--                <a href=""><img src="{{asset('img/banner/Bannertop.jpg')}}" alt="" style="width: 1920px;height: 430px"/></a>--}}

{{--            </div>--}}
{{--        </div>--}}
{{--    </div>--}}
    <div class="slider-area an-1 hm-1">
        <!-- slider -->
        <div class="bend niceties preview-2">
            <div id="ensign-nivoslider" class="slides">
                <img src="{{asset('img/banner/banner.jpg')}}" alt="" title="#slider-direction-1"  />
                <img src="{{asset('img/banner/banner1.jpg')}}" alt="" title="#slider-direction-2"  />
            </div>
            <!-- direction 1 -->

            <!-- direction 2 -->

        </div>
        <!-- slider end-->
    </div>
    <!-- banner-area end -->
    <!-- product section start -->
    <div class="our-product-area new-product">
        <div class="container">
            <div class="area-title">
                <h2>Sản phẩm của chúng tôi</h2>
            </div>
            <!-- our-product area start -->
            <div class="row">
                <div class="col-md-12">
                    <div class="row">
                        <div class="features-curosel">
                            <!-- single-product start -->
                            @if(isset($productHot))
                                @foreach($productHot as $hot)

                                    <div class="col-lg-12 col-md-12">
                                        <div class="single-product first-sale">

                                            <div class="product-img">
                                                @if($hot->pro_number <=0)
                                                <span style="position: absolute;background: #e91e63;color: white;padding: 2px 6px;border-radius: 5px;font-size: 10px;">Tạm hết hàng</span>
                                                @endif
                                                @if($hot->pro_sale)
                                                <span style="position: absolute;font-size:10px;background-image: linear-gradient(-90deg,#ec1f1f 0%,#ff9c00 100%);border-radius: 10px;padding: 1px 7px;color: white;left: 0;margin-top: 20px">{{$hot->pro_sale}} %</span>
                                                    @endif
                                                <a href="{{route('get.detail.product',[$hot->pro_slug,$hot->id])}}">
                                                    <img class="primary-image" src="./.{{pare_url_file($hot->pro_avatar)}}" alt="" style="width: 240px;height: 260px" />
                                                    <img class="secondary-image" src="./.{{pare_url_file($hot->pro_avatar)}}" alt="" style="width: 240px;height: 260px"/>
                                                </a>
                                                <div class="action-zoom">
                                                    <div class="add-to-cart">
                                                        <a href="{{route('get.detail.product',[$hot->pro_slug,$hot->id])}}" title="Quick View"><i class="fa fa-search-plus"></i></a>
                                                    </div>
                                                </div>
                                                <div class="actions">
                                                    <div class="action-buttons">
                                                        <div class="add-to-links">
                                                            <div class="add-to-wishlist">
                                                                <a href="" title="Add to Wishlist"><i class="fa fa-heart"></i></a>
                                                            </div>
                                                            <div class="compare-button">
                                                                <a href="{{ route('add.shopping.cart',$hot->id) }}" title="Add to Cart"><i class="icon-bag"></i></a>
                                                            </div>
                                                        </div>
                                                        <div class="quickviewbtn">
                                                            <a href="{{route('get.detail.product',[$hot->pro_slug,$hot->pro_id])}}" title="Add to Compare"><i class="fa fa-retweet"></i></a>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="price-box">
                                                    <span class="new-price">{{number_format(($hot->pro_price- ($hot->pro_price * $hot->pro_sale/100 )),0,',',',')}} VNĐ </span>

                                                </div>


                                            </div>
                                            <div class="product-content">
                                                <h2 class="product-name"><a href="#">{{ $hot->pro_name }}</a></h2>
                                                @if($hot->pro_number <=5 && $hot->pro_number>0 )
                                                <h2 class="product-name"><a href="#"> Số  lượng: {{ $hot->pro_number }}</a></h2>
                                                @endif
{{--                                                <p>{!!$hot->pro_description !!}</p>--}}
                                            </div>
                                        </div>
                                    </div>
                            @endforeach
                        @endif
                        <!-- single-product end -->

                        </div>
                    </div>
                </div>
            </div>
            <!-- our-product area end -->
        </div>
    </div>
    @include('components.product_suggest')
    @include('components.product_hotpay')
    <div id="product_view"></div>
    <!-- product section end -->
    <!-- latestpost area start -->
    @if(isset($articleNews))
    <div class="latest-post-area">
        <div class="container">
            <div class="area-title">
                <h2>Bài viết mới</h2>
            </div>
            <div class="row">
                <div class="all-singlepost">
                    <!-- single latestpost start -->
                    @foreach($articleNews as $arNew)
                    <div class="col-md-4 col-sm-4 col-xs-12">
                        <div class="single-post" style="margin-bottom: 40px">
                            <div class="post-thumb">
                                <a href="{{route('get.detail.article',[$arNew->a_slug,$arNew->id])}}">
                                    <img src="{{asset(pare_url_file($arNew->a_avatar))}}" alt="" style="width: 370px;height: 280px" />
                                </a>
                            </div>
                            <div class="post-thumb-info">
                                <div class="postexcerpt">
                                    <p style="height: 40px">{{$arNew->a_name}}</p>
                                    <a href="{{route('get.detail.article',[$arNew->a_slug,$arNew->id])}}" class="read-more">Xem thêm</a>
                                </div>
                            </div>
                        </div>
                    </div>
                @endforeach
                    <!-- single latestpost end -->

                </div>
            </div>
        </div>
    </div>
    @endif
    <!-- latestpost area end -->
    <!-- block category area start -->
    <div class="block-category">
        <div class="container">
            <div class="row">
                <!-- featured block start -->
                @if(isset($categoriesHome))
                    @foreach($categoriesHome as $categoriesHome)
                <div class="col-md-4">
                    <!-- block title start -->
                    <div class="block-title">
                        <h2>{{$categoriesHome->c_name}}</h2>
                    </div>
                    <!-- block title end -->
                    <!-- block carousel start -->
                    @if(isset($categoriesHome->products))
                    <div class="block-carousel">
                        @foreach($categoriesHome->products as $product)
                            <?php
                            $ageDetail = 0;
                            if ( $product->pro_total_rating )
                            {
                                $ageDetail = round($product->pro_total_number / $product->pro_total_rating,2);
                            }
                            ?>
                        <div class="block-content">
                            <!-- single block start -->
                            <div class="single-block">
                                <div class="block-image pull-left">
                                    <a href="{{route('get.detail.product',[$product->pro_slug,$product->id])}}"><img src=".{{pare_url_file($product->pro_avatar)}}" style="width: 170px;height: 208px" alt="" /></a>
                                </div>
                                <div class="category-info">
                                    <h3><a href="{{route('get.detail.product',[$product->pro_slug,$product->id])}}">{{ $product->pro_name }}</a></h3>
{{--                                    <p>{!!$product->pro_description!!}</p>--}}
                                    <div class="cat-price">{{number_format(($product->pro_price- ($product->pro_price * $product->pro_sale/100 )),0,',',',')}} Đ <span class="old-price {{$product->pro_sale == 0 ? 'hidden': ''}}">{{number_format(($product->pro_price),0,',',',')}} Đ </span></div>
                                    <div class="cat-rating">
                                        @for($i=1;$i<=5;$i++)
                                            <a href="#"><i class="fa fa-star {{ $i <= $ageDetail ?'active' :'' }}"></i></a>
                                        @endfor

                                    </div>
                                </div>
                            </div>
                            <!-- single block end -->
                            <!-- single block start -->

                            <!-- single block end -->
                        </div>
                        @endforeach
                    </div>
                    @endif
                    <!-- block carousel end -->
                </div>
                <!-- featured block end -->
                <!-- featured block start -->
                    @endforeach
                    @endif

            </div>
        </div>
    </div>
    <!-- block category area end -->
    <!-- testimonial area start -->
    <div class="testimonial-area lap-ruffel">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="crusial-carousel">
                        <div class="crusial-content">
                            <p>Hãy đến với cửa hàng của chúng tôi để mang lại sự trải nghiệm về điện thoại di động giá rẻ bất ngờ</p>
                            <span>Emobile</span>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- testimonial area end -->
    <!-- Brand Logo Area Start -->
    <div class="brand-area">
        <div class="container">
            <div class="row">
                <div class="brand-carousel">

                    <div class="brand-item"><img src="img/brand/samsung.png" alt="" /></div>
                    <div class="brand-item"><img src="img/brand/iphone.png" alt="" /></div>
                    <div class="brand-item"><img style="margin-top: 68px;" src="img/brand/oppo.jpg" alt="" /></div>
                    <div class="brand-item"><img  style="margin-top: 47px" src="img/brand/huwa.jpg" alt="" /></div>
                    <div class="brand-item"><img src="img/brand/samsung.png" alt="" /></a></div>

                </div>
            </div>
        </div>
    </div>
    <!-- Brand Logo Area End -->
    @stop
@section('script')
    <script>
        $(function () {
            $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                }
            });
            let routeRenderProduct = '{{route('post.product.view')}}';
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
