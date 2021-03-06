<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="utf-8" />
    <title>@yield('title') - {{setting()->name}}</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta content="Coderthemes" name="author" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <!-- App favicon -->
    <link rel="shortcut icon" href="{{asset(setting()->favicon)}}">
    @yield('css')

    <!-- Jquery Toast css -->
    <link href="/admin/assets/libs/jquery-toast/jquery.toast.min.css" rel="stylesheet" type="text/css" />
    <!-- App css -->
    <link href="{{asset('admin/assets/css/bootstrap.min.css')}}" rel="stylesheet" type="text/css" id="bootstrap-stylesheet" />
    <link href="{{asset('admin/assets/css/icons.min.css')}}" rel="stylesheet" type="text/css" />
    <link href="{{asset('admin/assets/css/app.min.css')}}" rel="stylesheet" type="text/css"  id="app-stylesheet" />

    <!-- Cpanel css -->
    <link href="{{asset('admin/css/cpanel.css')}}" rel="stylesheet" type="text/css">
    <!-- Jquery -->
    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <script src="/admin/ckeditor/ckeditor.js"></script>
    <script src="/admin/ckfinder/ckfinder.js"></script>

    <script src="https://cdn.jsdelivr.net/npm/vue@2.6.12"></script>
    <script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
    <!-- Cpanel -->
    <script src="{{asset('admin/js/cpanel.js')}}"></script>
</head>

<body>

