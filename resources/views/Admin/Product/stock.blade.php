@extends('Admin.Layout.layout')
@section('title') Thẻ kho @stop
@section('content')
    <div class="container-fluid">
        <!-- start page title -->
        <div class="row">
            <div class="col-12">
                <div class="page-title-box">
                    <div class="page-title-right">
                        <ol class="breadcrumb m-0">
                            <li class="breadcrumb-item"><a href="{{route('admin.dashboard')}}">Bảng điều khiển</a></li>
                            <li class="breadcrumb-item"><a href="{{route('admin.products.index')}}">Danh sách sản phẩm</a></li>
                            <li class="breadcrumb-item active">Thẻ kho</li>
                        </ol>
                    </div>
                    <h4 class="page-title">Thẻ kho</h4>
                </div>
            </div>
        </div>
        <!-- end page title -->
        <div class="row">
            <div class="col-md-12">
                <div class="card-box">
                    <form method="get">
                        <div class="row">
                            <div class="col-md-3 mb-2 mb-lg-0 mb-md-0">
                                <label>Phân loại</label>
                                <select class="form-control" data-toggle="select2" name="type">
                                    <option value="">-----</option>
                                    <option value="import" {{request()->type == 'import' ? "selected" : ""}}>Nhập hàng</option>
                                    <option value="export" {{request()->type == 'export' ? "selected" : ""}}>Xuất hàng</option>
                                </select>
                            </div>
                            <div class="col-md-3 mb-2 mb-lg-0 mb-md-0">
                                <label>Sản phẩm</label>
                                <select class="form-control" data-toggle="select2" name="product">
                                    <option value="">-----</option>
                                    @foreach($products as $item)
                                        <option value="{{$item->id}}" {{request()->product == $item->id ? "selected" : ""}}> {{$item->name}} ({{$item->amount}})</option>
                                    @endforeach
                                </select>
                            </div>
                            <div class="col-md-3 mb-2 mb-lg-0 mb-md-0">
                                <label>Thời gian</label>
                                <input type="text" id="reportrange" name="date" value="{{request()->date}}" placeholder="Từ ngày - đến ngày" class="form-control"/>
                            </div>
                            <div class="col-md-3">
                                <label class="ql-color-white hidden-xs" style="opacity: 0">-</label>
                                <div class="mb-2 mb-lg-0 mb-md-0">
                                    <button class="btn btn-primary waves-effect waves-light" type="submit"><span class="icon-button"><i class="fe-search"></i></span> Tìm kiếm</button>
                                    <a class="btn btn-default waves-effect waves-light" href="{{route('admin.products.stock')}}"><span class="icon-button"><i class="fe-arrow-left"></i></span> Quay lại</a>
                                </div>
                            </div>
                        </div>
                    </form>

                </div>
            </div>
        </div>
        <div class="card-box">
            <div class="row">
                <div class="col-lg-3">
                    <label>Tổng nhập</label>
                    <div class="input-group">
                        <div class="input-group-prepend">
                            <span id="basic-addon1" class="input-group-text">SL</span>
                        </div>
                        <div class="font-weight-bold form-control">{{$import}}</div>
                    </div>
                </div>
                <div class="col-lg-3">
                    <label>Tổng xuất</label>
                    <div class="input-group">
                        <div class="input-group-prepend">
                            <span id="basic-addon1" class="input-group-text">SL</span>
                        </div>
                        <div class="font-weight-bold form-control">{{$export}}</div>
                    </div>
                </div>
                <div class="col-lg-3">
                    <label>Tồn kho</label>
                    <div class="input-group">
                        <div class="input-group-prepend">
                            <span id="basic-addon1" class="input-group-text">SL</span>
                        </div>
                        <div class="font-weight-bold form-control">{{$import - $export < 0 ? 0 : $import - $export}}</div>
                    </div>
                </div>
                <div class="col-lg-3">
                    <label>Tổng vốn</label>
                    <div class="input-group">
                        <div class="input-group-prepend">
                            <span id="basic-addon1" class="input-group-text">VNĐ</span>
                        </div>
                        <div class="font-weight-bold form-control">{{number_format($import_debt)}}</div>
                    </div>
                </div>
                <div class="col-lg-3 mt-2">
                    <label>Doanh thu</label>
                    <div class="input-group">
                        <div class="input-group-prepend">
                            <span id="basic-addon1" class="input-group-text">VNĐ</span>
                        </div>
                        <div class="font-weight-bold form-control">{{number_format($sales)}}</div>
                    </div>
                </div>
                <div class="col-lg-3 mt-2">
                    <label>Lợi nhuận</label>
                    <div class="input-group">
                        <div class="input-group-prepend">
                            <span id="basic-addon1" class="input-group-text">VNĐ</span>
                        </div>
                        <div class="font-weight-bold form-control">{{number_format($revenue)}}</div>
                    </div>
                </div>
                <div class="col-lg-3 mt-2">
                    <label>Vốn tồn kho</label>
                    <div class="input-group">
                        <div class="input-group-prepend">
                            <span id="basic-addon1" class="input-group-text">VNĐ</span>
                        </div>
                        <div class="font-weight-bold form-control">{{number_format($balance < 0 ? 0 : $balance)}}</div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-12">
                <div class="card-box table-responsive">
                    <div class="action-datatable text-right mb-3">
                        <a href="{{route('admin.products.index')}}" class="btn btn-default waves-effect waves-light">
                            <span class="icon-button"><i class="fe-arrow-left"></i></span> Quay lại</a>
                    </div>

                    <table id="datatable-buttons" class="table table-hover table-bordered dt-responsive" style="border-collapse: collapse; border-spacing: 0; ;">
                        <thead>
                        <tr>
                            <th>ID</th>
{{--                            <th>Phân loại</th>--}}
                            <th>Thời gian</th>
                            <th style="width: 20%">Sản phẩm</th>
                            <th>Số lượng</th>
                            <th>Giá</th>
                            <th>Quản lý</th>
                            <th>Đối tác</th>
                        </tr>
                        </thead>

                        <tbody>
                        @foreach($sessions as $item)
                            <tr>
                                <td>{{$item->id}}</td>
                                <td>{{$item->created_at->format('d/m/Y H:i')}}</td>
                                <td>{{$item->product->name ?? "Đã xóa"}}</td>
{{--                                <td>{{$item->type == 'import' ? 'Nhập hàng' : "Xuất hàng"}}</td>--}}
                                @if($item->type =='import')
                                    <td class="text-success font-weight-bold"> +{{$item->amount}}</td>
                                @else
                                    <td class="text-danger font-weight-bold"> -{{$item->amount}}</td>
                                @endif

                                @if($item->type =='import')
                                <td>{{number_format($item->price_in) ?? 0}}</td>
                                @else
                                <td>{{number_format($item->price) ?? 0}}</td>
                                @endif
                                <td>
                                    <a href="{{route('admin.users.index',['id' => $item->admin->id ?? 0])}}" target="_blank" class="{{$item->type == 'import' ? 'text-default' : "text-primary"}}" >{{$item->admin->name ?? "#".$item->admin->id}}</a>
                                </td>
                                <td>
                                    @if($item->type =='export')
                                        <a href="{{route('admin.users.index',['id' => $item->user->id ?? 0])}}" target="_blank" class="text-primary">{{$item->user->name ?? "#".$item->user->id}}</a>
                                    @else
                                        <a href="{{route('admin.agencys.index',['id' => $item->agency->id ?? 0])}}" target="_blank" class="text-default">{{$item->agency->name ?? "#".$item->agency->id}}</a>
                                    @endif
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

    <link href="/admin/assets/libs/bootstrap-colorpicker/bootstrap-colorpicker.min.css" rel="stylesheet" type="text/css" />
    <link href="/admin/assets/libs/clockpicker/bootstrap-clockpicker.min.css" rel="stylesheet">
    <link href="/admin/assets/libs/bootstrap-timepicker/bootstrap-timepicker.min.css" rel="stylesheet" type="text/css" />
    <link href="/admin/assets/libs/bootstrap-daterangepicker/daterangepicker.css" rel="stylesheet">
    <link href="/admin/assets/libs/bootstrap-datepicker/bootstrap-datepicker.min.css" rel="stylesheet" type="text/css" />
