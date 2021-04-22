@extends('Admin.Layout.layout')
@section('title')
    Thêm mới
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
                            <li class="breadcrumb-item"><a href="{{route('admin.admins.index')}}">Danh sách quản trị</a></li>
                            <li class="breadcrumb-item active">Thêm mới</li>
                        </ol>
                    </div>
                    <h4 class="page-title">Thêm mới</h4>
                </div>
            </div>
        </div>
        <!-- end page title -->


    </div>
    <div class="container">
        <form action="{{route('admin.admins.store')}}" method="post" enctype="multipart/form-data">
            @csrf
            <div class="card-box" id="wizard-clickable" >
                <fieldset title="1">
                    <legend>Thông tin đăng nhập</legend>

                    <div class="mt-3">
                        <div class="form-group">
                            <label for="name">Họ và tên <span class="required">*</span></label>
                            <input type="text" class="form-control" id="name" name="data[name]" required value="{{old('data.name')}}" placeholder="Nguyễn Văn A">
                        </div>
                        <div class="form-group">
                            <label for="email">Email <span class="required">*</span></label>
                            <input type="email" class="form-control" id="email" name="data[email]" required value="{{old('data.email')}}" placeholder="nguyenvan@gmail.com">
                        </div>
                        <div class="form-group">
                            <label for="password">Mật khẩu <span class="required">*</span></label>
                            <input type="text" class="form-control" id="password" name="password" required placeholder="******">
                        </div>
                        <div class="form-group mb-0">
                            <label for="roles">Chức vụ</label>
                            <select class="form-control select2-multiple" data-toggle="select2" multiple="multiple" name="roles[]" data-placeholder="Không">
                                @foreach($roles as $role)
                                    <option value="{{$role->id}}">{{$role->name}}</option>
                                @endforeach
                            </select>
                        </div>
                    </div>
                </fieldset>

                <button type="submit" class="btn btn-primary stepy-finish"><span class="icon-button"><i class="fe-plus"></i></span> Lưu lại</button>
            </div>
            <div class="">
                <a href="{{route('admin.admins.index')}}" class="btn btn-default waves-effect waves-light"><span class="icon-button"><i class="fe-arrow-left"></i></span> Quay lại</a>
                <button type="submit" class="btn btn-primary waves-effect width-md waves-light float-right" name="send" value="save"><span class="icon-button"><i class="fe-plus"></i></span> Lưu lại</button>
            </div>
        </form>
        <!-- Clickable Wizard -->
    </div>
@stop

@section('javascript')
    <!--Form Wizard-->
    <script src="{{asset('admin/assets/libs/stepy/jquery.stepy.js')}}"></script>

    <!-- Validation init js-->
    <script src="{{asset('admin/assets/js/pages/wizard.init.js')}}"></script>

    <!-- Tree view js -->
    <script src="{{asset('admin/assets/libs/treeview/jstree.min.js')}}"></script>
    <script src="{{asset('admin/assets/js/pages/treeview.init.js')}}"></script>

    <script src="https://coderthemes.com/adminox/layouts/vertical/assets/libs/select2/select2.min.js"></script>

    <!-- Init js-->
    <script src="{{asset('admin/assets/js/pages/form-advanced.init.js')}}"></script>
@stop

@section('css')
    <link href="{{asset('admin/assets/libs/treeview/style.css')}}" rel="stylesheet" type="text/css" />
    <link href="{{asset('admin/assets/libs/select2/select2.min.css')}}" rel="stylesheet" type="text/css" />
@stop
