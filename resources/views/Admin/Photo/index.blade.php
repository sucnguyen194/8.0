@extends('Admin.Layout.layout')
@section('title') Thư viện ảnh @stop
@section('content')
    <div class="container-fluid">

        <!-- start page title -->
        <div class="row">
            <div class="col-12">
                <div class="page-title-box">
                    <div class="page-title-right">
                        <ol class="breadcrumb m-0">
                            <li class="breadcrumb-item"><a href="{{route('admin.dashboard')}}">Bảng điều khiển</a></li>
                            <li class="breadcrumb-item active">Thư viện ảnh</li>
                        </ol>
                    </div>
                    <h4 class="page-title">Thư viện ảnh</h4>
                </div>
            </div>
        </div>
        <!-- end page title -->

        <div class="row">
            <div class="col-12">
                <div class="card-box">
                    <a href="{{route('admin.photos.create')}}" class="btn btn-primary waves-effect width-md waves-light float-right"><span class="icon-button"><i class="fe-plus"></i></span> Thêm mới</a>
                    <div class="position-image">
                        <a href="{{route('admin.photos.index')}}" class="{{request()->position ? "btn btn-default" : "btn btn-primary"}} waves-effect waves-light">Tất cả</a>
                        @foreach($positions as $item)
                        <a href="?position={{$item->value}}" class="{{request()->position == $item->value ? "btn btn-primary" : "btn btn-default"}} waves-effect waves-light">{{$item->name}}</a>
                        @endforeach
                    </div>

                    <div class="row">
                        @foreach($photos as $item)
                        <div class="col-xl-2 col-lg-3 col-sm-6">
                            <div class="file-man-box rounded mt-3">
                                <form method="post" action="{{route('admin.photos.destroy',$item->id)}}" class="file-close">
                                    @method('DELETE')
                                    @csrf
                                    <button type="submit" onclick="return confirm('Bạn có chắc muốn xóa?');" ><i class="mdi mdi-close-circle"></i></button>
                                </form>

                                <div class="file-img-box">
                                    <img src="{{asset($item->image)}}" class="img-thumbnail img-responsive" alt="{{$item->title}}">
                                </div>
                                <a href="{{route('admin.photos.edit',$item)}}" class="file-download btn text-primary"><i class="fe-edit-2"></i> </a>
                                <div class="file-man-title">
                                    <h5 class="mb-0 text-overflow">{{$item->updated_at->diffForHumans()}}</h5>
                                    <p class="mb-0"><small>{{$item->position ?? "Nomal"}}</small></p>
                                </div>
                                <div class="file-sort">
                                    <input type="number" name="sort" class="form-control font-weight-bold input-sort" data-id="{{$item->id}}" value="{{$item->sort}}">
                                </div>
                                <div class="file-public">
                                    <div class="checkbox" >
                                        <input id="checkbox_public_{{$item->id}}"  {{$item->public == 1 ? "checked" : ''}} type="checkbox" name="public">
                                        <label for="checkbox_public_{{$item->id}}" class="data_public"  data-id="{{$item->id}}"></label>
                                    </div>
                                </div>
                            </div>
                        </div>
                        @endforeach
                    </div>
                </div>
            </div><!-- end col -->
        </div>
        <!-- end row -->

    </div> <!-- end container-fluid -->
    <input type="hidden" class="type" value="{{\App\Enums\SystemsModuleType::PHOTO}}">
<style>
    input[type=number]::-webkit-inner-spin-button {
        -webkit-appearance: none;
    }

    .file-man-box .file-img-box {
        height: 120px;
        line-height: 120px;
    }
    .file-man-box .file-img-box img{
        max-height: 120px;
        height: auto;
    }
    .file-man-box .file-close button {
        background: none;
        border:none;
        color: #f96a74;
    }
    .file-man-box .file-sort {
        position: absolute;
        line-height: 24px;
        font-size: 24px;
        right: 60px;
        bottom: 25px;
        visibility: hidden;
        width: 70px;
    }
    .file-man-box .file-public {
        position: absolute;
        left: 15px;
        top: 5px;
        visibility: hidden;

    }
    .file-man-box:hover .file-sort, .file-man-box:hover .file-public {
        visibility: visible;
    }
    .change-sort {
        position: absolute;
        top: 17%;
        right: 7%;
        font-size: 13px;
    }
    .file-man-box .file-download {
        font-size: 25px;
    }
</style>
@stop
