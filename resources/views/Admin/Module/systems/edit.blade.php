@extends('Admin.Layout.layout')
@section('title')
    {{$system->name}}
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
                            <li class="breadcrumb-item"><a href="{{route('admin.systems.index')}}">Modules Systems</a></li>
                            <li class="breadcrumb-item active">Sửa</li>
                            <li class="breadcrumb-item active">{{$system->name}}</li>
                        </ol>
                    </div>
                    <h4 class="page-title">{{$system->name}}</h4>
                </div>
            </div>
        </div>
        <!-- end page title -->
    </div>
    <div class="container">
        <form method="post" action="{{route('admin.systems.update',$system)}}" enctype="multipart/form-data">
            <div class="row">
                @csrf
                @method('PATCH')
                <div class="col-lg-12">
                    <div class="card-box">
                        <div class="form-group">
                            <label>Tên module <span class="required">*</span></label>
                            <input type="text" class="form-control" value="{{$system->name ?? old('name')}}" id="name" name="name" required>
                        </div>
                        <div class="form-group">
                            <label>Nhóm hiển thị</label>
                            <select class="form-control" data-toggle="select2" name="position">
                                <option value="0">-----</option>
                                <option value="1" {{$system->position == 1 ? "selected" : ""}}>Nội dung</option>
                                <option value="2" {{$system->position == 2 ? "selected" : ""}}>Bán hàng</option>
                                <option value="3" {{$system->position == 3 ? "selected" : ""}}>Cấu hình</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label>Module cha </label>
                            <select class="form-control" data-toggle="select2" name="parent_id">
                                <option value="0">-----</option>
                                @foreach($systems as $item)
                                    <option value="{{$item->id}}" {{$system->parent_id == $item->id || old('parent_id') == $item->id  ? "selected" : ""}}> {{$item->name}}</option>
                                @endforeach
                            </select>
                        </div>
                        <div class="row">
                            <div class="col-lg-6 form-group">
                                <label>Route</label>
                                <input type="text" class="form-control" value="{{$system->route ?? old('route')}}" id="route" name="route">
                            </div>
                            <div class="col-lg-6 form-group">
                                <label>Var <em>($item)</em></label>
                                <input type="text" class="form-control" value="{{$system->var ?? old('var')}}" id="var" name="var">
                            </div>
                        </div>

                        <div class="form-group">
                            <label>Type <span class="required">*</span></label>
                            <select class="form-control" data-toggle="select2" name="type">
                                <option value="0">-----</option>
                                @foreach(\App\Enums\SystemsModuleType::getInstances() as $item)
                                    <option value="{{$item->key}}" {{$system->type == $item->key || old('type') == $item->key ? "selected" : ""}}> {{$item->description}} </option>
                                @endforeach
                            </select>
                        </div>
                        <div class="form-group">
                            <label>Icon</label>
                            <p class="font-13">* Chọn 1 trong các icon bên dưới</p>
                            <input type="text" class="form-control" value="{{$system->icon ?? old('icon')}}" id="icon" name="icon" readonly>
                        </div>
                    </div>

                </div>

                <div class="col-lg-12 mb-3">
                    <a href="{{route('admin.systems.index')}}" class="btn btn-default waves-effect waves-light"><span class="icon-button"><i class="fe-arrow-left"></i></span> Quay lại</a>
                    <button type="submit" class="btn btn-primary waves-effect width-md waves-light float-right" name="send" value="update"><span class="icon-button"><i class="fe-plus"></i></span> Lưu lại</button>
                </div>

                <div class="col-lg-12">
                    <div class="card-box">
                        <div class="form-group">
                            <div class="input-group m-auto w-75">
                                <input type="text" class="input-search form-control" placeholder="Tìm kiếm icon">
                                <div class="input-group-append">
                                    <button type="button" class="btn waves-effect waves-light btn-primary"><i class="fa fa-search mr-1"></i> Tìm kiếm</button>
                                </div>
                            </div>
                        </div>
                        <div class="row icon-list-demo">
                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-album"></i> pe-7s-album
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-arc"></i>pe-7s-arc
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-back-2"></i>pe-7s-back-2
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-bandaid"></i>pe-7s-bandaid
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-car"></i>pe-7s-car
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-diamond"></i>pe-7s-diamond
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-door-lock"></i>pe-7s-door-lock
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-eyedropper"></i>pe-7s-eyedropper
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-female"></i>pe-7s-female
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-gym"></i>pe-7s-gym
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-hammer"></i>pe-7s-hammer
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-headphones"></i>pe-7s-headphones
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-helm"></i>pe-7s-helm
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-hourglass"></i>pe-7s-hourglass
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-leaf"></i>pe-7s-leaf
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-magic-wand"></i>pe-7s-magic-wand
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-male"></i>pe-7s-male
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-map-2"></i>pe-7s-map-2
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-next-2"></i>pe-7s-next-2
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-paint-bucket"></i>pe-7s-paint-bucket
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-pendrive"></i>pe-7s-pendrive
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-photo"></i>pe-7s-photo
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-piggy"></i>pe-7s-piggy
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-plugin"></i>pe-7s-plugin
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-refresh-2"></i>pe-7s-refresh-2
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-rocket"></i>pe-7s-rocket
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-settings"></i>pe-7s-settings
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-shield"></i>pe-7s-shield
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-smile"></i>pe-7s-smile
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-usb"></i>pe-7s-usb
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-vector"></i>pe-7s-vector
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-wine"></i>pe-7s-wine
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-cloud-upload"></i>pe-7s-cloud-upload
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-cash"></i>pe-7s-cash
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-close"></i>pe-7s-close
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-bluetooth"></i>pe-7s-bluetooth
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-cloud-download"></i>pe-7s-cloud-download
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-way"></i>pe-7s-way
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-close-circle"></i>pe-7s-close-circle
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-id"></i>pe-7s-id
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-angle-up"></i>pe-7s-angle-up
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-wristwatch"></i>pe-7s-wristwatch
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-angle-up-circle"></i>pe-7s-angle-up-circle
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-world"></i>pe-7s-world
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-angle-right"></i>pe-7s-angle-right
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-volume"></i>pe-7s-volume
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-angle-right-circle"></i>pe-7s-angle-right-circle
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-users"></i>pe-7s-users
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-angle-left"></i>pe-7s-angle-left
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-user-female"></i>pe-7s-user-female
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-angle-left-circle"></i>pe-7s-angle-left-circle
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-up-arrow"></i>pe-7s-up-arrow
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-angle-down"></i>pe-7s-angle-down
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-switch"></i>pe-7s-switch
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-angle-down-circle"></i>pe-7s-angle-down-circle
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-scissors"></i>pe-7s-scissors
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-wallet"></i>pe-7s-wallet
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-safe"></i>pe-7s-safe
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-volume2"></i>pe-7s-volume2
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-volume1"></i>pe-7s-volume1
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-voicemail"></i>pe-7s-voicemail
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-video"></i>pe-7s-video
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-user"></i>pe-7s-user
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-upload"></i>pe-7s-upload
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-unlock"></i>pe-7s-unlock
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-umbrella"></i>pe-7s-umbrella
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-trash"></i>pe-7s-trash
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-tools"></i>pe-7s-tools
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-timer"></i>pe-7s-timer
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-ticket"></i>pe-7s-ticket
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-target"></i>pe-7s-target
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-sun"></i>pe-7s-sun
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-study"></i>pe-7s-study
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-stopwatch"></i>pe-7s-stopwatch
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-star"></i>pe-7s-star
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-speaker"></i>pe-7s-speaker
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-signal"></i>pe-7s-signal
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-shuffle"></i>pe-7s-shuffle
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-shopbag"></i>pe-7s-shopbag
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-share"></i>pe-7s-share
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-server"></i>pe-7s-server
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-search"></i>pe-7s-search
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-film"></i>pe-7s-film
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-science"></i>pe-7s-science
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-disk"></i>pe-7s-disk
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-ribbon"></i>pe-7s-ribbon
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-repeat"></i>pe-7s-repeat
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-refresh"></i>pe-7s-refresh
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-add-user"></i>pe-7s-add-user
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-refresh-cloud"></i>pe-7s-refresh-cloud
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-paperclip"></i>pe-7s-paperclip
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-radio"></i>pe-7s-radio
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-note2"></i>pe-7s-note2
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-print"></i>pe-7s-print
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-network"></i>pe-7s-network
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-prev"></i>pe-7s-prev
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-mute"></i>pe-7s-mute
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-power"></i>pe-7s-power
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-medal"></i>pe-7s-medal
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-portfolio"></i>pe-7s-portfolio
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-like2"></i>pe-7s-like2
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-plus"></i>pe-7s-plus
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-left-arrow"></i>pe-7s-left-arrow
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-play"></i>pe-7s-play
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-key"></i>pe-7s-key
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-plane"></i>pe-7s-plane
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-joy"></i>pe-7s-joy
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-photo-gallery"></i>pe-7s-photo-gallery
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-pin"></i>pe-7s-pin
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-phone"></i>pe-7s-phone
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-plug"></i>pe-7s-plug
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-pen"></i>pe-7s-pen
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-right-arrow"></i>pe-7s-right-arrow
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-paper-plane"></i>pe-7s-paper-plane
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-delete-user"></i>pe-7s-delete-user
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-paint"></i>pe-7s-paint
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-bottom-arrow"></i>pe-7s-bottom-arrow
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-notebook"></i>pe-7s-notebook
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-note"></i>pe-7s-note
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-next"></i>pe-7s-next
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-news-paper"></i>pe-7s-news-paper
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-musiclist"></i>pe-7s-musiclist
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-music"></i>pe-7s-music
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-mouse"></i>pe-7s-mouse
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-more"></i>pe-7s-more
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-moon"></i>pe-7s-moon
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-monitor"></i>pe-7s-monitor
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-micro"></i>pe-7s-micro
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-menu"></i>pe-7s-menu
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-map"></i>pe-7s-map
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-map-marker"></i>pe-7s-map-marker
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-mail"></i>pe-7s-mail
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-mail-open"></i>pe-7s-mail-open
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-mail-open-file"></i>pe-7s-mail-open-file
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-magnet"></i>pe-7s-magnet
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-loop"></i>pe-7s-loop
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-look"></i>pe-7s-look
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-lock"></i>pe-7s-lock
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-lintern"></i>pe-7s-lintern
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-link"></i>pe-7s-link
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-like"></i>pe-7s-like
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-light"></i>pe-7s-light
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-less"></i>pe-7s-less
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-keypad"></i>pe-7s-keypad
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-junk"></i>pe-7s-junk
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-info"></i>pe-7s-info
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-home"></i>pe-7s-home
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-help2"></i>pe-7s-help2
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-help1"></i>pe-7s-help1
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-graph3"></i>pe-7s-graph3
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-graph2"></i>pe-7s-graph2
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-graph1"></i>pe-7s-graph1
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-graph"></i>pe-7s-graph
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-global"></i>pe-7s-global
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-gleam"></i>pe-7s-gleam
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-glasses"></i>pe-7s-glasses
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-gift"></i>pe-7s-gift
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-folder"></i>pe-7s-folder
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-flag"></i>pe-7s-flag
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-filter"></i>pe-7s-filter
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-file"></i>pe-7s-file
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-expand1"></i>pe-7s-expand1
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-exapnd2"></i>pe-7s-exapnd2
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-edit"></i>pe-7s-edit
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-drop"></i>pe-7s-drop
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-drawer"></i>pe-7s-drawer
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-download"></i>pe-7s-download
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-display2"></i>pe-7s-display2
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-display1"></i>pe-7s-display1
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-diskette"></i>pe-7s-diskette
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-date"></i>pe-7s-date
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-cup"></i>pe-7s-cup
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-culture"></i>pe-7s-culture
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-crop"></i>pe-7s-crop
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-credit"></i>pe-7s-credit
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-copy-file"></i>pe-7s-copy-file
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-config"></i>pe-7s-config
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-compass"></i>pe-7s-compass
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-comment"></i>pe-7s-comment
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-coffee"></i>pe-7s-coffee
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-cloud"></i>pe-7s-cloud
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-clock"></i>pe-7s-clock
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-check"></i>pe-7s-check
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-chat"></i>pe-7s-chat
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-cart"></i>pe-7s-cart
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-camera"></i>pe-7s-camera
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-call"></i>pe-7s-call
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-calculator"></i>pe-7s-calculator
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-browser"></i>pe-7s-browser
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-box2"></i>pe-7s-box2
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-box1"></i>pe-7s-box1
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-bookmarks"></i>pe-7s-bookmarks
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-bicycle"></i>pe-7s-bicycle
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-bell"></i>pe-7s-bell
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-battery"></i>pe-7s-battery
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-ball"></i>pe-7s-ball
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-back"></i>pe-7s-back
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-attention"></i>pe-7s-attention
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-anchor"></i>pe-7s-anchor
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-albums"></i>pe-7s-albums
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-alarm"></i>pe-7s-alarm
                            </div>

                            <div class="col-sm-6 col-lg-4 col-xl-3">
                                <i class="pe-7s-airplay"></i>pe-7s-airplay
                            </div>

                        </div>
                    </div>
                </div>
            </div>
            <!-- end row -->
        </form>
    </div>