<!-- Begin page -->
<div id="wrapper">

    <!-- Topbar Start -->
    <div class="navbar-custom">
        <ul class="list-unstyled topnav-menu float-right mb-0">
            @php
                $contact = \App\Models\Contact::whereRepId(0)->oldest('status')->orderByDesc('created_at')->get();
                $langs = \App\Models\Lang::all();
            @endphp
            <li class="redirect-website"><a href="{{route('home')}}" class="nav-link dropdown-toggle mr-0 waves-effect waves-light" target="_blank"><i class="fas fa-home h3 text-white"></i></a> </li>
            <li class="dropdown notification-list dropdown d-lg-inline-block"> <a class="nav-link dropdown-toggle mr-0 waves-effect waves-light" data-toggle="dropdown" href="#" role="button" aria-haspopup="false" aria-expanded="false">{{implode($langs->where('value',Session::get('lang'))->pluck('name')->toArray())}} </a>
                <div class="dropdown-menu dropdown-menu-right profile-dropdown ">
                    @foreach($langs->where('value','<>',Session::get('lang')) as $item)
                    <!-- item-->
                    <a href="{{route('admin.change.lang',$item->value)}}" class="dropdown-item notify-item"><span
                            class="align-middle">{{$item->name}}</span> </a>
                        @endforeach
                  </div>
            </li>

            <li class="dropdown notification-list"> <a class="nav-link dropdown-toggle  waves-effect waves-light" data-toggle="dropdown" href="#" role="button" aria-haspopup="false" aria-expanded="false"><i class="dripicons-bell noti-icon"></i> <span class="badge badge-pink rounded-circle noti-icon-badge">{{$contact->where('status',0)->count()}}</span></a>

                <div class="dropdown-menu dropdown-menu-right dropdown-lg">
                    <div class="dropdown-header noti-title">
                        <h5 class="text-overflow m-0"><span class="float-right"> <span class="badge badge-danger float-right">{{$contact->where('status',0)->count()}}</span> </span>Th??ng b??o</h5>
                    </div>

                    <div class="slimscroll noti-scroll">
                        @foreach($contact->take(10) as $item)
                        <a href="{{route('admin.contacts.show',$item)}}" class="dropdown-item notify-item">
                            <div class="notify-icon rounded-circle"><img src="{{$item->avatar}}" class="rounded-circle"></div>
                            <p class="notify-details">
                                @if($item->status == 0)
                                <strong class="bg-danger pl-1 pr-1 text-white rounded-circle">!</strong>
                                @endif
                                {{$item->note ? str_limit($item->note) : 'Kh??ch h??ng y??u c???u nh???n th??ng tin'}}<small class="text-muted">{{$item->created_at->diffForHumans()}}</small></p>
                        </a>
                        <!-- item-->
                        @endforeach

                       </div>

                    <!-- All-->
                    <a href="{{route('admin.contacts.index')}}" class="dropdown-item text-center text-primary notify-item notify-all"> Xem t???t c??? <i class="fi-arrow-right"></i> </a> </div>
            </li>

            <li class="dropdown notification-list"> <a class="nav-link dropdown-toggle nav-user mr-0 waves-effect waves-light" data-toggle="dropdown" href="#" role="button" aria-haspopup="false" aria-expanded="false"> <img src="{{Auth::user()->gravatar}}" alt="user-image" class="rounded-circle"> <span class="pro-user-name ml-1"> {{Auth::user()->name}} <i class="mdi mdi-chevron-down"></i> </span> </a>
                <div class="dropdown-menu dropdown-menu-right profile-dropdown ">
                    <!-- item-->
                    <div class="dropdown-header noti-title">
                        <h6 class="text-overflow m-0">Xin ch??o !</h6>
                    </div>

                    <!-- item-->
                    <a href="{{route('admin.admins.edit',Auth::id())}}" class="dropdown-item notify-item"> <i class="fe-user"></i> <span>T??i kho???n</span> </a>

                    <!-- item-->
                    <a href="{{route('admin.settings')}}" class="dropdown-item notify-item"> <i class="fe-settings"></i> <span>Settings</span> </a>

                    <!-- item-->
{{--                    <a href="javascript:void(0);" class="dropdown-item notify-item"> <i class="fe-lock"></i> <span>Lock Screen</span> </a>--}}
                    <div class="dropdown-divider"></div>

                    <!-- item-->
                    <a href="#" onclick="document.querySelector('#logout').submit()" class="dropdown-item notify-item"> <i class="fe-log-out"></i> <span>Tho??t</span> </a> </div>
                    <form method="post" action="{{route('admin.logout')}}" class="d-none" id="logout">
                        @csrf
                    </form>
            </li>

        </ul>
        <!-- LOGO -->
        <div class="logo-box"> <a href="" class="logo text-center"> <span class="logo-lg"> <img src="{{asset('admin/assets/images/logo-light.png')}}" alt="" height="25">
                    <!-- <span class="logo-lg-text-light">UBold</span> -->
      </span> <span class="logo-sm">
      <!-- <span class="logo-sm-text-dark">U</span> -->
      <img src="{{asset('admin/assets/images/logo-sm.png')}}" alt="" height="28"> </span> </a> </div>
        <ul class="list-unstyled topnav-menu topnav-menu-left m-0">
            <li>
                <button class="button-menu-mobile waves-effect waves-light"> <i class="fe-menu"></i> </button>
            </li>
{{--            <li class="d-none d-sm-block">--}}
{{--                <form class="app-search" method="get" action="">--}}
{{--                    <div class="app-search-box">--}}
{{--                        <div class="input-group">--}}
{{--                            <input type="text" class="form-control" placeholder="Search...">--}}
{{--                            <div class="input-group-append">--}}
{{--                                <button class="btn" type="submit"> <i class="fe-search"></i> </button>--}}
{{--                            </div>--}}
{{--                        </div>--}}
{{--                    </div>--}}
{{--                </form>--}}
{{--            </li>--}}
        </ul>
    </div>
    <!-- end Topbar -->

    <!-- ========== Left Sidebar Start ========== -->
    <div class="left-side-menu">
        <div class="slimscroll-menu">

            <!--- Sidemenu -->
            <div id="sidebar-menu">
                <ul class="metismenu" id="side-menu">
                    <li>
                        <a href="{{route('admin.dashboard')}}">
                            <i class="pe-7s-home"></i>
                            <span>B???ng ??i???u khi???n</span>
                        </a>
                    </li>
                    @can('admins.view')
                        <li>
                            <a href="javascript:void(0)">
                                <i class="pe-7s-user"></i>
                                <span>Qu???n tr???</span>
                                <span class="menu-arrow"></span>
                            </a>
                            <ul class="nav-second-level" aria-expanded="false">
                                <li>
                                    <a href="{{route('admin.admins.index')}}">T??i kho???n</a>
                                </li>
                                @can('roles.view')
                                <li>
                                    <a href="{{route('admin.roles.index')}}">Ph??n quy???n</a>
                                </li>
                                @endcan
                                @can('permissions.view')
                                <li>
                                    <a href="{{route('admin.permissions.index')}}">Quy???n h???n</a>
                                </li>
                                @endcan
                            </ul>
                        </li>
                    @endcan

                    @can('menu')
                        <li>
                            <a href="{{route('admin.menus.index')}}">
                                <i class="pe-7s-menu"></i>
                                <span>Menu</span>
                            </a>
                        </li>
                    @endcan

                    @can('media')
                        <li>
                            <a href="{{route('admin.photos.index')}}">
                                <i class="pe-7s-musiclist"></i>
                                <span>Media</span>
                            </a>
                        </li>
                    @endcan

                    @can('contact')
                        <li>
                            <a href="javascript:void(0)">
                                <i class="pe-7s-micro"></i>
                                <span>H??? tr???</span>
                                <span class="menu-arrow"></span>
                            </a>
                            <ul class="nav-second-level" aria-expanded="false">
                                <li>
                                    <a href="{{route('admin.supports.customers.index')}}">?? ki???n kh??ch h??ng</a>
                                </li>
                                <li>
                                    <a href="{{route('admin.supports.index')}}">?????i ng?? h??? tr???</a>
                                </li>
                                <li>
                                    <a href="{{route('admin.contacts.index')}}">Tin nh???n</a>
                                </li>
                            </ul>
                        </li>
                    @endcan

                    @can('comment')
                        @php
                            $comments = \App\Models\Comment::whereStatus(0)->get();
                        @endphp
                        <li>
                            <a href="javascript:void(0)">
                                <i class="pe-7s-comment"></i>
                                <span>B??nh lu???n</span>
                                <span class="menu-arrow"></span>
                                <span class="badge badge-danger badge-pill">{{$comments->count()}}</span>
                            </a>
                            <ul class="nav-second-level" aria-expanded="false">
                                <li>
                                    <a href="{{route('admin.comments.list','posts')}}">B??i vi???t <span class="badge badge-danger badge-pill float-right">{{$comments->where('comment_type',get_class(new \App\Models\Post()))->count()}}</span></a>
                                </li>
                                <li>
                                    <a href="{{route('admin.comments.list','products')}}">S???n ph???m <span class="badge badge-danger badge-pill float-right">{{$comments->where('comment_type',get_class(new \App\Models\Product()))->count()}}</span></a>
                                </li>
                            </ul>
                        </li>
                    @endcan

                    <li class="menu-title">N???i dung</li>
                    @can('blog.view')
                        <li>
                            <a href="javascript:void(0)">
                                <i class="pe-7s-news-paper"></i>
                                <span>Blog</span>
                                <span class="menu-arrow"></span>
                            </a>
                            <ul class="nav-second-level" aria-expanded="false">
                                @can('blog.create')
                                <li>
                                    <a href="{{route('admin.posts.create')}}">Th??m b??i vi???t</a>
                                </li>
                                @endcan
                                <li>
                                    <a href="{{route('admin.posts.index')}}">Danh s??ch b??i vi???t</a>
                                </li>
                                <li>
                                    <a href="{{route('admin.posts.categories.index')}}">Danh m???c b??i vi???t</a>
                                </li>
                            </ul>
                        </li>
                    <li>
                        <a href="javascript:void(0)">
                            <i class="pe-7s-wallet"></i>
                            <span>Pages</span>
                            <span class="menu-arrow"></span>
                        </a>
                        <ul class="nav-second-level" aria-expanded="false">
                            <li>
                                <a href="{{route('admin.posts.pages.create')}}">Th??m m???i</a>
                            </li>
                            <li>
                                <a href="{{route('admin.posts.pages.index')}}">Danh s??ch b??i vi???t</a>
                            </li>
                        </ul>
                    </li>
                    @endcan

                    @can('product.view')
                    <li>
                        <a href="javascript:void(0)">
                            <i class="pe-7s-plugin"></i>
                            <span>S???n ph???m</span>
                            <span class="menu-arrow"></span>
                        </a>
                        <ul class="nav-second-level" aria-expanded="false">
                            @can('product.create')
                            <li>
                                <a href="{{route('admin.products.create')}}">Th??m m???i</a>
                            </li>
                            @endcan
                            <li>
                                <a href="{{route('admin.products.index')}}">Danh s??ch s???n ph???m</a>
                            </li>
                            <li>
                                <a href="{{route('admin.products.categories.index')}}">Danh m???c s???n ph???m</a>
                            </li>
                            <li>
                                <a href="{{route('admin.attributes.index')}}">Thu???c t??nh s???n ph???m</a>
                            </li>
                            <li>
                                <a href="{{route('admin.attributes.categories.index')}}">Danh m???c thu???c t??nh</a>
                            </li>
                        </ul>
                    </li>
                    @endcan
                    @can('galleries.view')
                        <li>
                            <a href="{{route('admin.products.galleries.index')}}">
                                <i class="pe-7s-photo-gallery"></i>
                                <span>Album ???nh</span>
                            </a>
                        </li>
                    @endcan
                    @can('videos.view')
                    <li>
                        <a href="{{route('admin.products.videos.index')}}">
                            <i class="pe-7s-video"></i>
                            <span>Videos Youtube</span>
                        </a>
                    </li>
                    @endcan
                    <li class="menu-title">B??n h??ng</li>
                    @can('seller.export')
                    <li>
                        <a href="{{route('admin.orders.create')}}">
                            <i class="pe-7s-back"></i>
                            <span>Xu???t h??ng</span>
                        </a>
                    </li>
                    <li>
                        <a href="{{route('admin.orders.index')}}">
                            <i class="pe-7s-cart"></i>
                            <span>????n h??ng</span>
                        </a>
                    </li>
                    @endcan

                    @can('seller.import')
                    <li>
                        <a href="{{route('admin.imports.create')}}">
                            <i class="pe-7s-next-2"></i>
                            <span>Nh???p h??ng</span>
                        </a>
                    </li>
                    <li>
                        <a href="{{route('admin.imports.index')}}">
                            <i class="pe-7s-copy-file"></i>
                            <span>Kho h??ng</span>
                        </a>
                    </li>
                    @endcan

                    @can('seller.card')
                    <li>
                        <a href="{{route('admin.products.stock')}}">
                            <i class="pe-7s-ticket"></i>
                            <span>Th??? kho</span>
                        </a>
                    </li>
                    @endcan

                    @can('users.view')
                        <li>
                            <a href="{{route('admin.users.index')}}">
                                <i class="pe-7s-users"></i>
                                <span>Kh??ch h??ng</span>
                            </a>
                        </li>
                    @endcan

                    @can('seller.agency')
                    <li>
                        <a href="{{route('admin.agencys.index')}}">
                            <i class="pe-7s-id"></i>
                            <span>Nh?? cung c???p</span>
                        </a>
                    </li>
                    @endcan

                    @can('debts.view')
                        <li>
                            <a href="{{route('admin.debts.index')}}">
                                <i class="pe-7s-diamond"></i>
                                <span>Vay v???n</span>
                            </a>
                        </li>
                    @endcan

                    @can('setting.edit')
                    <li class="menu-title">C???u h??nh</li>
                    <li>
                        <a href="javascript:void(0)">
                            <i class="pe-7s-global"></i>
                            <span>Website</span>
                            <span class="menu-arrow"></span>
                        </a>
                        <ul class="nav-second-level" aria-expanded="false">
                            <li>
                                <a href="{{route('admin.settings')}}">C???u h??nh h??? th???ng</a>
                            </li>
                            @can('setting.alias')
                            <li>
                                <a href="{{route('admin.alias.index')}}">???????ng d???n</a>
                            </li>
                            @endcan
                            @can('setting.source')
                            <li>
                                <a href="{{route('admin.source.index')}}">S???a website</a>
                            </li>
                            @endcan
                            @can('setting.lang')
                            <li>
                                <a href="{{route('admin.lang.index')}}">Ng??n ng???</a>
                            </li>
                            @endcan
                        </ul>
                    </li>
                    @endcan

                    @can('modules.view')
                    <li>
                        <a href="javascript: void(0);">
                            <i class="pe-7s-settings"></i>
                            <span> B???ng ph??? </span>
                            <span class="menu-arrow"></span>
                        </a>
                        <ul class="nav-second-level nav" aria-expanded="false">
                            @can('modules.create')
                            <li>
                                <a href="{{route('admin.modules.create')}}">T???o m???i</a>
                            </li>
                            @endcan
                            <li>
                                <a href="{{route('admin.modules.index')}}">Danh s??ch b???ng ph???</a>
                            </li>
                            @if(\App\Models\Modules::count())
                            <li>
                                <a href="javascript: void(0);" aria-expanded="false">
                                    B???ng ph???
                                    <span class="menu-arrow"></span>
                                </a>
                                <ul class="nav-third-level nav" aria-expanded="false">
                                    @foreach(\App\Models\Modules::get() as $module)
                                    <li>
                                        <a href="{{route('admin.action.module.index',$module->table)}}">{{$module->name}}</a>
                                    </li>
                                    @endforeach
                                </ul>
                            </li>
                            @endif
                        </ul>
                    </li>
                    @endcan
                </ul>
            </div>
            <!-- End Sidebar -->

            <div class="clearfix"></div>
        </div>
        <!-- Sidebar -left -->
    </div>
    <!-- Left Sidebar End -->
    <style>
        #sidebar-menu>ul>li>a i {
            font-size: 1.3rem;
        }
    </style>
    <!-- ============================================================== -->
    <!-- Start Page Content here -->
    <!-- ============================================================== -->

    <div class="content-page">
        <div class="content">
            <!-- Start Content-->
            @yield('content')
            <!-- end container-fluid -->
        </div>
        <!-- end content -->

        <!-- Footer Start -->
        <footer class="footer">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12"> Admin Cpanel</div>
                </div>
            </div>
        </footer>
        <!-- end Footer -->
    </div>
    <!-- ============================================================== -->
    <!-- End Page content -->
    <!-- ============================================================== -->
