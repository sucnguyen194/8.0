@extends('Admin.Layout.layout')
@section('title')
    Cập nhật thông tin #ID{{$role->id}}
@stop
@section('content')

    <div class="container-fluid">
        <!-- start page title -->
        <div class="row">
            <div class="col-12">
                <div class="page-title-box">
                    <div class="page-title-right">
                        <ol class="breadcrumb m-0">
                            <li class="breadcrumb-item"><a href="{{route('admin.dashboard')}}">Bảng điều khiển</a></li>
                            <li class="breadcrumb-item"><a href="{{route('admin.roles.index')}}">Roles</a></li>
                            <li class="breadcrumb-item active">Cập nhật thông tin #ID{{$role->id}}</li>
                        </ol>
                    </div>
                    <h4 class="page-title">Cập nhật thông tin #ID{{$role->id}}</h4>
                </div>
            </div>
        </div>
        <!-- end page title -->
    </div>
    <div class="container">
        <form method="post" action="{{route('admin.roles.update',$role)}}">
            <div class="card-box">
                @csrf
                @method('PUT')
                <div class="form-group">
                    <label>Chức vụ <span class="required">*</span></label>
                    <input type="text" class="form-control" value="{{$role->name}}" name="name" required>
                </div>
                <div class="row">
                    @foreach($permissions->where('parent_id',0) as $key => $permission)
                        <div class="col-md-4">
                            <label class="text-uppercase">{{$permission->title}}</label>
                            @foreach($permissions->where('parent_id',$permission->id) as $parent)
                                <div class="item-systems">
                                    <div class="mb-1 checkbox">
                                        <input id="checkbox{{$parent->id}}" type="checkbox"  name="permissions[]" value="{{$parent->id}}" {{ $role->hasPermissionTo($parent->name) ? 'checked' : '' }}>
                                        <label for="checkbox{{$parent->id}}"><span class="tree-sub"></span> {{$parent->title}} </label>
                                    </div>
                                </div>
                            @endforeach
                        </div>
                    @endforeach
                </div>
            </div>
            <div class="">
                <a href="{{route('admin.roles.index')}}" class="btn btn-default waves-effect waves-light"><span class="icon-button"><i class="fe-arrow-left"></i></span> Quay lại</a>
                <button type="submit" class="btn btn-primary float-right waves-effect width-md waves-light" name="send" value="save"><span class="icon-button"><i class="fe-plus"></i></span> Lưu lại</button>
            </div>
        </form>
    </div>
@stop

@section('javascript')
    <script src="{{asset('admin/assets/libs/switchery/switchery.min.js')}}"></script>
    <script src="{{asset('admin/assets/libs/bootstrap-tagsinput/bootstrap-tagsinput.min.js')}}"></script>
    <script src="https://coderthemes.com/adminox/layouts/vertical/assets/libs/select2/select2.min.js"></script>
    <script src="{{asset('admin/assets/libs/jquery-mockjax/jquery.mockjax.min.js')}}"></script>
    <script src="{{asset('admin/assets/libs/autocomplete/jquery.autocomplete.min.js')}}"></script>
    <script src="{{asset('admin/assets/libs/bootstrap-select/bootstrap-select.min.js')}}"></script>
    <script src="{{asset('admin/assets/libs/bootstrap-touchspin/jquery.bootstrap-touchspin.min.js')}}"></script>
    <script src="{{asset('admin/assets/libs/bootstrap-maxlength/bootstrap-maxlength.min.js')}}"></script>
    <script src="{{asset('admin/assets/libs/bootstrap-filestyle2/bootstrap-filestyle.min.js')}}"></script>

    <!-- Init js-->
    <script src="{{asset('admin/assets/js/pages/form-advanced.init.js')}}"></script>
@stop

@section('css')
    <link href="{{asset('admin/assets/libs/bootstrap-tagsinput/bootstrap-tagsinput.css')}}" rel="stylesheet" />
    <link href="{{asset('admin/assets/libs/switchery/switchery.min.css')}}" rel="stylesheet" type="text/css" />
    <link href="{{asset('admin/assets/libs/select2/select2.min.css')}}" rel="stylesheet" type="text/css" />
    <link href="{{asset('admin/assets/libs/bootstrap-select/bootstrap-select.min.css')}}" rel="stylesheet" type="text/css" />
    <link href="{{asset('admin/assets/libs/bootstrap-touchspin/jquery.bootstrap-touchspin.css')}}" rel="stylesheet" type="text/css" />
@stop

