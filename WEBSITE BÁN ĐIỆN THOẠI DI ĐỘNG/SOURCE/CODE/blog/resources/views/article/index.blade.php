@extends('layouts.app')
@section('content')
    <style>
        .main-contact-area {margin-top: 20px}
    </style>
    <div class="breadcrumbs">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="container-inner">
                        <ul>
                            <li class="home">
                                <a href="index.html">Home</a>
                                <span><i class="fa fa-angle-right"></i></span>
                            </li>

                            <li class="category3"><span>Bài viết</span></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="main-contact-area">
            <div class="container">
                <div class="row">
                    <div class="col-sm-8">
                       @include('components.article')
                    </div>
                    <div class="col-sm-4">
                        <h5> Bài viết nổi bật</h5>
                        <div class="list_article_hot">
                            @if(isset($articlesHot))
                                @foreach($articlesHot as $arHot)
                           <div class="article_hot_item">

                               <div class="article_info">
                                   <h3  style="font-size: 16px;margin-top: 10px;margin-bottom: 10px"><a href="{{route('get.detail.article',[$arHot->a_slug,$arHot->id])}}">{{$arHot->a_name}}</a></h3>
                                   <p>{{$arHot->a_description}}</p>
                               </div>
                               <div class="article_img">
                                   <a href="{{route('get.detail.article',[$arHot->a_slug,$arHot->id])}}">
                                       <img src=".{{pare_url_file($arHot->a_avatar)}}" alt="" style="max-height: 200px">
                                   </a>
                               </div>
                           </div>
                           </div>
                        @endforeach
                        @endif
                    </div>
                </div>
            </div>
@stop
