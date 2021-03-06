@extends('Admin.Layout.layout')
@section('title') Danh sách modules @stop
@section('content')
    <div class="container-fluid">
        <!-- start page title -->
        <div class="row">
            <div class="col-12">
                <div class="page-title-box">
                    <div class="page-title-right">
                        <ol class="breadcrumb m-0">
                            <li class="breadcrumb-item"><a href="{{route('admin.dashboard')}}">Bảng điều khiển</a></li>
                            <li class="breadcrumb-item active">Danh sách modules</li>
                        </ol>
                    </div>
                    <h4 class="page-title">Danh sách modules</h4>
                </div>
            </div>
        </div>
        <!-- end page title -->
        <div class="row">
            <div class="col-12">
                <div class="card-box table-responsive">
                        <div class="action-datatable text-right mb-3">
                            <a href="{{route('admin.modules.create')}}" class="btn btn-primary waves-effect width-md waves-light">
                                <span class="icon-button"><i class="fe-plus"></i></span> Thêm mới</a>
                        </div>
                        <table id="datatable-buttons" class="table table-bordered table-hover bs-table" style="border-collapse: collapse; border-spacing: 0; ;">
                            <thead>
                            <tr>
                                <th>ID</th>
                                <th style="width: 30%">Module</th>
                                <th style="width: 30%">Tên bảng</th>
                                <th>Số cột</th>
                                <th>Ngày tạo</th>
                                <th>Hành động</th>
                            </tr>
                            </thead>

                            <tbody>
                            @foreach($modules as $item)
                                <tr>
                                    <td >{{$item->id}}</td>
                                    <td>{{$item->name}}</td>
                                    <td>{{$item->table}}</td>
                                    <td>{{$item->collumn}}</td>
                                    <td>
                                        {{$item->updated_at->diffForHumans()}}
                                    </td>
                                    <td>
                                        <a href="{{route('admin.modules.show',$item)}}" class="btn btn-default waves-effect waves-light">
                                            <span class="icon-button"><i class="pe-7s-look"></i></span></a>
                                        <form method="post" action="{{route('admin.modules.destroy',$item)}}" class="d-inline-block">
                                            @csrf
                                            @method('DELETE')
                                            <button type="submit" onclick="return confirm('Bạn có chắc muốn xóa?');" class="btn btn-default waves-effect waves-light">
                                                <span class="icon-button"><i class="fe-x"></i></span></button>
                                        </form>

                                    </td>
                                </tr>
                            @endforeach
                            </tbody>
                        </table>
                </div>
            </div>
        </div>
        <!-- end row -->
    </div>

@stop

@section('css')
    <link href="{{asset('admin/assets/libs/bootstrap-tagsinput/bootstrap-tagsinput.css')}}" rel="stylesheet" type="text/css" />
    <link href="{{asset('admin/assets/libs/select2/select2.min.css')}}" rel="stylesheet" type="text/css" />
    <!-- third party css -->
    <link href="{{asset('admin/assets/libs/datatables/dataTables.bootstrap4.css')}}" rel="stylesheet" type="text/css" />
    <link href="{{asset('admin/assets/libs/datatables/buttons.bootstrap4.css')}}" rel="stylesheet" type="text/css" />
    <link href="{{asset('admin/assets/libs/datatables/responsive.bootstrap4.css')}}" rel="stylesheet" type="text/css" />
@stop

@section('javascript')

    <!-- Required datatable js -->
    <script type="text/javascript" language="javascript" src="https://cdn.datatables.net/1.10.22/js/jquery.dataTables.min.js"></script>


    <script src="{{asset('admin/assets/libs/datatables/dataTables.bootstrap4.min.js')}}"></script>
    <!-- Buttons examples -->
    <script src="{{asset('admin/assets/libs/datatables/dataTables.buttons.min.js')}}"></script>
    <script src="{{asset('admin/assets/libs/datatables/buttons.bootstrap4.min.js')}}"></script>

    <script src="{{asset('admin/assets/libs/datatables/buttons.print.min.js')}}"></script>
    <script src="{{asset('admin/assets/libs/datatables/buttons.colVis.js')}}"></script>

    <script type="text/javascript" language="javascript" src="https://cdn.datatables.net/buttons/1.6.5/js/dataTables.buttons.min.js"></script>
    <script type="text/javascript" language="javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
    <script type="text/javascript" language="javascript" src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/pdfmake.min.js"></script>
    <script type="text/javascript" language="javascript" src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/vfs_fonts.js"></script>
    <script type="text/javascript" language="javascript" src="https://cdn.datatables.net/buttons/1.6.5/js/buttons.html5.min.js"></script>


    <!-- Responsive examples -->
    <script src="{{asset('admin/assets/libs/datatables/dataTables.responsive.min.js')}}"></script>
    <script src="{{asset('admin/assets/libs/datatables/responsive.bootstrap4.min.js')}}"></script>

    <!-- Datatables init -->
    <script src="{{asset('admin/assets/js/pages/datatables.init.js')}}"></script>

@stop