@stop

@section('javascript')
    <!-- Required datatable js -->
    <script type="text/javascript" language="javascript" src="https://cdn.datatables.net/1.10.22/js/jquery.dataTables.min.js"></script>

    <script src="{{asset('admin/assets/libs/switchery/switchery.min.js')}}"></script>
    <script src="{{asset('admin/assets/libs/bootstrap-tagsinput/bootstrap-tagsinput.min.js')}}"></script>
    <script src="https://coderthemes.com/adminox/layouts/vertical/assets/libs/select2/select2.min.js"></script>
    {{--    <script src="{{asset('admin/assets/libs/jquery-mockjax/jquery.mockjax.min.js')}}"></script>--}}
    <script src="{{asset('admin/assets/libs/autocomplete/jquery.autocomplete.min.js')}}"></script>
    <script src="{{asset('admin/assets/libs/bootstrap-select/bootstrap-select.min.js')}}"></script>
    <script src="{{asset('admin/assets/libs/bootstrap-touchspin/jquery.bootstrap-touchspin.min.js')}}"></script>
    <script src="{{asset('admin/assets/libs/bootstrap-maxlength/bootstrap-maxlength.min.js')}}"></script>
    <script src="{{asset('admin/assets/libs/bootstrap-filestyle2/bootstrap-filestyle.min.js')}}"></script>


    <!-- Init js-->
    <script src="{{asset('admin/assets/js/pages/form-advanced.init.js')}}"></script>

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

    <script src="/admin/assets/libs/moment/moment.min.js"></script>
    <script src="/admin/assets/libs/bootstrap-colorpicker/bootstrap-colorpicker.min.js"></script>
    <script src="/admin/assets/libs/bootstrap-timepicker/bootstrap-timepicker.min.js"></script>
    <script src="/admin/assets/libs/clockpicker/bootstrap-clockpicker.min.js"></script>
    <script src="/admin/assets/libs/bootstrap-datepicker/bootstrap-datepicker.min.js"></script>
    <script src="/admin/assets/libs/bootstrap-daterangepicker/daterangepicker.js"></script>
    <!-- Init js-->
    <script src="{{asset('admin/assets/js/pages/form-pickers.init.js')}}"></script>

@stop
