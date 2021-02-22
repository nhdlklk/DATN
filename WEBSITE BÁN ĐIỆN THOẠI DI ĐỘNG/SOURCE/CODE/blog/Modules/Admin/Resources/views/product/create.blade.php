@extends('admin::layouts.master')

@section('content')
 <div class="page-header">
 <ol class="breadcrumb">
  <li><a href="{{route('admin.home')}}">Trang Chu</a></li>
  <li><a href="{{route('admin.get.list.product')}}" title="Danh Mục">Sản phẩm</a></li>
  <li class="active">Them moi</li>
</ol>
 </div>
  <div class="">
      @include("admin::product.form")
    </div>
</div>
@stop