@stop

@section('javascript')
    <script>
        $(document).on('click','.icon-list-demo .col-sm-6.col-lg-4.col-xl-3',function(){
            var icon = $(this).text();
            console.log(icon);
            $('#icon').val(icon.replace(/\s/g, ''));
        })
        $('.input-search').on('keyup', function(e) {
            e.preventDefault();
            /* Act on the event */
            var key = $(this).val().toLowerCase();
            $('.icon-list-demo .col-sm-6.col-lg-4.col-xl-3').filter(function() {
                $(this).toggle($(this).text().toLowerCase().indexOf(key)>-1);
            });
        });
    </script>
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

    <!-- Summernote js -->
    <script src="{{asset('admin/assets/libs/summernote/summernote-bs4.min.js')}}"></script>

    <!-- Init js -->
    <script src="{{asset('admin/assets/js/pages/form-summernote.init.js')}}"></script>

    <!-- Plugins js -->
    <script src="{{asset('admin/assets/libs/katex/katex.min.js')}}"></script>

    <script src="{{asset('admin/assets/libs/quill/quill.min.js')}}"></script>
    <!-- Init js-->
    <script src="{{asset('admin/assets/js/pages/form-quilljs.init.js')}}"></script>
@stop

@section('css')
    <link href="{{asset('admin/assets/libs/bootstrap-tagsinput/bootstrap-tagsinput.css')}}" rel="stylesheet" />
    <link href="{{asset('admin/assets/libs/switchery/switchery.min.css')}}" rel="stylesheet" type="text/css" />
    <link href="{{asset('admin/assets/libs/select2/select2.min.css')}}" rel="stylesheet" type="text/css" />
    <link href="{{asset('admin/assets/libs/bootstrap-select/bootstrap-select.min.css')}}" rel="stylesheet" type="text/css" />
    <link href="{{asset('admin/assets/libs/bootstrap-touchspin/jquery.bootstrap-touchspin.css')}}" rel="stylesheet" type="text/css" />

    <!-- Summernote css -->
    <link href="{{asset('admin/assets/libs/summernote/summernote-bs4.css')}}" rel="stylesheet" type="text/css" />

    <!-- Plugins css -->
    <link href="{{asset('admin/assets/libs/quill/quill.core.css')}}" rel="stylesheet" type="text/css" />
    <link href="{{asset('admin/assets/libs/quill/quill.bubble.css')}}" rel="stylesheet" type="text/css" />
    <link href="{{asset('admin/assets/libs/quill/quill.snow.css')}}" rel="stylesheet" type="text/css" />
@stop
