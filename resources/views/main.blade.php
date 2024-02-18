<!DOCTYPE html>
<html lang="en">

<head>
    <?php
    use App\Helpers\Helpers;
    ?>

    <!-- Page expire error -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>{{ Helpers::settings()->project_name ?? '' }}</title>
    <link href="{{ asset('public/css/bootstrap.css') }}" rel="stylesheet" />
    <link href="{{ asset('public/css/dataTables.bootstrap4.min.css') }}" rel="stylesheet" />
    <link rel="icon" type="image/x-icon" href="{{ asset('public/logo.png') }}" />
    <link href="{{ asset('public/css/bijarniadream.min.css') }}" rel="stylesheet" />
    <link href="{{ asset('public/css/bootstrap-select.css') }}" rel="stylesheet" />
    <link href="{{ asset('public/css/style.css') }}" rel="stylesheet" />
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="{{ asset('public/js/jquery.dataTables.min.js') }}"></script>
    <link href="{{ asset('public/css/theme1.css') }}" rel="stylesheet" />
    <link href="{{ asset('public/css/jquery.datetimepicker.css') }}" rel="stylesheet" />
    <link rel='stylesheet' href='https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.2/themes/smoothness/jquery-ui.css'>
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/dt/dt-1.10.16/r-2.2.1/datatables.min.css">

    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@10.3.6/dist/sweetalert2.all.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@10.3.6/dist/sweetalert2.css">



    <style>
        /*--------------------------------------------------------------
    # preloader_admin
    --------------------------------------------------------------*/
        #preloader_admin {
            position: fixed;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            z-index: 9999;
            overflow: hidden;
            background: #FAFAFA;
            display: block;
        }

        main {
            position: relative;
        }

        #preloader_admin:before {
            content: "";
            position: fixed;
            top: calc(50% - 30px);
            left: calc(50% - 30px);
            border: 6px solid #106eea;
            border-top-color: #e2eefd;
            border-radius: 50%;
            width: 60px;
            height: 60px;
            -webkit-animation: animate-preloader_admin 1s linear infinite;
            animation: animate-preloader_admin 1s linear infinite;
        }

        @-webkit-keyframes animate-preloader_admin {
            0% {
                transform: rotate(0deg);
            }

            100% {
                transform: rotate(360deg);
            }
        }

        @keyframes animate-preloader_admin {
            0% {
                transform: rotate(0deg);
            }

            100% {
                transform: rotate(360deg);
            }
        }

        .form-control{
            height: calc(1.5em + 0.8rem + 2px);
        }

    </style>

    @include('css_color')

</head>