</div>
<!-- END wrapper -->
<style>
    .loading {
        position: fixed;
        top: 0;
        left: 0;
        right: 0;
        bottom: 0;
        background: rgba(0,0,0, 0.9);
        z-index: 9999;
    }
    .loading .sk-cube-grid {
        position: absolute;
        top: 40%;
        left: 0;
        right: 0;
        bottom: 0;
    }
    .sk-cube-grid .sk-cube {
        background-color: #4d97c1!important;
    }
</style>

<div class="loading">
    <div class="sk-cube-grid">
        <div class="sk-cube sk-cube1"></div>
        <div class="sk-cube sk-cube2"></div>
        <div class="sk-cube sk-cube3"></div>
        <div class="sk-cube sk-cube4"></div>
        <div class="sk-cube sk-cube5"></div>
        <div class="sk-cube sk-cube6"></div>
        <div class="sk-cube sk-cube7"></div>
        <div class="sk-cube sk-cube8"></div>
        <div class="sk-cube sk-cube9"></div>
    </div>
</div>
<!-- Vendor js -->
<script src="{{asset('admin/assets/js/vendor.min.js')}}"></script>
@yield('javascript')
<!-- App js -->
<script src="{{asset('admin/assets/js/app.min.js')}}"></script>
<!-- javascript -->
<link href="/admin/assets/libs/spinkit/spinkit.css" rel="stylesheet" type="text/css" >
<!-- Tost-->
<script src="/admin/assets/libs/jquery-toast/jquery.toast.min.js"></script>
<!-- toastr init js-->
{{--<script src="/admin/assets/js/pages/toastr.init.js"></script>--}}
@include('Errors.note')

