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
                            <li class="breadcrumb-item"><a href="{{route('admin.users.index')}}">Danh sách khách hàng</a></li>
                            <li class="breadcrumb-item active">Thêm mới</li>
                        </ol>
                    </div>
                    <h4 class="page-title">Thêm mới</h4>
                </div>
            </div>
        </div>
        <!-- end page title -->

        <!-- Clickable Wizard -->
        <div class="row">
            <div class="col-lg-10 offset-1">
                <form action="{{route('admin.users.store')}}" method="post" enctype="multipart/form-data">
                    @csrf
                    <div class="card-box" id="wizard-clickable" >
                        <fieldset title="1">
                            <legend>Thông tin đăng nhập</legend>

                            <div class="row mt-3">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="account">Tài khoản <span class="required">*</span></label>
                                        <input type="text" class="form-control" name="data[account]" id="account" value="{{old('data.account')}}" required placeholder="user">
                                    </div>

                                    <div class="form-group">
                                        <label for="email">Tài khoản email <span class="required">*</span></label>
                                        <input type="text" class="form-control" id="email" name="data[email]"  value="{{old('data.email') ?? \Illuminate\Support\Str::upper(\Illuminate\Support\Str::random(7))}}@gmail.com" placeholder="nguyenvan@gmail.com">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="password">Mật khẩu <span class="required">*</span></label>
                                        <input type="text" class="form-control" id="password" name="password" value="QAZ123" required placeholder="******">
                                    </div>

                                    <div class="form-group">
                                        <label for="re_password">Xác nhận mật khẩu <span class="required">*</span></label>
                                        <input type="text" class="form-control" id="re_password" name="re_password" value="QAZ123" required placeholder="******">
                                    </div>
                                </div>
                            </div>

                        </fieldset>
                        <fieldset title="2">
                            <legend>Thông tin cá nhân</legend>
                            <div class="row mt-3">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="name">Họ và tên</label>
                                        <input type="text" class="form-control" id="name" name="data[name]" value="{{old('data.name')}}" placeholder="Nguyễn Văn A">
                                    </div>

                                    <div class="form-group">
                                        <label for="phone">Số điện thoại</label>
                                        <input type="text" class="form-control" id="phone" name="data[phone]" value="{{old('data.phone')}}" placeholder="0965 688 533">
                                    </div>

                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="address">Địa chỉ</label>
                                        <textarea name="data[address]" id="address" cols="30" rows="5" class="form-control" placeholder="Số 30, ngõ 19, Hà Đông, Hà Nội">{!! old('data.address') !!}</textarea>
                                    </div>

                                </div>
                            </div>
                        </fieldset>
                        <button type="submit" class="btn btn-primary stepy-finish"><span class="icon-button"><i class="fe-plus"></i></span> Lưu lại</button>
                    </div>
                    <div class="">
                        <a href="{{route('admin.users.index')}}" class="btn btn-default waves-effect waves-light"><span class="icon-button"><i class="fe-arrow-left"></i></span> Quay lại</a>
                        <button type="submit" class="btn btn-primary waves-effect width-md waves-light float-right" name="send" value="save"><span class="icon-button"><i class="fe-plus"></i></span> Lưu lại</button>
                    </div>
                </form>
            </div>
        </div>
        <!-- End row -->
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
    <link href="{{asset('admin/assets/libs/select2/select2.min.css')}}" rel="stylesheet" type="text/css" />
@stop