<body class="nav-fixed">

    <div id="preloader_admin">
    </div>

    <?php
    
    #User subadmin Permissions - date: 27 dec
    
    $r1 = Route::getCurrentRoute()->getAction();
    $r2 = Route::currentRouteAction();
    $r3 = Route::currentRouteName();
    
    // $r4 = explode('@', $r2);
    
    // $permissions_string = Auth::user()->permissions;
    // $permissions_array = explode(',', $permissions_string);
    
    #end subadmin Permissions work
    
    ?>

    <nav class="topnav navbar navbar-expand shadow navbar-light bg-white" id="sidenavAccordion">
        <a class="navbar-brand" href="{{ route('register.index') }}">

            @if (empty(Helpers::settings()->project_name_or_logo) or Helpers::settings()->project_name_or_logo == 'logo' or Helpers::settings()->project_name_or_logo == 'both')
                <span>
                    <img class="img-fluid h-60px d-none d-sm-inline-block" src="{{ asset('public/logo.png') }}"
                        onerror="this.src='{{ asset('public/logo.png') }}'"  syle=""/>
                    <img class="img-fluid h-60px d-inline-block d-sm-none" src="{{ asset('public/logo.png') }}"
                        onerror="this.src='{{ asset('public/logo.png') }}'" />
                </span>
            @endif

            @if (empty(Helpers::settings()->project_name_or_logo) or Helpers::settings()->project_name_or_logo == 'project_name' or Helpers::settings()->project_name_or_logo == 'both')
                <span class="ml-1 d-none d-sm-inline-block">
                    {{ Helpers::settings()->project_name ?? '' }}
                </span>
                <span class="ml-1 d-inline-block d-sm-none">
                    {{ Helpers::settings()->short_name ?? '' }}
            @endif

            </span>

        </a>

        {{-- <button class="btn btn-sm btn-icon order-1 order-lg-0 mr-lg-2" id="sidebarToggle">
            <svg xmlns="http://www.w3.org/2000/svg" width="25" height="18" viewBox="0 0 27.623 18" class="injectable">
                <g transform="translate(-599 -99)">
                    <path d="M624.811,134.423h-24A1.817,1.817,0,0,1,599,132.611h0a1.817,1.817,0,0,1,1.811-1.811h24a1.817,1.817,0,0,1,1.811,1.811h0A1.817,1.817,0,0,1,624.811,134.423Z" transform="translate(0 -24.6)" fill="#134ee6"></path>
                    <path d="M618.019,166.123H600.811A1.817,1.817,0,0,1,599,164.311h0a1.817,1.817,0,0,1,1.811-1.811h17.208a1.817,1.817,0,0,1,1.811,1.811h0A1.817,1.817,0,0,1,618.019,166.123Z" transform="translate(0 -49.123)" fill="#134ee6"></path>
                    <path d="M613.491,102.623H600.811A1.817,1.817,0,0,1,599,100.811h0A1.817,1.817,0,0,1,600.811,99h12.679a1.817,1.817,0,0,1,1.811,1.811h0A1.817,1.817,0,0,1,613.491,102.623Z" fill="#134ee6"></path>
                </g>
            </svg>
        </button> --}}
        <ul class="navbar-nav align-items-center ml-auto">
            <li class="nav-item dropdown no-caret mr-3 dropdown-user">
                <a class="btn btn-sm btn-icon btn-transparent-dark dropdown-toggle" id="navbarDropdownUserImage"
                    href="javascript:void(0);" role="button" data-toggle="dropdown" aria-haspopup="true"
                    aria-expanded="false"><img class="img-fluid"
                        src="{{ asset('public/' . auth()->user()->image) }}"
                        onerror="this.src='{{ asset('public/admin.png') }}'" /></a>
                <div class="dropdown-menu dropdown-menu-right border-0 shadow animated--fade-in-up"
                    aria-labelledby="navbarDropdownUserImage">
                    <h6 class="dropdown-header d-flex align-items-center">
                        <img class="dropdown-user-img" src="{{ asset('public/' . auth()->user()->image) }}"
                            onerror="this.src='{{ asset('public/admin.png') }}'">
                        <div class="dropdown-user-details">
                            <div class="dropdown-user-details-name"><?php echo auth()->user()->name; ?></div>
                            <div class="dropdown-user-details-email"><?php echo auth()->user()->email; ?></div>
                        </div>
                    </h6>
                    <div class="dropdown-divider"></div>
                    {{-- <a class="dropdown-item" href="{{ asset('my-admin/admin_profie') }}">
                        <div class="dropdown-item-icon"><i class="fad fa-user"></i></div>
                        Profile
                    </a> --}}
                    <a class="dropdown-item" href="{{ asset('my-admin/admin_change_password') }}">
                        <div class="dropdown-item-icon"><i class="fad fa-redo"></i></div>
                        Change Password
                    </a>
                    <a class="dropdown-item" href="{{ route('logout') }}"
                        onclick="event.preventDefault();document.getElementById('logout').submit()">
                        <div class="dropdown-item-icon"><i class="fad fa-sign-out-alt"></i></div>
                        Logout
                    </a>
                    <form action="{{ route('logout') }}" method="post" id="logout">
                        @csrf
                    </form>
                </div>
            </li>
        </ul>
    </nav>

    <div id="layoutSidenav">
        <div id="layoutSidenav_nav">
            <nav class="sidenav shadow-right sidenav-light">
                <div class="sidenav-menu">
                    <div class="nav accordion" id="accordionSidenav">
                        <div class="sidenav-menu-heading"><h4>Modules</h4></div>
                        {{-- <a class="nav-link" href="{{ asset('/') }}"> --}}
                            {{--    <div class="nav-link-icon"><i class="fad fa-home-heart"></i></div> Dashboard --}}
                        {{-- </a> --}}
                        {{-- <div class="sidenav-menu-heading"><h4>Modules</h4></div> --}}

                        {{-- test --}}
              
                <a class="nav-link collapsed" href="javascript:void(0);" data-toggle="collapse" data-target="#collapse-series-manager" aria-expanded="false" aria-controls="collapse-series-manager">
                    <div class="nav-link-icon"><i class="fad fa-layer-plus"></i></div>
                    Register Manager
                    <div class="sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                </a>
                <div class="collapse" id="collapse-series-manager" data-parent="#accordionSidenav">
                    <nav class="sidenav-menu-nested nav accordion" id="accordionSidenavPages">
                        <a class="nav-link" href="{{route('register.create')}}">Create Register</a>
                        <a class="nav-link" href="{{route('register.index')}}">View Register</a>
                        
                    </nav>
                </div>

                        {{-- <div class="collapse" id="collapse-series-manager" data-parent="#accordionSidenav">
                            <nav class="sidenav-menu-nested nav accordion" id="accordionSidenavPages">
                                <a class="nav-link" href="{{ route('register.create') }}">Create Register</a>
                                <a class="nav-link" href="{{ route('register.index') }}">View Register</a>
                            </nav>
                        </div> --}}

                        <a class="nav-link collapsed" href="javascript:void(0);" data-toggle="collapse"
                            data-target="#collapse-series-manager1" aria-expanded="false"
                            aria-controls="collapse-series-manager">
                            <div class="nav-link-icon"><i class="fa fa-filter"></i></div>
                            Advance Filter
                            <div class="sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                        </a>

                        <div class="collapse" id="collapse-series-manager1" data-parent="#accordionSidenav">
                            <nav class="sidenav-menu-nested nav accordion" id="accordionSidenavPages">
                                <a class="nav-link" href="{{ route('filter.index') }}">Apply Filter</a>
                            </nav>
                        </div>

                    </div>
                </div>
                <div class="sidenav-footer">
                    <div class="sidenav-footer-content w-100">

                        {{-- <div class="sidenav-footer-subtitle">Logged in as:</div> --}}
                        {{-- <div class="sidenav-footer-title"> --}}
                            {{-- {{auth()->user()->name }} --}}
                        {{-- </div> --}}
                    </div>
                </div>
            </nav>

        </div>
        <div id="layoutSidenav_content">
            <main>

                <div class="page-header pb-10 page-header-dark bg-gradient-primary-to-secondary">
                    <div class="container-fluid">
                        <div class="row align-items-center">
                            <div class="col">
                                <div class="page-header-content">
                                    <h1 class="page-header-title fs-md-35 fs-20">

                                        <div class="page-header-icon"><i class="fad fa-at text-white"></i></div>
                                        <span class=" text-capitalize">
                                            @yield('heading')
                                        </span>
                                    </h1>
                                    <div class="page-header-subtitle fs-md-19 fs-14 text-capitalize">
                                        @yield('sub-heading')
                                    </div>
                                </div>
                            </div>
                            <div class="col-auto mb-md-0 mb-3">
                                @yield('card-heading-btn')
                            </div>
                        </div>
                    </div>
                </div>
                <div class="container-fluid mt-n10">
                    @yield('content')
                </div>
            </main>


            {{-- <footer class="footer mt-auto footer-light">
                <div class="container-fluid">
                    <div class="row">
                        <?php
                        use Carbon\Carbon;
                        ?>
                        <div class="col-md-6 small">Copyright &#xA9;
                            Admin{{ Carbon::createFromFormat('m/d/Y', Carbon::today()->format('m/d/Y'))->format('Y') }}
                        </div>
                        <div class="col-md-6 text-md-right small">
                            <a href="javascript:void(0);">Privacy Policy</a> &#xB7;
                            <a href="javascript:void(0);">Terms &amp; Conditions</a>
                        </div>
                    </div>
                </div>
            </footer> --}}
        </div>
    </div>

    <script type="text/javascript" src="https://cdn.datatables.net/v/dt/dt-1.10.16/r-2.2.1/datatables.min.js"></script>
    <script src="{{ asset('public/js/bootstrap.bundle.min.js') }}"></script>
    <script src="{{ asset('public/js/scripts.js') }}"></script>
    <script src="{{ asset('public/js/jquery.datetimepicker.full.js') }}"></script>
    <script src="{{ asset('public/js/bootstrap-select.js') }}"></script>
    <script src="{{ asset('public/js/Chart.min.js') }}"></script>
    <script src="{{ asset('public/js/demo/chart-area-demo.js') }}"></script>
    <script src="{{ asset('public/js/demo/chart-bar-demo.js') }}"></script>
    <script src="{{ asset('public/js/dataTables.bootstrap4.min.js') }}"></script>
    <script src="{{ asset('public/js/demo/datatables-demo.js') }}"></script>
    <script src='https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.2/jquery-ui.min.js'></script>
    <script type="text/javascript" src="{{ asset('public/ckeditor/ckeditor.js') }}"></script>

    <!----Toaster---->
    <!-- CSS -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/2.1.0/css/toastr.css" rel="stylesheet" />

    <!-- JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/2.1.0/js/toastr.js"></script>

    <script>
        @if (!empty($errors))
            @if ($errors->any())
                @foreach ($errors->all() as $error)
                    toastr.error('{{ $error }}');
                @endforeach
            @endif
        @endif
        @if (Session::has('message'))
            toastr.options =
            {
            "closeButton" : true,
            "progressBar" : true
            }
            toastr.success("{{ session('message') }}");
        @endif

        @if (Session::has('success'))
            toastr.options =
            {
            "closeButton" : true,
            "progressBar" : true
            }
            toastr.success("{{ session('success') }}");
        @endif

        @if (Session::has('error'))
            toastr.options =
            {
            "closeButton" : true,
            "progressBar" : true
            }
            toastr.error("{{ session('error') }}");
        @endif

        @if (Session::has('info'))
            toastr.options =
            {
            "closeButton" : true,
            "progressBar" : true
            }
            toastr.info("{{ session('info') }}");
        @endif

        @if (Session::has('warning'))
            toastr.options =
            {
            "closeButton" : true,
            "progressBar" : true
            }
            toastr.warning("{{ session('warning') }}");
        @endif
    </script>

    <script>
        $(window).on('load', function() {

            $('#preloader_admin').hide();

        })
    </script>


    @include('other_js_scripts')

</body>

</html>