<style>
    .clearfix {
        clear: left;
    }
</style>

<script type="text/javascript">
    function initEvents(){
        $('.tooltip-hover').each(function(){
           $(this).tooltipster();
        })
    }

    initEvents();
</script>

<script type="text/javascript">
    $(window).on('load',function() {
        $('.loading').fadeOut();
    });
</script>

<script type="text/javascript">
    var url = "{{url('/')}}";
    function ChangeToSlug()
    {
        var title, slug;
        //L???y text t??? th??? input title
        title = document.getElementById("title").value;
        //?????i ch??? hoa th??nh ch??? th?????ng
        slug = title.toLowerCase();
        //?????i k?? t??? c?? d???u th??nh kh??ng d???u
        slug = slug.replace(/??|??|???|???|??|??|???|???|???|???|???|??|???|???|???|???|???/gi, 'a');
        slug = slug.replace(/??|??|???|???|???|??|???|???|???|???|???/gi, 'e');
        slug = slug.replace(/i|??|??|???|??|???/gi, 'i');
        slug = slug.replace(/??|??|???|??|???|??|???|???|???|???|???|??|???|???|???|???|???/gi, 'o');
        slug = slug.replace(/??|??|???|??|???|??|???|???|???|???|???/gi, 'u');
        slug = slug.replace(/??|???|???|???|???/gi, 'y');
        slug = slug.replace(/??/gi, 'd');
        //X??a c??c k?? t??? ?????t bi???t
        slug = slug.replace(/\`|\~|\!|\@|\#|\||\$|\%|\^|\&|\*|\(|\)|\+|\=|\,|\.|\/|\?|\>|\<|\'|\"|\:|\;|_/gi, '');
        //?????i kho???ng tr???ng th??nh k?? t??? g???ch ngang
        slug = slug.replace(/ /gi, "-");
        //?????i nhi???u k?? t??? g???ch ngang li??n ti???p th??nh 1 k?? t??? g???ch ngang
        //Ph??ng tr?????ng h???p ng?????i nh???p v??o qu?? nhi???u k?? t??? tr???ng
        slug = slug.replace(/\-\-\-\-\-/gi, '-');
        slug = slug.replace(/\-\-\-\-/gi, '-');
        slug = slug.replace(/\-\-\-/gi, '-');
        slug = slug.replace(/\-\-/gi, '-');
        //X??a c??c k?? t??? g???ch ngang ??? ?????u v?? cu???i
        slug = '@' + slug + '@';
        slug = slug.replace(/\@\-|\-\@|\@/gi, '');
        //In slug ra textbox c?? id ???slug???
        document.getElementById('alias').value = slug;
        document.getElementById('alias_seo').innerText = url + slug + '.html';
    }
    jQuery(document).ready(function($) {

        var alias = $('.alias');
        var title = $('input[name="title"]');
        var name = $('input[name="name"]');
        var title_seo = $('input[name="title_seo"]');
        var description_seo = $('textarea[name="description_seo"]');
        var data_title_seo = $('input[name="data[title_seo]"]');
        var data_description_seo = $('textarea[name="data[description_seo]"]');

        data_title_seo.keyup(function() {
            /* Act on the event */
            $('.title-seo').html($(this).val());
            return false;
        });

        data_description_seo.keyup(function() {
            /* Act on the event */
            $('.description-seo').html($(this).val());
            return false;
        });
        title_seo.keyup(function() {
            /* Act on the event */
            $('.title-seo').html($(this).val());
            return false;
        });

        description_seo.keyup(function() {
            /* Act on the event */
            $('.description-seo').html($(this).val());
            return false;
        });
        title.on('keyup change',function(){
            var url = "{{route('home')}}/";

            $('.alias-seo').text(url + $(this).val() + '.html');
        });
        name.on('keyup change',function(){
            var url = "{{route('home')}}/";
            $('.alias-seo').text(url + $(this).val() + '.html');
        });
        alias.on('keyup change',function(){
            var url = "{{route('home')}}/";
            $('.alias-seo').text(url + $(this).val() + '.html');
        })

    });
</script>
<script type="text/javascript">
    $(document).ready(function(){
        $('input[name=sort]').keyup(function(){
            url = "{{route('admin.ajax.data.sort')}}";
            id = $(this).attr('data-id');
            num = $(this).val();
            type = $('input.type').val();
            _token = $('input[name=_token]').val();
            $.ajax({
                url:url,
                type:'GET',
                cache:false,
                data:{'_token':_token,'id':id,'num':num,'type':type},
                success:function(data){
                    flash({'message': 'C???p nh???t th??nh c??ng', 'type': 'success'})
                }
            });
        });

        $('.data_status').click(function(){
            url = "{{route('admin.ajax.data.status')}}";
            id = $(this).attr('data-id');
            _token = $('input[name=_token]').val();
            type = $('input.type').val();
            $.ajax({
                url:url,
                type:'GET',
                cache:false,
                data:{'_token':_token,'id':id,'type':type},
                success:function(data){
                    flash({'message': 'C???p nh???t th??nh c??ng', 'type': 'success'})
                }
            });
        });

        $('.data_public').click(function(){
            url = "{{route('admin.ajax.data.public')}}";
            id = $(this).attr('data-id');
            _token = $('input[name=_token]').val();
            type = $('input.type').val();
            $.ajax({
                url:url,
                type:'GET',
                cache:false,
                data:{'_token':_token,'id':id,'type':type},
                success:function(data){
                    flash({'message': 'C???p nh???t th??nh c??ng', 'type': 'success'})
                }
            });
        });
    })
</script>
</body>

</html>
