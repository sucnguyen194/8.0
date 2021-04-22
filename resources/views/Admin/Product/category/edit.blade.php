@extends('Admin.Layout.layout')
@section('title')
    Cập nhật nội dung #{{$category->id}}
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
                            <li class="breadcrumb-item"><a href="{{route('admin.posts.categories.index')}}">Danh mục bài viết</a></li>
                            <li class="breadcrumb-item">Cập nhật nội dung</li>
                            <li class="breadcrumb-item">#{{$category->id}}</li>
                        </ol>
                    </div>
                    <h4 class="page-title">Cập nhật nội dung #{{$category->id}}</h4>
                </div>
            </div>
        </div>
        <!-- end page title -->
    </div>
    <div class="container">
        <form method="post" action="{{route('admin.categories.update',$category)}}" enctype="multipart/form-data">
            <div class="row">
                @method('PATCH')
                @csrf
                <div class="col-lg-8">
                    <div class="card-box">
                        <div class="form-group">
                            <label>Tiêu đề <span class="required">*</span></label>
                            <input type="text" class="form-control" value="{{$category->name}}" id="title" onkeyup="ChangeToSlug();" name="data[name]" required>
                        </div>

                        <div class="form-group">
                            <label>Danh mục cha</label>
                            <select class="form-control" data-toggle="select2" name="data[parent_id]">
                                <option value="0">Chọn danh mục</option>
                                @foreach($categories->where('parent_id', 0) as $item )
                                    <option value="{{$item->id}}" {{$category->parent_id == $item->id ? "selected" : ""}} class="font-weight-bold">{{$item->name}}</option>
                                    {{sub_option_category($categories,$item->id,$category->parent_id)}}
                                @endforeach
                            </select>
                        </div>

                        <div class="form-group">
                            <label>Vị trí</label>
                            <select class="form-control" data-toggle="select2" name="data[position]">
                                <option value="0">Chọn ví trí</option>
                                <option value="1" {{$category->position == 1 ? "selected" : ""}}>Vị trí số 1</option>
                                <option value="2" {{$category->position == 2 ? "selected" : ""}}>Vị trí số 2</option>
                                <option value="3" {{$category->position == 3 ? "selected" : ""}}>Vị trí số 3</option>
                                <option value="4" {{$category->position == 4 ? "selected" : ""}}>Vị trí số 4</option>
                                <option value="5" {{$category->position == 5 ? "selected" : ""}}>Vị trí số 5</option>
                                <option value="6" {{$category->position == 6 ? "selected" : ""}}>Vị trí số 6</option>
                                <option value="7" {{$category->position == 7 ? "selected" : ""}}>Vị trí số 7</option>
                                <option value="8" {{$category->position == 8 ? "selected" : ""}}>Vị trí số 8</option>
                                <option value="9" {{$category->position == 9 ? "selected" : ""}}>Vị trí số 9</option>

                            </select>
                        </div>

                        <div class="form-group">
                            <label>Mô tả</label>
                            <textarea class="form-control summernote" id="summernote" name="data[description]">{!! $category->description !!}</textarea>
                        </div>

                    </div>
                    <div class="card-box">
                        <div class="d-flex mb-2">
                            <label class="font-weight-bold">Tối ưu SEO</label>
                            <a href="javascript:void(0)" onclick="changeSeo()" class="edit-seo">Chỉnh sửa SEO</a>
                        </div>

                        <p class="font-13">Thiết lập các thẻ mô tả giúp khách hàng dễ dàng tìm thấy trang trên công cụ tìm kiếm như Google.</p>
                        <div class="test-seo">
                            <div class="mb-1">
                                <a href="javascript:void(0)" class="title-seo">{{$category->title_seo}}</a>
                            </div>
                            <div class="url-seo">
                                <span class="alias-seo" id="alias_seo">{{route('alias',$category->alias)}}</span>
                            </div>
                            <div class="description-seo">
                                {{$category->description_seo}}
                            </div>
                        </div>

                        <div class="change-seo" id="change-seo">
                            <hr>
                            <div class="form-group">
                                <label>Tiêu đề trang</label>
                                <p class="font-13">* Ghi chú: Giới hạn tối đa 70 ký tự</p>
                                <input type="text" maxlength="70" value="{{$category->title_seo}}" name="data[title_seo]" class="form-control" id="alloptions" />
                            </div>
                            <div class="form-group">
                                <label>Mô tả trang</label>
                                <p class="font-13">* Ghi chú: Giới hạn tối đa 320 ký tự</p>
                                <textarea  class="form-control" rows="3" name="data[description_seo]" maxlength="320" id="alloptions">{{$category->description_seo}}</textarea>
                            </div>
                            <div class="form-group">
                                <label>Từ khóa</label>
                                <p class="font-13">* Ghi chú: Từ khóa được phân chia sau dấu phẩy <strong>","</strong></p>

                                <input type="text" name="data[keyword_seo]" value="{{$category->keyword_seo}}" class="form-control"  data-role="tagsinput"/>
                            </div>
                            <div class="form-group">
                                <label>Đường dẫn <span class="required">*</span></label>
                                <div class="d-flex form-control">
                                    <span>{{route('home')}}/</span><input type="text" class="border-0 alias" id="alias" value="{{$category->alias}}" name="data[alias]" required><span>.html</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="card-box">
                        <label class="mb-0">Trạng thái</label>
                        <hr>
                        <div class="checkbox">
                            <input id="checkbox_public" id="public" {{$category->public == 1 ? "checked" : ""}} type="checkbox" value="1" name="public">
                            <label for="checkbox_public">Hiển thị</label>
                        </div>

                        <div class="checkbox">
                            <input id="checkbox_status" id="status" {{$category->status == 1 ? "checked" : ""}} type="checkbox" value="1" name="status">
                            <label for="checkbox_status">Nổi bật</label>
                        </div>
                    </div>

                    <div class="card-box position-relative box-action-image">
                        <label>Hình ảnh</label>
                        <div class="position-absolute font-weight-normal text-primary" id="box-input" style="right:2.2rem;top:1.3rem">
                            <label class="item-input">
                                <input type="file" name="image" class="d-none" id="fileUpload"> Chọn ảnh
                            </label>
                        </div>
                        <p class="font-13">* Định dạng ảnh jpg, jpeg, png, gif</p>
                        <div class="dropzone p-2 text-center">
                            @if(!file_exists($category->image))
                                <div class="dz-message text-center needsclick mb-2" id="remove-label">
                                    <label for="fileUpload" class="w-100 mb-0">
                                        <div class="icon-dropzone pt-2">
                                            <i class="h1 text-muted dripicons-cloud-upload"></i>
                                        </div>
                                        <span class="text-muted font-13">Sử dụng nút <strong>Chọn ảnh</strong> để thêm ảnh</span>
                                    </label>
                                </div>
                            @endif
                            <div class="{{!file_exists($category->image) ? "show-box" : ""}} image-holder pl-0 mb-0 w-100">
                                @if(file_exists($category->image)) <img src="{{asset($category->image)}}" alt="{{$category->name}}"> @endif
                            </div>
                            <div class="box-position btn btn-default waves-effect waves-light text-left @if(!file_exists($category->image)) show-box @endif">
                                <div class="checkbox checkbox-unlink-image">
                                    <input id="checkbox_unlink" class="unlink-image" type="checkbox" name="unlink">
                                    <label for="checkbox_unlink" class="mb-0">Xóa ảnh</label>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="card-box position-relative box-action-image">
                        <label>Ảnh nền</label>
                        <div class="position-absolute font-weight-normal text-primary" id="box-input" style="right:2.2rem;top:1.3rem">
                            <label class="item-input">
                                <input type="file" name="background" class="d-none" id="backgroundUpload"> Chọn ảnh
                            </label>
                        </div>
                        <p class="font-13">* Định dạng ảnh jpg, jpeg, png, gif</p>
                        <div class="dropzone p-2 text-center">
                            @if(!file_exists($category->background))
                                <div class="dz-message text-center needsclick mb-2" id="remove-label">
                                    <label for="backgroundUpload" class="w-100 mb-0">
                                        <div class="icon-dropzone pt-2">
                                            <i class="h1 text-muted dripicons-cloud-upload"></i>
                                        </div>
                                        <span class="text-muted font-13">Sử dụng nút <strong>Chọn ảnh</strong> để thêm ảnh</span>
                                    </label>
                                </div>
                            @endif
                            <div class="{{!file_exists($category->background) ? "show-box" : ""}} image-holder pl-0 mb-0 w-100">
                                @if(file_exists($category->background)) <img src="{{asset($category->background)}}" alt="{{$category->name}}"> @endif
                            </div>
                            <div class="box-position btn btn-default waves-effect waves-light text-left {{!file_exists($category->background) ? "show-box" :"" }}">
                                <div class="checkbox checkbox-unlink-background">
                                    <input id="checkbox_unlink_background" class="unlink-background" type="checkbox" name="unlink_bg">
                                    <label for="checkbox_unlink_background" class="mb-0">Xóa ảnh</label>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="card-box">
                        <label class="w-100">Ngôn ngữ</label>
                        @foreach($langs as $lang)
                            <a href="{{route('admin.products.categories.lang',[$lang->value,$category->id])}}" class="btn btn-primary waves-effect width-md waves-light mb-1"><span class="icon-button"><i class="fe-plus"></i> {{$lang->name}}</a>
                        @endforeach

                        @if($category->postLangsBefore)
                            @foreach($lists as $item)
                                <a href="{{route('admin.products.categories.edit',$item->id)}}" class="btn btn-purple waves-effect waves-light mb-1"><span class="icon-button"><i class="fe-edit-2" aria-hidden="true"></i></span> {{$item->language->name}} #{{$item->id}}</a>
                            @endforeach
                        @endif
                    </div>
                </div>
                <div class="col-lg-12">
                    <a href="{{route('admin.products.categories.index')}}" class="btn btn-default waves-effect waves-light"><span class="icon-button"><i class="fe-arrow-left"></i></span> Quay lại</a>
                    <button type="submit" class="btn btn-primary waves-effect width-md waves-light float-right" name="send" value="update"><span class="icon-button"><i class="fe-plus"></i></span> Lưu lại</button>
                </div>
            </div>
            <!-- end row -->
        </form>
    </div>
    <script>
        CKEDITOR.replace( 'summernote' ,{
            height:150
        });
    </script>
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
