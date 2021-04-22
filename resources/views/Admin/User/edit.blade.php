@extends('Admin.Layout.layout')
@section('title')
Cập nhật thông tin #{{$user->id}}
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
                            <li class="breadcrumb-item">Cập nhật thông tin</li>
                            <li class="breadcrumb-item active">#{{$user->id}}</li>
                        </ol>
                    </div>
                    <h4 class="page-title">Cập nhật thông tin #{{$user->id}}</h4>
                </div>
            </div>
        </div>
        <!-- end page title -->

        <!-- Clickable Wizard -->
        <div class="row">
            <div class="col-lg-10 offset-1">
                <form action="{{route('admin.users.update',$user)}}" method="post" novalidate enctype="multipart/form-data">
                    <div class="card-box" id="wizard-clickable" >
                        @csrf
                        @method('PATCH')
                        <fieldset title="1">
                            <legend>Thông tin đăng nhập</legend>

                            <div class="row mt-3">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="account">Tài khoản <span class="required">*</span></label>
                                        <input type="text" class="form-control" name="data[account]" id="account" value="{{old('data.account') ?? $user->account}}" required placeholder="user">
                                    </div>

                                    <div class="form-group">
                                        <label for="email">Tài khoản email <span class="required">*</span></label>
                                        <input type="text" class="form-control" id="email" name="data[email]"  value="{{old('data.email') ?? $user->email}}" placeholder="nguyenvan@gmail.com">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="password">Mật khẩu </label>
                                        <input type="password" class="form-control" id="password" name="password" placeholder="******">
                                    </div>

                                    <div class="form-group">
                                        <label for="re_password">Xác nhận mật khẩu </label>
                                        <input type="password" class="form-control" id="re_password" name="re_password" placeholder="******">
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
                                        <input type="text" class="form-control" id="name" name="data[name]" value="{{old('data.name') ?? $user->name}}" placeholder="Nguyễn Văn A">
                                    </div>

                                    <div class="form-group">
                                        <label for="phone">Số điện thoại</label>
                                        <input type="text" class="form-control" id="phone" name="data[phone]" value="{{old('data.phone') ?? $user->phone}}" placeholder="0965 688 533">
                                    </div>

                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="note">Địa chỉ</label>
                                        <textarea name="data[address]" id="address" cols="30" rows="5" class="form-control" placeholder="Số 30, ngõ 19, Hà Đông, Hà Nội">{!! old('data.address') ?? $user->address !!}</textarea>
                                    </div>

                                </div>
                            </div>
                        </fieldset>
                        <button type="submit" class="btn btn-primary stepy-finish"><span class="icon-button"><i class="fe-plus"></i></span> Lưu lai</button>
                    </div>
                    <div class="">
                        <a href="{{route('admin.users.index')}}" class="btn btn-default waves-effect waves-light"><span class="icon-button"><i class="fe-arrow-left"></i></span> Quay lại</a>
                        <button type="submit" class="btn btn-primary waves-effect width-md waves-light float-right" name="send" value="update"><span class="icon-button"><i class="fe-plus"></i></span> Lưu lại</button>
                    </div>
                </form>
            </div>
        </div>
        <!-- End row -->
    </div>
    <style>
        .sub-systems {
            display: none;
        }
    </style>
    <script>
        $(document).on('click','.sub-header',function(){
            let target = $(this).attr('target');
            $(target).slideToggle();
        })
    </script>
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
    <script type="text/javascript">
        jQuery(document).ready(function($) {
            $('body').on('change','#lever', function(){
                var lever = $(this).val();
                if(lever > 0 && lever <=2){
                    $('.sub-systems .prop-checked').prop('checked',true);
                }else{
                    $('.sub-systems .prop-checked').prop('checked',false);
                }
            });
        });
    </script>
@stop

@section('css')
    <link href="{{asset('admin/assets/libs/treeview/style.css')}}" rel="stylesheet" type="text/css" />
    <link href="{{asset('admin/assets/libs/select2/select2.min.css')}}" rel="stylesheet" type="text/css" />

    <style>
        .tree-sub {
            background-image: url(https://coderthemes.com/adminox/layouts/vertical/assets/images/plugins/jstree.png);
            background-position: -132px -4px;
            padding-left: 30px;
            width: 24px;
            height: 28px;
            line-height: 28px;
            font-size: 15px;
            overflow: hidden;
        }
    </style>
@stop
