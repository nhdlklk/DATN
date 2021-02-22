@extends('layouts.app')
@section('content')
    <style>
        .sidebar-content .active{
            color : #c2a476;
        }
    </style>
    <div class="breadcrumbs">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="container-inner">
                        <ul>
                            <li class="home">
                                <a href="{{route('home')}}">Trang chủ</a>
                                <span><i class="fa fa-angle-right"></i></span>
                            </li>
                            @if(isset($cateProduct->c_name))
                            <li class="category3"><span>{{$cateProduct->c_name}}</span></li>
                                @endif
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- breadcrumbs area end -->
    <!-- shop-with-sidebar Start -->
    <div class="shop-with-sidebar">
        <div class="container">
            <div class="row">
                <!-- left sidebar start -->
                <div class="col-md-3 col-sm-12 col-xs-12 text-left">
                    <div class="topbar-left">
                        <aside class="widge-topbar">
                            <div class="bar-title">
                                <div class="bar-ping"><img src="{{asset('img/bar-ping.png')}}" alt=""></div>
                                <h2>Lọc</h2>
                            </div>
                        </aside>
                        <aside class="sidebar-content">
                            <div class="sidebar-title">
                                <h4>Giá</h4>
                            </div>
                            <ul>

                                <li><a class="{{ Request::get('price') ==1 ? 'active' : '' }}" href="?price=1">Dưới 1tr</a></li>
                                <li><a class="{{ Request::get('price') ==2 ? 'active' : '' }}" href="?price=2">1.000.000 - 3.000.000</a></li>
                                <li><a class="{{ Request::get('price') ==3 ? 'active' : '' }}" href="?price=3">3.000.000 - 5.000.000</a></li>
                                <li><a class="{{ Request::get('price') ==4 ? 'active' : '' }}" href="?price=4">5.000.000 - 7.000.000</a></li>
                                <li><a class="{{ Request::get('price') ==5 ? 'active' : '' }}" href="?price=5">7.000.000 - 10.000.000</a></li>
                                <li><a class="{{ Request::get('price') ==6 ? 'active' : '' }}" href="?price=6"> > 10.000.000</a></li>
                                <li><a class="{{ Request::get('price') ==7 ? 'active' : '' }}" href="?price=7">Tất cả các giá</a></li>
{{--                                <li><a class="{{ Request::get('price') ==7 ? 'active' : '' }}" href="{{request()->fullUrlWithQuery(['price' => 7])}}"> All price</a></li>--}}
                            </ul>
                        </aside>

                        <aside class="widge-topbar">
                            <div class="bar-title">
                                <div class="bar-ping"><img src="{{asset('img/bar-ping.png')}}" alt=""></div>
                                <h2>Tags</h2>
                            </div>
                            <div class="exp-tags">
                                <div class="tags">
                                    <a href="{{route('get.all.product')}}">Tất cả sản phẩm</a>
                                    @if(isset($categories))
                                        @foreach($categories as $cate)
                                            <a href="{{route('get.list.product',[$cate->c_slug,$cate->id]) }}">{{$cate->c_name}}</a>
                                        @endforeach
                                    @endif
                                </div>
                            </div>
                        </aside>
                    </div>
                </div>
                <!-- left sidebar end -->
                <!-- right sidebar start -->
                <div class="col-md-9 col-sm-12 col-xs-12">
                    <!-- shop toolbar start -->
                    <div class="shop-content-area">
                        <div class="shop-toolbar">
                            <div class="col-xs-12 nopadding-left ">
                                <form class="tree-most" method="get" id="form_order">
                                    <div class="orderby-wrapper pull-right">
                                        <label>Sắp xếp</label>
                                        <select name="orderby" class="orderby">
                                            <option class="{{ Request::get('orderby') =="md" || !Request::get('orderby') ? "selected='selected'" : "" }}" value="md" selected="selected">Mặc định</option>
                                            <option class="{{ Request::get('orderby') =="desc" ? "selected='selected'" : "" }}" value="desc">Sản phẩm mới nhất</option>
                                            <option class="{{ Request::get('orderby') =="asc" ? "selected='selected'" : "" }}" value="asc">Sản phẩm cũ</option>
                                            <option class="{{ Request::get('orderby') =="price_max" ? "selected='selected'" : ""}}" value="price_max">Giá tăng dần</option>
                                            <option class="{{ Request::get('orderby') =="price_min" ? "selected='selected'" : "" }}" value="price_min">Giá giảm dần</option>

                                        </select>
                                    </div>
                                </form>
                            </div>


                        </div>
                    </div>
                    <!-- shop toolbar end -->
                    <!-- product-row start -->
                    <div class="tab-content">
                        <div class="tab-pane fade in active" id="shop-grid-tab">
                            <div class="row">
                                <div class="shop-product-tab first-sale">
                                    @foreach($products as $product)
                                    <div class="col-lg-4 col-md-4 col-sm-4">
                                        <div class="two-product">
                                            <!-- single-product start -->
                                            <div class="single-product">
{{--                                                <span class="sale-text">Sale</span>--}}

                                                <div class="product-img">
                                                    @if($product->pro_number ==0)
                                                        <span style="position: absolute;background: #e91e63;color: white;padding: 2px 6px;border-radius: 5px;font-size: 10px;">Tạm hết hàng</span>
                                                    @endif
                                                    @if($product->pro_sale)
                                                        <span style="position: absolute;font-size:10px;background-image: linear-gradient(-90deg,#ec1f1f 0%,#ff9c00 100%);border-radius: 10px;padding: 1px 7px;color: white;left: 0;margin-top: 20px">{{$product->pro_sale}} %</span>
                                                    @endif
                                                    <a href="{{route('get.detail.product',[$product->pro_slug,$product->id])}}">
                                                        <img class="primary-image" src="{{asset(pare_url_file($product->pro_avatar))}}" alt="" style="width: 240px;height: 260px"/>
                                                        <img class="secondary-image" src="{{asset(pare_url_file($product->pro_avatar))}}" alt="" style="width: 240px;height: 260px" />
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
                                                                    <a href="#" title="Add to Wishlist"><i class="fa fa-heart"></i></a>
                                                                </div>
                                                                <div class="compare-button">
                                                                    <a href="{{ route('add.shopping.cart',$product->id) }}" title="Add to Cart"><i class="icon-bag"></i></a>
                                                                </div>
                                                            </div>
                                                            <div class="quickviewbtn">
                                                                <a href="" title="Add to Compare"><i class="fa fa-retweet"></i></a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="price-box">
                                                        <span class="new-price">{{number_format(($product->pro_price- ($product->pro_price * $product->pro_sale/100 )),0,',',',')}} VNĐ</span>
                                                    </div>
                                                </div>
                                                <div class="product-content">
                                                    <h2 class="product-name"><a href="{{route('get.detail.product',[$product->pro_slug,$product->id])}}">{{$product->pro_name}}</a></h2>
{{--                                                    <p style="font-size: 11px">{{$product->pro_description}}</p>--}}
                                                </div>
                                            </div>
                                            <!-- single-product end -->
                                        </div>
                                    </div>
                                    @endforeach

                                </div>
                            </div>
                            <div class="shop-content-bottom">
                                <div class="shop-toolbar btn-tlbr">

                                    <div class="col-md-12 col-sm-4 col-xs-12 text-center">
                                        <div class="pagination">
                                            {!! $products->links() !!}
                                        </div>

                                    </div>

                                </div>
                            </div>
                        </div>
                        <!-- list view -->

                    </div>
                </div>
                <!-- right sidebar end -->
            </div>
        </div>
    </div>
    <!-- shop-with-sidebar end -->
    <!-- Brand Logo Area Start -->
    <div class="brand-area">
        <div class="container">
            <div class="row">
                <div class="brand-carousel">

                    <div class="brand-item"><img src="img/brand/samsung.png" alt="" /></div>
                    <div class="brand-item"><img src="img/brand/iphone.png" alt="" /></div>
                    <div class="brand-item"><img style="margin-top: 68px;" src="img/brand/oppo.jpg" alt="" /></div>
                    <div class="brand-item"><img  style="margin-top: 47px" src="img/brand/huwa.jpg" alt="" /></div>
                    <div class="brand-item"><img src="img/brand/samsung.png" alt="" /></div>

                </div>
            </div>
        </div>
    </div>
@stop

@section('script')
    <script>
        $(function(){
            $('.orderby').change(function(){
                $("#form_order").submit();
            })
        })
    </script>
    @stop
