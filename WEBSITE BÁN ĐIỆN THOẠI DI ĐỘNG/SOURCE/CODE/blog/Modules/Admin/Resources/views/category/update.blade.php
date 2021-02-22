@extends('admin::layouts.master')

@section('content')
    <div class="page-header">
        <ol class="breadcrumb">
            <li><a href="{{route('admin.home')}}">Trang Chu</a></li>
            <li><a href="{{route('admin.get.list.category')}}" title="Danh Mục">Danh Muc</a></li>
            <li class="active">Cập nhật</li>
        </ol>
    </div>
    <div class="">
        @include("admin::category.form")
    </div>
    </div>
@stop
