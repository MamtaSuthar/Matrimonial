@extends('main')

@section('heading')
    Filter User Data
@endsection('heading')

@section('sub-heading')
    {{-- Display Data --}}
@endsection('sub-heading')

@section('content')
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="{{ asset('public/css/from.css') }}">
    {{-- -Age- --}}
    <link rel="stylesheet" href="{{ asset('public/css/slider.css') }}">
    {{-- Height --}}
    <link rel="stylesheet" href="{{ asset('public/css/sliders.css') }}">
    {{-- income --}}
    <link rel="stylesheet" href="{{ asset('public/css/sliders_slide.css') }}">
    {{-- scrollmenu --}}
    <link rel="stylesheet" href="{{ asset('public/css/scroll.css') }}">


    <body>
        <!-- Sidebar -->

        <div class="w3-sidebar w3-white w3-bar-block mt-5" style="width:20%; z-index: 2; height: 100%; position: absolute;">
            <u>
                <h3 class="w3-bar-item">Filters</h3>
            </u>

            <a class="nav-link collapsed" href="javascript:void(0);" data-toggle="collapse"
                data-target="#collapse-series-managers" aria-expanded="false" aria-controls="collapse-series-manager">
                Age
                <i class="fas fa-angle-down"></i>
            </a>
            <div class="collapse" id="collapse-series-managers" data-parent="#accordionSidenav">
                <nav class="sidenav-menu-nested nav accordion" id="accordionSidenavPages">
                    <main class="main-scrollbar">
                        <input type="hidden" id="catid" value="">
                        <div class="container">
                            <div class="row">
                                <div class="col-xm-6">
                                    <section class="card col-xm-5 category container-fluid"
                                        style="height:11rem;width:13rem; ">
                                        <div class="col-12 category-left pe-3 mb-4 border-bottom border-1">
                                            <div class="row border-end border-2 position-sticky left-position top-140px">
                                                <form method="post" id="form1" action="">
                                                    @csrf
                                                    <div class="col-xm-6" style=" width:8rem">
                                                        <span
                                                            class="fs-md-15 fs-14 fw-bold  border-bottom border-3 border-theme2">Age</span>
                                                        <div class="range-slider">
                                                            <span>
                                                                <input type="number" value="18" onchange="users_age()"
                                                                    min="0" max="45" />
                                                                <input type="number" value="45" onchange="users_age()"
                                                                    min="0" max="45" />
                                                            </span>
                                                            <input value="18" min="0" max="45" onchange="users_age()"
                                                                id="min_age" step="1" type="range" />
                                                            <input value="40" min="0" max="45" onchange="users_age()"
                                                                id="max_age" step="1" type="range" />


                                                        </div>

                                                </form>
                                            </div>
                                        </div>
                                    </section>
                                </div>
                                <div class="col-8">
                                </div>
                            </div>
                    </main>
                </nav>
            </div>




            <a class="nav-link collapsed" href="javascript:void(0);" data-toggle="collapse"
                data-target="#collapse-series-manager2" aria-expanded="false" aria-controls="collapse-series-manager1">
                Height
                <i class="fas fa-angle-down"></i>
            </a>

            <div class="collapse" id="collapse-series-manager2" data-parent="#accordionSidenav">
                <nav class="sidenav-menu-nested nav accordion" id="accordionSidenavPages">

                    <main class="main-scrollbar">
                        <input type="hidden" id="catid" value="">
                        <div class="container">
                            <div class="row">
                                <div class="col-xm-6">
                                    <section class="card col-xm-5 category container-fluid"
                                        style="height:11rem;width:13rem; ">
                                        <div class="col-12 category-left pe-3 mb-4 border-bottom border-1">
                                            <div class="row border-end border-2 position-sticky left-position top-140px">
                                                <form method="post" id="form2" action="">
                                                    @csrf
                                                    <div class="col-xm-10">
                                                        <span
                                                            class="fs-md-15 fs-14 fw-bold  border-bottom border-3 border-theme2">Height</span>
                                                        <div class="range-sliders">
                                                            <span>
                                                                <input type="number" onchange="users_height()" value="4.6"
                                                                    min="0" max="7" />
                                                                <input type="number" onchange="users_height()" value="6.9"
                                                                    min="0" max="7" />
                                                            </span>
                                                            <input value="4.6" min="0" onchange="users_height()" max="7"
                                                                id="min_height" step="0.1" type="range" />
                                                            <input value="6.9" min="0" onchange="users_height()" max="7"
                                                                id="max_height" step="0.1" type="range" />
                                                        </div>
                                                </form>
                                            </div>
                                        </div>
                                    </section>
                                </div>
                                <div class="col-8">

                                </div>
                            </div>
                    </main>
                </nav>
            </div>


            <a class="nav-link collapsed" href="javascript:void(0);" data-toggle="collapse"
                data-target="#collapse-series-manager3" aria-expanded="false" aria-controls="collapse-series-manager">
                Income
                <i class="fas fa-angle-down"></i>
            </a>

            <div class="collapse" id="collapse-series-manager3" data-parent="#accordionSidenav">
                <nav class="sidenav-menu-nested nav accordion" id="accordionSidenavPages">
                    <main class="main-scrollbar">
                        <input type="hidden" id="catid" value="">
                        <div class="container">
                            <div class="row">
                                <div class="col-xm-6" style="hight: 2rem;">
                                    <section class="card col-xm-5 category container-fluid"
                                        style="height:11rem;width:13rem; ">
                                        <div class="col-12 category-left pe-3 mb-4 border-bottom border-1">
                                            <div class="row border-end border-2 position-sticky left-position top-140px">
                                                <form method="post" id="form2" action="">
                                                    @csrf
                                                    <div class="col-xm-5" style="width:8rem;">
                                                        <span
                                                            class="fs-md-15 fs-14 fw-bold  border-bottom border-3 border-theme2">Income</span>
                                                        <div class="range-sliderange-slide ">
                                                            <span>
                                                                <label style="margin-top:10px">Lakh:</label>
                                                                <input type="number" onchange="users_income()" value="11"
                                                                    min="0" max="20" />
                                                                <input type="number" onchange="users_income()" value="19"
                                                                    min="0" max="20" />
                                                            </span>
                                                            <input value="11" onchange="users_income()" min="0" max="20"
                                                                id="min_income" step="1" type="range" />
                                                            <input value="19" onchange="users_income()" min="0" max="20"
                                                                id="max_income" step="1" type="range" />
                                                        </div>


                                                </form>
                                            </div>
                                        </div>
                                    </section>
                                </div>
                                <div class="col-8">

                                </div>
                            </div>
                    </main>
                </nav>
            </div>

            <a class="nav-link collapsed" href="javascript:void(0);" data-toggle="collapse"
                data-target="#collapse-series-manager5" aria-expanded="false" aria-controls="collapse-series-manager">
                Manglik
                <i class="fas fa-angle-down"></i>
            </a>
            <div class="collapse" id="collapse-series-manager5" data-parent="#accordionSidenav">
                <nav class="sidenav-menu-nested nav accordion" id="accordionSidenavPages">
                    <div class="container my-4">
                        <a class="dropdown-item">

                            <div class="custom-control custom-radio">
                                <input type="radio" name="manglik" class="custom-control-input" value="manglik_no"
                                    onchange="manglik()" id="manglik_no">
                                <label class="custom-control-label" for="manglik_no">All</label>
                            </div>
                        </a>
                        <a class="dropdown-item" href="#">
                            <div class="custom-control custom-radio">
                                <input type="radio" name="manglik" class="custom-control-input" value="manglik_yes"
                                    onchange="manglik()" id="manglik_yes">
                                <label class="custom-control-label" for="manglik_yes">Manglik</label>
                            </div>
                        </a>
                    </div>
                </nav>
            </div>

            <a class="nav-link collapsed" href="javascript:void(0);" data-toggle="collapse"
                data-target="#collapse-series-manager6" aria-expanded="false" aria-controls="collapse-series-manager">
                Religion
                <i class="fas fa-angle-down"></i>
            </a>
            <div class="collapse" id="collapse-series-manager6" data-parent="#accordionSidenav">
                <nav class="sidenav-menu-nested nav accordion" id="accordionSidenavPages">
                    <div class="container my-4">
                        <a class="dropdown-item">

                            <div class="custom-control custom-radio">
                                <input type="radio" name="religion" class="custom-control-input" value="all"
                                    name="all_religion" onchange="users_religion()" id="all_religion">
                                <label class="custom-control-label" for="all_religion">All</label>
                            </div>
                        </a>
                        <a class="dropdown-item" href="#">
                            <div class="custom-control custom-radio">
                                <input type="radio" name="religion" value="hindu" class="custom-control-input"
                                    onchange="users_religion()" id="hindu">
                                <label class="custom-control-label" for="hindu">Hindu</label>
                            </div>
                        </a>
                    </div>
                </nav>
            </div>

            <a class="nav-link collapsed" href="javascript:void(0);" data-toggle="collapse"
                data-target="#collapse-series-manager7" aria-expanded="false" aria-controls="collapse-series-manager">
                Mother Tongue
                <i class="fas fa-angle-down"></i>
            </a>
            <div class="collapse" id="collapse-series-manager7" data-parent="#accordionSidenav">
                <nav class="sidenav-menu-nested nav accordion" id="accordionSidenavPages">
                    <div class="container my-4">
                        <a class="dropdown-item">

                            <div class="custom-control custom-radio">
                                <input type="radio" name="mothertongue" class="custom-control-input" value="all_tongue"
                                    onchange="mother_tongue()" id="all_tongue">
                                <label class="custom-control-label" for="all_tongue">All</label>
                            </div>
                        </a>
                        <a class="dropdown-item" href="#">
                            <div class="custom-control custom-radio">
                                <input type="radio" name="mothertongue" class="custom-control-input" value="hindi_tongue"
                                    onchange="mother_tongue()" id="hindi_tongue">
                                <label class="custom-control-label" for="hindi_tongue">Hindi</label>
                            </div>
                        </a>
                        <a class="dropdown-item" href="#">
                            <div class="custom-control custom-radio">
                                <input type="radio" name="mothertongue" class="custom-control-input" value="punjabi"
                                    onchange="mother_tongue()" id="punjabi">
                                <label class="custom-control-label" for="punjabi">Punjabi</label>
                            </div>
                        </a>
                    </div>
                </nav>
            </div>

            <a class="nav-link collapsed" href="javascript:void(0);" data-toggle="collapse"
                data-target="#collapse-series-manager8" aria-expanded="false" aria-controls="collapse-series-manager">
                Marital Status
                <i class="fas fa-angle-down"></i>
            </a>
            <div class="collapse" id="collapse-series-manager8" data-parent="#accordionSidenav">
                <nav class="sidenav-menu-nested nav accordion" id="accordionSidenavPages">
                    <a class="dropdown-item">
                        <div class="custom-control custom-radio">
                            <input type="radio" name="marital_status" class="custom-control-input" value="all_status"
                                onchange="marital_status()" id="all_status">
                            <label class="custom-control-label" for="all_status">All</label>
                        </div>
                    </a>
                    <a class="dropdown-item" href="#">
                        <div class="custom-control custom-radio">
                            <input type="radio" name="marital_status" class="custom-control-input" value="never_married"
                                onchange="marital_status()" id="never_married">
                            <label class="custom-control-label" for="never_married">Never Married</label>
                        </div>
                    </a>
                    <a class="dropdown-item" href="#">
                        <div class="custom-control custom-radio">
                            <input type="radio" name="marital_status" class="custom-control-input" value="awaiting_divorce"
                                onchange="marital_status()" id="awaiting_divorce">
                            <label class="custom-control-label" for="awaiting_divorce">Awaiting Divorce</label>
                        </div>
                    </a>
                </nav>
            </div>

            <a class="nav-link collapsed" href="javascript:void(0);" data-toggle="collapse"
                data-target="#collapse-series-manager9" aria-expanded="false" aria-controls="collapse-series-manager">
                Country
                <i class="fas fa-angle-down"></i>
            </a>
            <div class="collapse" id="collapse-series-manager9" data-parent="#accordionSidenav">
                <nav class="sidenav-menu-nested nav accordion" id="accordionSidenavPages">
                    <a class="dropdown-item">
                        <div class="custom-control custom-radio">
                            <input type="radio" name="country" class="custom-control-input" value="all_country"
                                onchange="country()" id="all_country">
                            <label class="custom-control-label" for="all_country">All</label>
                        </div>
                    </a>
                    <a class="dropdown-item" href="#">
                        <div class="custom-control custom-radio">
                            <input type="radio" name="country" class="custom-control-input" value="india"
                                onchange="country()" id="india_country">
                            <label class="custom-control-label" for="india_country">India</label>
                        </div>
                    </a>
                </nav>
            </div>

            <a class="nav-link collapsed" href="javascript:void(0);" data-toggle="collapse"
                data-target="#collapse-series-manager10" aria-expanded="false" aria-controls="collapse-series-manager">
                Education
                <i class="fas fa-angle-down"></i>
            </a>
            <div class="collapse" id="collapse-series-manager10" data-parent="#accordionSidenav">
                <nav class="sidenav-menu-nested nav accordion" id="accordionSidenavPages">
                    <a class="dropdown-item">
                        <div class="custom-control custom-radio">
                            <input type="radio" name="country" class="custom-control-input" value="finance_banking"
                                onchange="education()" id="finance_banking">
                            <label class="custom-control-label" for="finance_banking">Finance?banking</label>
                        </div>
                    </a>
                    <a class="dropdown-item" href="#">
                        <div class="custom-control custom-radio">
                            <input type="radio" name="country" class="custom-control-input" value="medicine"
                                onchange="education()" id="medicine">
                            <label class="custom-control-label" for="medicine">Medicine</label>
                        </div>
                    </a>
                    <a class="dropdown-item" href="#">
                        <div class="custom-control custom-radio">
                            <input type="radio" name="country" class="custom-control-input" value="other_all"
                                onchange="education()" id="other_all">
                            <label class="custom-control-label" for="Other_all">Other/All</label>
                        </div>
                    </a>
                </nav>
            </div>

            <a class="nav-link collapsed" href="javascript:void(0);" data-toggle="collapse"
                data-target="#collapse-series-manager11" aria-expanded="false" aria-controls="collapse-series-manager">
                Occupation
                <i class="fas fa-angle-down"></i>
            </a>
            <div class="collapse" id="collapse-series-manager11" data-parent="#accordionSidenav">
                <nav class="sidenav-menu-nested nav accordion" id="accordionSidenavPages">
                    <a class="dropdown-item">
                        <div class="custom-control custom-radio">
                            <input type="radio" name="occupation" class="custom-control-input" value="all_occupation"
                                onchange="occupation()" id="all_occupation">
                            <label class="custom-control-label" for="all_occupation">All</label>
                        </div>
                    </a>
                    <a class="dropdown-item" href="#">
                        <div class="custom-control custom-radio">
                            <input type="radio" name="occupation" class="custom-control-input" value="banking_occupation"
                                onchange="occupation()" id="banking_occupation">
                            <label class="custom-control-label" for="banking_occupation">Banking/Finance</label>
                        </div>
                    </a>
                    <a class="dropdown-item" href="#">
                        <div class="custom-control custom-radio">
                            <input type="radio" name="occupation" class="custom-control-input" value="doctor_occupation"
                                id="doctor_occupation">
                            <label class="custom-control-label" for="doctor_occupation">Doctor</label>
                        </div>
                    </a>
                </nav>
            </div>

            <a class="nav-link collapsed" href="javascript:void(0);" data-toggle="collapse"
                data-target="#collapse-series-manager12" aria-expanded="false" aria-controls="collapse-series-manager">
                Dietary habbit
                <i class="fas fa-angle-down"></i>
            </a>
            <div class="collapse" id="collapse-series-manager12" data-parent="#accordionSidenav">
                <nav class="sidenav-menu-nested nav accordion" id="accordionSidenavPages">
                    <a class="dropdown-item">
                        <div class="custom-control custom-radio">
                            <input type="radio" name="dietary_habbit" class="custom-control-input"
                                value="all_dietary_habbit" onchange="dietary_habbit()" id="all_dietary_habbit">
                            <label class="custom-control-label" for="all_dietary_habbit">All</label>
                        </div>
                    </a>
                    <a class="dropdown-item" href="#">
                        <div class="custom-control custom-radio">
                            <input type="radio" name="dietary_habbit" class="custom-control-input" value="vegeterain"
                                onchange="dietary_habbit()" id="vegeterain">
                            <label class="custom-control-label" for="vegeterain">Vegeterain</label>
                        </div>
                    </a>
                </nav>
            </div>
            <a class="nav-link collapsed" href="javascript:void(0);" data-toggle="collapse"
                data-target="#collapse-series-manager13" aria-expanded="false" aria-controls="collapse-series-manager">
                Smoking habbit
                <i class="fas fa-angle-down"></i>
            </a>
            <div class="collapse" id="collapse-series-manager13" data-parent="#accordionSidenav">
                <nav class="sidenav-menu-nested nav accordion" id="accordionSidenavPages">
                    <a class="dropdown-item">
                        <div class="custom-control custom-radio">
                            <input type="radio" name="smoking_habbit" class="custom-control-input" value="smoking_yes"
                                onchange="smoking_habbit()" id="smoking_yes">
                            <label class="custom-control-label" for="smoking_yes">Yes</label>
                        </div>
                    </a>
                    <a class="dropdown-item" href="#">
                        <div class="custom-control custom-radio">
                            <input type="radio" name="smoking_habbit" class="custom-control-input" value="smoking_no"
                                onchange="smoking_habbit()" id="smoking_no">
                            <label class="custom-control-label" for="smoking_no">No</label>
                        </div>
                    </a>
                </nav>
            </div>
            <a class="nav-link collapsed" href="javascript:void(0);" data-toggle="collapse"
                data-target="#collapse-series-manager14" aria-expanded="false" aria-controls="collapse-series-manager">
                Driniking habbit
                <i class="fas fa-angle-down"></i>
            </a>
            <div class="collapse" id="collapse-series-manager14" data-parent="#accordionSidenav">
                <nav class="sidenav-menu-nested nav accordion" id="accordionSidenavPages">
                    <a class="dropdown-item">
                        <div class="custom-control custom-radio">
                            <input type="radio" name="drinking_habbit" class="custom-control-input" value="drinking_yes"
                                onchange="drinking_habbit()" id="drinking_yes">
                            <label class="custom-control-label" for="drinking_yes">Yes</label>
                        </div>
                    </a>
                    <a class="dropdown-item" href="#">
                        <div class="custom-control custom-radio">
                            <input type="radio" name="drinking_habbit" class="custom-control-input" value="drinking_no"
                                onchange="drinking_habbit()" id="drinking_no">
                            <label class="custom-control-label" for="drinking_no">No</label>
                        </div>
                    </a>
                </nav>
            </div>

            <a class="nav-link collapsed" href="javascript:void(0);" data-toggle="collapse"
                data-target="#collapse-series-manager15" aria-expanded="false" aria-controls="collapse-series-manager">
                Challenged
                <i class="fas fa-angle-down"></i>
            </a>
            <div class="collapse" id="collapse-series-manager15" data-parent="#accordionSidenav">
                <nav class="sidenav-menu-nested nav accordion" id="accordionSidenavPages">
                    <a class="dropdown-item">
                        <div class="custom-control custom-radio">
                            <input type="radio" name="challenged" class="custom-control-input" value="challenged_yes"
                                onchange="challenged()" id="challenged_yes">
                            <label class="custom-control-label" for="challenged_yes">Yes</label>
                        </div>
                    </a>
                    <a class="dropdown-item" href="#">
                        <div class="custom-control custom-radio">
                            <input type="radio" name="challenged" class="custom-control-input" value="challenged_no"
                                onchange="challenged()" id="challenged_no">
                            <label class="custom-control-label" for="challenged_no">No</label>
                        </div>
                    </a>
                </nav>
            </div>

        </div>

        <!-- Page Content -->
        <div style="margin-left:22%">

            {{-- <div class="w3-container w3-white">

                <div class="scrollmenu">
                    <a href="#" class="active">Daily Recommendations</a>
                    <a href="#">Desired Partner Matches</a>
                    <a href="#">Just Joined Matches</a>
                    <a href="#">Verified Matches</a>
                    <a href="#">Mutual Matches</a>
                    <a href="#s">Members Looking for Me</a>
                    <a href="#">Kundli Matches</a>
                    <a href="#">Shortlisted Profiles</a>
                    <a href="#">Profile Visitors</a>
                </div>

            </div> --}}

            {{-- <div class="w3-container">
                @forelse($data as $notifi)
                    <div class="card">
                        <div class="row">
                            <div class="col-xm-6">
                                <img src="{{ asset('public/uploads/user-profile/' . $notifi->image) }}" width="200" height="200"
                                    class="img-circle elevation-2" />
                            </div>
                            <div class="col-xm-9 ml-3">
                                <div class="card-header" style="width:45rem;">
                                    {{ $notifi->first_name }}
                                    {{ $notifi->last_name }}
                                </div>

                                <div class="col-xm-6 ">
                                    <div class="card-body">

                                        <div class="col-xm-6 ">
                                            {{ $notifi->cast }}
                                            {{ $notifi->religion }}
                                        </div>
                                        <div class="col-xm-6 ">
                                            {{ $notifi->height }}
                                            {{ $notifi->mother_tongue }}
                                        </div>
                                        <div class="col-xm-6 ">
                                            {{ $notifi->marital_status }}
                                            {{ $notifi->Annual_Income }}
                                        </div>
                                        <div class="col-xm-6 ">
                                            {{ $notifi->location }}

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                @empty
                    <div class="card-header" style="width:45rem;">
                        No Data Available now
                    </div>
                @endforelse



            </div> --}}

            <div class="w3-container" id="mydiv">

            </div>
        </div>
    </body>


    <script>
        $(document).ready(function() {
            var img;
            $.ajax({
                "url": "{{ route('all_data') }}",
                data: {
                    "_token": "{{ csrf_token() }}",

                },
                type: 'POST',
                dataType: 'JSON',
                success: function(val) {
                    $('#mydiv').html('');
                    if (val.status == 'success') {
                        if (val.data != null) {
                            mydata = val.data
                            $.each(mydata, function(key, value) {
                               console.log(value.image);
                               var dataa='1649240552.images (1).png'
                               var result =  value.image ? value.image : dataa;
                                $('#mydiv').append(
                                    `<div class="w3-container">
                                        <div class="card">
                                            <div class="row">
                                                <div class="col-xm-6">
                                                    
                                                    <img src="{{ asset('public/uploads/user-profile/' . '${result}') }}" width="150" height="150" class="img-circle elevation-2">
                                                        
                                                </div>
                                            
                                                <div class="col-9 ml-3">
                                                    <div class="card-header text-capitalize" style="width:45rem;">
                                                       ${value.first_name}
                                                        ${value.last_name}
                                                        
                                                    </div>

                                                    <div class="card-body">

                                                    <div class="row">
                                                    <div class="col-md-6 mt-0">
                                                    <label class="label">Cast: </label><span class="labelcont">${value.cast}
                                                    </span></div>
                                                    <div class="col-md-6 mt-0">
                                                    <label class="label">Religion: </label><span class="labelcont">${value.religion}
                                                    </span></div>
                                                    <div class="col-md-6 mt-0">
                                                    <label class="label">Height: </label><span class="labelcont">${value.userheight}
                                                    </span></div>
                                                    <div class="col-md-6 mt-0">
                                                    <label class="label">MotherTongue: </label><span class="labelcont">${value.mother_tongue}
                                                    </span></div>
                                                    <div class="col-md-6 mt-0">
                                                    <label class="label"> Merital Status: </label><span class="labelcont">${value.marital_status}
                                                    </span></div>
                                                    <div class="col-md-6 mt-0">
                                                    <label class="label">AnnualIncome: </label><span class="labelcont">${value.Annual_Income}
                                                    </span></div>
                                                    <div class="col-md-6 mt-0">
                                                    <label class="label">Location: </label><span class="labelcont">${value.location}
                                                    </span></div>

                                                    </div>

                                                    </div>
                                        </div>
                                    </div> `
                                );
                            })
                        }
                    } else {
                        $('#mydiv').children().remove();
                        $('#mydiv').append(
                            '<div class="w3-container"><div class="card"><h1 class="mt-5" style="text-align:center;">Data Not Available</h1></div></div>'
                            );
                    }
                },
                cache: false,
                processData: true
            });
        });

        (function() {

            var parent = document.querySelector(".range-slider");
            if (!parent) return;

            var
                rangeS = parent.querySelectorAll("input[type=range]"),
                numberS = parent.querySelectorAll("input[type=number]");

            rangeS.forEach(function(el) {
                el.oninput = function() {
                    var slide1 = parseFloat(rangeS[0].value),
                        slide2 = parseFloat(rangeS[1].value);

                    if (slide1 > slide2) {
                        [slide1, slide2] = [slide2, slide1];

                    }

                    numberS[0].value = slide1;
                    numberS[1].value = slide2;
                }
            });

            numberS.forEach(function(el) {
                el.oninput = function() {
                    var number1 = parseFloat(numberS[0].value),
                        number2 = parseFloat(numberS[1].value);

                    if (number1 > number2) {
                        var tmp = number1;
                        numberS[0].value = number2;
                        numberS[1].value = tmp;
                    }

                    rangeS[0].value = number1;
                    rangeS[1].value = number2;

                }
            });

        })();

        (function() {

            var parent = document.querySelector(".range-sliders");
            if (!parent) return;

            var
                rangeS = parent.querySelectorAll("input[type=range]"),
                numberS = parent.querySelectorAll("input[type=number]");

            rangeS.forEach(function(el) {
                el.oninput = function() {
                    var slide1 = parseFloat(rangeS[0].value),
                        slide2 = parseFloat(rangeS[1].value);

                    if (slide1 > slide2) {
                        [slide1, slide2] = [slide2, slide1];

                    }

                    numberS[0].value = slide1;
                    numberS[1].value = slide2;
                }
            });

            numberS.forEach(function(el) {
                el.oninput = function() {
                    var number1 = parseFloat(numberS[0].value),
                        number2 = parseFloat(numberS[1].value);

                    if (number1 > number2) {
                        var tmp = number1;
                        numberS[0].value = number2;
                        numberS[1].value = tmp;
                    }

                    rangeS[0].value = number1;
                    rangeS[1].value = number2;

                }
            });

        })();

        (function() {

            var parent = document.querySelector(".range-sliderange-slide ");
            if (!parent) return;

            var
                rangeS = parent.querySelectorAll("input[type=range]"),
                numberS = parent.querySelectorAll("input[type=number]");

            rangeS.forEach(function(el) {
                el.oninput = function() {
                    var slide1 = parseFloat(rangeS[0].value),
                        slide2 = parseFloat(rangeS[1].value);

                    if (slide1 > slide2) {
                        [slide1, slide2] = [slide2, slide1];

                    }

                    numberS[0].value = slide1;
                    numberS[1].value = slide2;

                }
            });

            numberS.forEach(function(el) {
                el.oninput = function() {
                    var number1 = parseFloat(numberS[0].value),
                        number2 = parseFloat(numberS[1].value);

                    if (number1 > number2) {
                        var tmp = number1;
                        numberS[0].value = number2;
                        numberS[1].value = tmp;
                    }

                    rangeS[0].value = number1;
                    rangeS[1].value = number2;

                }
            });

        })();
    </script>


    <script>
        // range slider drag
        (function() {

            var parent = document.querySelector(".range-sliders-slide");
            if (!parent) return;

            var
                rangeS = parent.querySelectorAll("input[type=range]"),
                numberS = parent.querySelectorAll("input[type=number]");

            rangeS.forEach(function(el) {
                el.oninput = function() {
                    var slide1 = parseFloat(rangeS[0].value),
                        slide2 = parseFloat(rangeS[1].value);

                    if (slide1 > slide2) {
                        [slide1, slide2] = [slide2, slide1];

                    }

                    numberS[0].value = slide1;
                    numberS[1].value = slide2;
                }
            });

            numberS.forEach(function(el) {
                el.oninput = function() {
                    var number1 = parseFloat(numberS[0].value),
                        number2 = parseFloat(numberS[1].value);

                    if (number1 > number2) {
                        var tmp = number1;
                        numberS[0].value = number2;
                        numberS[1].value = tmp;
                    }

                    rangeS[0].value = number1;
                    rangeS[1].value = number2;

                }
            });

        })();
    </script>

    <script>
        function users_height() {
            event.preventDefault();
            fdata = [];
            var start = document.getElementById("min_height").value
            console.log(start);
            var end = document.getElementById("max_height").value

            fdata.push(start);
            fdata.push(end);
            console.log(fdata);
            $.ajax({
                "url": "{{ route('users_height') }}",
                data: {
                    "_token": "{{ csrf_token() }}",
                    "fdata": fdata
                },
                type: 'POST',
                dataType: 'JSON',
                success: function(val) {
                    $('#mydiv').html('');
                    if (val.status == 'success') {
                        if (val.data != null) {
                            mydata = val.data
                             $.each(mydata, function(key, value) {
                            //    console.log(value.image);
                               var dataa='1649240552.images (1).png'
                               var result =  value.image ? value.image : dataa;
                                $('#mydiv').append(
                                    `<div class="w3-container">
                                        <div class="card">
                                            <div class="row">
                                                <div class="col-xm-6">
                                                    
                                                    <img src="{{ asset('public/uploads/user-profile/' . '${result}') }}" width="150" height="150" class="img-circle elevation-2">
                                                        
                                                </div>
                                            
                                                        
                                                </div>
                                            
                                                <div class="col-9 ml-3">
                                                    <div class="card-header text-capitalize" style="width:45rem;">
                                                       ${value.first_name}
                                                        ${value.last_name}
                                                        
                                                    </div>

                                                    <div class="card-body">

                                                    <div class="row">
                                                    <div class="col-md-6 mt-0">
                                                    <label class="label">Cast: </label><span class="labelcont">${value.cast}
                                                    </span></div>
                                                    <div class="col-md-6 mt-0">
                                                    <label class="label">Religion: </label><span class="labelcont">${value.religion}
                                                    </span></div>
                                                    <div class="col-md-6 mt-0">
                                                    <label class="label">Height: </label><span class="labelcont">${value.userheight}
                                                    </span></div>
                                                    <div class="col-md-6 mt-0">
                                                    <label class="label">MotherTongue: </label><span class="labelcont">${value.mother_tongue}
                                                    </span></div>
                                                    <div class="col-md-6 mt-0">
                                                    <label class="label">MotherTongue: </label><span class="labelcont">${value.marital_status}
                                                    </span></div>
                                                    <div class="col-md-6 mt-0">
                                                    <label class="label">AnnualIncome: </label><span class="labelcont">${value.Annual_Income}
                                                    </span></div>
                                                    <div class="col-md-6 mt-0">
                                                    <label class="label">Location: </label><span class="labelcont">${value.location}
                                                    </span></div>

                                                    </div>

                                                    </div>

                                                    
                                                     
                                                     
                                                
                                        </div>
                                    </div> `
                                );
                            })
                        }
                    } else {
                        $('#mydiv').children().remove();
                        $('#mydiv').append(
                            '<div class="w3-container"><div class="card"><h1 class="mt-5" style="text-align:center;">Data Not Available</h1></div></div>'
                            );
                    }
                },
                cache: false,
                processData: true
            });
        }

        function users_income() {
            event.preventDefault();
            fdata = [];
            var start = document.getElementById("min_income").value
            console.log(start);
            var end = document.getElementById("max_income").value
            console.log(end);
            fdata.push(start);
            fdata.push(end);
            console.log(fdata);
            $.ajax({
                "url": "{{ route('users_income') }}",
                data: {
                    "_token": "{{ csrf_token() }}",
                    "fdata": fdata
                },
                type: 'POST',
                dataType: 'JSON',
                success: function(val) {
                    $('#mydiv').html('');
                    if (val.status == 'success') {
                        if (val.data != null) {
                            mydata = val.data
                            $.each(mydata, function(key, value) {
                                var dataa='1649240552.images (1).png'
                               var result =  value.image ? value.image : dataa;
                                console.log(value);
                                $('#mydiv').append(
                                    `<div class="w3-container">
                                        <div class="card">
                                            <div class="row">
                                                <div class="col-xm-6">
                                                    
                                                    <img src="{{ asset('public/uploads/user-profile/' . '${result}') }}" width="150" height="150" class="img-circle elevation-2">
                                                        
                                                </div>
                                            
                                                <div class="col-9 ml-3">
                                                    <div class="card-header text-capitalize" style="width:45rem;">
                                                       ${value.first_name}
                                                        ${value.last_name}
                                                        
                                                    </div>

                                                    <div class="card-body">

                                                    <div class="row">
                                                    <div class="col-md-6 mt-0">
                                                    <label class="label">Cast: </label><span class="labelcont">${value.cast}
                                                    </span></div>
                                                    <div class="col-md-6 mt-0">
                                                    <label class="label">Religion: </label><span class="labelcont">${value.religion}
                                                    </span></div>
                                                    <div class="col-md-6 mt-0">
                                                    <label class="label">Height: </label><span class="labelcont">${value.userheight}
                                                    </span></div>
                                                    <div class="col-md-6 mt-0">
                                                    <label class="label">MotherTongue: </label><span class="labelcont">${value.mother_tongue}
                                                    </span></div>
                                                    <div class="col-md-6 mt-0">
                                                    <label class="label">Merital Status: </label><span class="labelcont">${value.marital_status}
                                                    </span></div>
                                                    <div class="col-md-6 mt-0">
                                                    <label class="label">AnnualIncome: </label><span class="labelcont">${value.Annual_Income}
                                                    </span></div>
                                                    <div class="col-md-6 mt-0">
                                                    <label class="label">Location: </label><span class="labelcont">${value.location}
                                                    </span></div>

                                                    </div>

                                                    </div>
                                        </div>
                                    </div> `
                                );
                            })
                        }
                    } else {
                        $('#mydiv').children().remove();
                        $('#mydiv').append(
                            '<div class="w3-container"><div class="card"><h1 class="mt-5" style="text-align:center;">Data Not Available</h1></div></div>'
                            );
                    }
                },
                cache: false,
                processData: true
            });
        }

        function manglik() {
            event.preventDefault();
            fdata = [];
            if (document.getElementById('manglik_no').checked) {
                var manglik_no = document.getElementById("manglik_no").value
                fdata.push(manglik_no);
            } else {
                var manglik_no = 0;
                fdata.push(manglik_no);
            }
            if (document.getElementById('manglik_yes').checked) {
                var manglik_yes = document.getElementById("manglik_yes").value
                fdata.push(manglik_yes);
            }

            $.ajax({
                "url": "{{ route('manglik') }}",
                data: {
                    "_token": "{{ csrf_token() }}",
                    "fdata": fdata
                },
                type: 'POST',
                dataType: 'JSON',
                success: function(val) {
                    if (val.status == 'success') {
                        $('#mydiv').html('');
                        if (val.data != null) {
                            mydata = val.data
                            $.each(mydata, function(key, value) {
                                var dataa='1649240552.images (1).png'
                               var result =  value.image ? value.image : dataa;
                                console.log(value);
                                $('#mydiv').append(
                                    `<div class="w3-container">
                                        <div class="card">
                                            <div class="row">
                                                <div class="col-xm-6">
                                                    
                                                    <img src="{{ asset('public/uploads/user-profile/' . '${result}') }}" width="150" height="150" class="img-circle elevation-2">
                                                        
                                                </div>
                                            
                                                <div class="col-9 ml-3">
                                                    <div class="card-header text-capitalize" style="width:45rem;">
                                                       ${value.first_name}
                                                        ${value.last_name}
                                                        
                                                    </div>

                                                    <div class="card-body">

                                                    <div class="row">
                                                    <div class="col-md-6 mt-0">
                                                    <label class="label">Cast: </label><span class="labelcont">${value.cast}
                                                    </span></div>
                                                    <div class="col-md-6 mt-0">
                                                    <label class="label">Religion: </label><span class="labelcont">${value.religion}
                                                    </span></div>
                                                    <div class="col-md-6 mt-0">
                                                    <label class="label">Height: </label><span class="labelcont">${value.userheight}
                                                    </span></div>
                                                    <div class="col-md-6 mt-0">
                                                    <label class="label">MotherTongue: </label><span class="labelcont">${value.mother_tongue}
                                                    </span></div>
                                                    <div class="col-md-6 mt-0">
                                                    <label class="label">Merital Status: </label><span class="labelcont">${value.marital_status}
                                                    </span></div>
                                                    <div class="col-md-6 mt-0">
                                                    <label class="label">AnnualIncome: </label><span class="labelcont">${value.Annual_Income}
                                                    </span></div>
                                                    <div class="col-md-6 mt-0">
                                                    <label class="label">Location: </label><span class="labelcont">${value.location}
                                                    </span></div>

                                                    </div>

                                                    </div>
                                        </div>
                                    </div> `
                                );
                            })
                        }
                    } else {
                        $('#mydiv').children().remove();
                        $('#mydiv').append(
                            '<div class="w3-container"><div class="card"><h1 class="mt-5" style="text-align:center;">Data Not Available</h1></div></div>'
                            );
                    }
                },
                cache: false,
                processData: true
            });
        }

        function users_religion() {
            event.preventDefault();
            fdata = [];
            if (document.getElementById('all_religion').checked) {
                var start = document.getElementById("all_religion").value
                fdata.push(start);
            } else {
                var start = 0;
                fdata.push(start);
            }
            if (document.getElementById('hindu').checked) {
                var end = document.getElementById("hindu").value
                fdata.push(end);
            }

            console.log(fdata);
            $.ajax({
                "url": "{{ route('users_religion') }}",
                data: {
                    "_token": "{{ csrf_token() }}",
                    "fdata": fdata
                },
                type: 'POST',
                dataType: 'JSON',
                success: function(val) {
                    if (val.status == 'success') {
                        $('#mydiv').html('');
                        if (val.data != null) {
                            mydata = val.data
                            $.each(mydata, function(key, value) {
                                var dataa='1649240552.images (1).png'
                               var result =  value.image ? value.image : dataa;
                                console.log(value);
                                $('#mydiv').append(
                                    `<div class="w3-container">
                                        <div class="card">
                                            <div class="row">
                                                <div class="col-xm-6">
                                                    
                                                    <img src="{{ asset('public/uploads/user-profile/' . '${result}') }}" width="150" height="150" class="img-circle elevation-2">
                                                        
                                                </div>
                                            
                                                <div class="col-9 ml-3">
                                                    <div class="card-header text-capitalize" style="width:45rem;">
                                                       ${value.first_name}
                                                        ${value.last_name}
                                                        
                                                    </div>

                                                            <div class="card-body">

                                                            <div class="row">
                                                            <div class="col-md-6 mt-0">
                                                            <label class="label">Cast: </label><span class="labelcont">${value.cast}
                                                            </span></div>
                                                            <div class="col-md-6 mt-0">
                                                            <label class="label">Religion: </label><span class="labelcont">${value.religion}
                                                            </span></div>
                                                            <div class="col-md-6 mt-0">
                                                            <label class="label">Height: </label><span class="labelcont">${value.userheight}
                                                            </span></div>
                                                            <div class="col-md-6 mt-0">
                                                            <label class="label">MotherTongue: </label><span class="labelcont">${value.mother_tongue}
                                                            </span></div>
                                                            <div class="col-md-6 mt-0">
                                                            <label class="label">Merital Status: </label><span class="labelcont">${value.marital_status}
                                                            </span></div>
                                                            <div class="col-md-6 mt-0">
                                                            <label class="label">AnnualIncome: </label><span class="labelcont">${value.Annual_Income}
                                                            </span></div>
                                                            <div class="col-md-6 mt-0">
                                                            <label class="label">Location: </label><span class="labelcont">${value.location}
                                                            </span></div>

                                                            </div>

                                                            </div>

                                                                                                                
                                                     
                                                     
                                                
                                        </div>
                                    </div> `
                                );
                            })
                        }
                    } else {
                        $('#mydiv').children().remove();
                        $('#mydiv').append(
                            '<div class="w3-container"><div class="card"><h1 class="mt-5" style="text-align:center;">Data Not Available</h1></div></div>'
                            );
                    }
                },
                cache: false,
                processData: true
            });
        }

        function mother_tongue() {
            event.preventDefault();
            fdata = [];
            if (document.getElementById('all_tongue').checked) {
                var all_religion = document.getElementById("all_tongue").value
                fdata.push(all_religion);
            } else {
                var all_religion = 0;
                fdata.push(all_religion);
            }
            if (document.getElementById('hindi_tongue').checked) {
                var hindi_tongue = document.getElementById("hindi_tongue").value
                fdata.push(hindi_tongue);
            } else {
                var hindi_tongue = 1;
                fdata.push(hindi_tongue);
            }
            if (document.getElementById('punjabi').checked) {
                var punjabi = document.getElementById("punjabi").value
                fdata.push(punjabi);
            } else {
                var punjabi = 2;
                fdata.push(punjabi);
            }


            console.log(fdata);
            $.ajax({
                "url": "{{ route('mother_tongue') }}",
                data: {
                    "_token": "{{ csrf_token() }}",
                    "fdata": fdata
                },
                type: 'POST',
                dataType: 'JSON',
                success: function(val) {
                    if (val.status == 'success') {
                        if (val.data != null) {
                            $('#mydiv').html('');
                            mydata = val.data
                            $.each(mydata, function(key, value) {
                                var dataa='1649240552.images (1).png'
                               var result =  value.image ? value.image : dataa;
                                console.log(value);
                                $('#mydiv').append(
                                    `<div class="w3-container">
                                        <div class="card">
                                            <div class="row">
                                                <div class="col-xm-6">
                                                    
                                                    <img src="{{ asset('public/uploads/user-profile/' . '${result}') }}" width="150" height="150" class="img-circle elevation-2">
                                                        
                                                </div>
                                            
                                                <div class="col-9 ml-3">
                                                    <div class="card-header text-capitalize" style="width:45rem;">
                                                       ${value.first_name}
                                                        ${value.last_name}
                                                        
                                                    </div>

                                                    <div class="card-body">

                                                    <div class="row">
                                                    <div class="col-md-6 mt-0">
                                                    <label class="label">Cast: </label><span class="labelcont">${value.cast}
                                                    </span></div>
                                                    <div class="col-md-6 mt-0">
                                                    <label class="label">Religion: </label><span class="labelcont">${value.religion}
                                                    </span></div>
                                                    <div class="col-md-6 mt-0">
                                                    <label class="label">Height: </label><span class="labelcont">${value.userheight}
                                                    </span></div>
                                                    <div class="col-md-6 mt-0">
                                                    <label class="label">MotherTongue: </label><span class="labelcont">${value.mother_tongue}
                                                    </span></div>
                                                    <div class="col-md-6 mt-0">
                                                    <label class="label">Merital Status:</label><span class="labelcont">${value.marital_status}
                                                    </span></div>
                                                    <div class="col-md-6 mt-0">
                                                    <label class="label">AnnualIncome: </label><span class="labelcont">${value.Annual_Income}
                                                    </span></div>
                                                    <div class="col-md-6 mt-0">
                                                    <label class="label">Location: </label><span class="labelcont">${value.location}
                                                    </span></div>

                                                    </div>

                                                    </div>

                                                    
                                                     
                                                     
                                                
                                        </div>
                                    </div> `
                                );
                            })
                        }
                    } else {
                        $('#mydiv').children().remove();
                        $('#mydiv').append(
                            '<div class="w3-container"><div class="card"><h1 class="mt-5" style="text-align:center;">Data Not Available</h1></div></div>'
                            );
                    }
                },
                cache: false,
                processData: true
            });
        }

        function country() {
            event.preventDefault();
            fdata = [];
            if (document.getElementById('all_country').checked) {
                var all_country = document.getElementById("all_country").value
                fdata.push(all_country);
            } else {
                var all_country = 0;
                fdata.push(all_country);
            }
            if (document.getElementById('india_country').checked) {
                var india_country = document.getElementById("india_country").value
                fdata.push(india_country);
            }

            $.ajax({
                "url": "{{ route('country') }}",
                data: {
                    "_token": "{{ csrf_token() }}",
                    "fdata": fdata
                },
                type: 'POST',
                dataType: 'JSON',
                success: function(val) {
                    $('#mydiv').html('');
                    if (val.status == 'success') {
                        if (val.data != null) {
                            mydata = val.data
                            $.each(mydata, function(key, value) {
                                var dataa='1649240552.images (1).png'
                               var result =  value.image ? value.image : dataa;
                                console.log(value);
                                $('#mydiv').append(
                                    `<div class="w3-container">
                                        <div class="card">
                                            <div class="row">
                                                <div class="col-xm-6">
                                                    
                                                    <img src="{{ asset('public/uploads/user-profile/' . '${result}') }}" width="150" height="150" class="img-circle elevation-2">
                                                        
                                                </div>
                                            
                                                <div class="col-9 ml-3">
                                                    <div class="card-header text-capitalize" style="width:45rem;">
                                                       ${value.first_name}
                                                        ${value.last_name}
                                                        
                                                    </div>

                                                        <div class="card-body">

                                                        <div class="row">
                                                        <div class="col-md-6 mt-0">
                                                        <label class="label">Cast: </label><span class="labelcont">${value.cast}
                                                        </span></div>
                                                        <div class="col-md-6 mt-0">
                                                        <label class="label">Religion: </label><span class="labelcont">${value.religion}
                                                        </span></div>
                                                        <div class="col-md-6 mt-0">
                                                        <label class="label">Height: </label><span class="labelcont">${value.userheight}
                                                        </span></div>
                                                        <div class="col-md-6 mt-0">
                                                        <label class="label">MotherTongue: </label><span class="labelcont">${value.mother_tongue}
                                                        </span></div>
                                                        <div class="col-md-6 mt-0">
                                                        <label class="label">Merital Status:</label><span class="labelcont">${value.marital_status}
                                                        </span></div>
                                                        <div class="col-md-6 mt-0">
                                                        <label class="label">AnnualIncome: </label><span class="labelcont">${value.Annual_Income}
                                                        </span></div>
                                                        <div class="col-md-6 mt-0">
                                                        <label class="label">Location: </label><span class="labelcont">${value.location}
                                                        </span></div>

                                                        </div>

                                                        </div>

                                                    
                                                     
                                                     
                                                
                                        </div>
                                    </div> `
                                );
                            })
                        }
                    } else {
                        $('#mydiv').html('');
                        $('#mydiv').append(
                            '<div class="w3-container"><div class="card"><h1 class="mt-5" style="text-align:center;">Data Not Available</h1></div></div>'
                            );
                    }
                },
                cache: false,
                processData: true
            });
        }

        function marital_status() {
            event.preventDefault();
            fdata = [];
            if (document.getElementById('all_status').checked) {
                var all_status = document.getElementById("all_status").value
                fdata.push(all_status);
            } else {
                var all_status = 0;
                fdata.push(all_status);
            }
            if (document.getElementById('never_married').checked) {
                var never_married = document.getElementById("never_married").value
                fdata.push(never_married);
            } else {
                var never_married = 1;
                fdata.push(never_married);
            }
            if (document.getElementById('awaiting_divorce').checked) {
                var awaiting_divorce = document.getElementById("awaiting_divorce").value
                fdata.push(awaiting_divorce);
            } else {
                var awaiting_divorce = 2;
                fdata.push(awaiting_divorce);
            }

            $.ajax({
                "url": "{{ route('marital_status') }}",
                data: {
                    "_token": "{{ csrf_token() }}",
                    "fdata": fdata
                },
                type: 'POST',
                dataType: 'JSON',
                success: function(val) {
                    $('#mydiv').html('');
                    if (val.status == 'success') {
                        if (val.data != null) {
                            mydata = val.data
                            $.each(mydata, function(key, value) {
                                var dataa='1649240552.images (1).png'
                               var result =  value.image ? value.image : dataa;
                                console.log(value);
                                $('#mydiv').append(
                                    `<div class="w3-container">
                                        <div class="card">
                                            <div class="row">
                                                <div class="col-xm-6">
                                                    
                                                    <img src="{{ asset('public/uploads/user-profile/' . '${result}') }}" width="150" height="150" class="img-circle elevation-2">
                                                        
                                                </div>
                                            
                                                <div class="col-9 ml-3">
                                                    <div class="card-header text-capitalize" style="width:45rem;">
                                                       ${value.first_name}
                                                        ${value.last_name}
                                                        
                                                    </div>

                                                <div class="card-body">

                                                <div class="row">
                                                <div class="col-md-6 mt-0">
                                                <label class="label">Cast: </label><span class="labelcont">${value.cast}
                                                </span></div>
                                                <div class="col-md-6 mt-0">
                                                <label class="label">Religion: </label><span class="labelcont">${value.religion}
                                                </span></div>
                                                <div class="col-md-6 mt-0">
                                                <label class="label">Height: </label><span class="labelcont">${value.userheight}
                                                </span></div>
                                                <div class="col-md-6 mt-0">
                                                <label class="label">MotherTongue: </label><span class="labelcont">${value.mother_tongue}
                                                </span></div>
                                                <div class="col-md-6 mt-0">
                                                <label class="label">Merital Status: </label><span class="labelcont">${value.marital_status}
                                                </span></div>
                                                <div class="col-md-6 mt-0">
                                                <label class="label">AnnualIncome: </label><span class="labelcont">${value.Annual_Income}
                                                </span></div>
                                                <div class="col-md-6 mt-0">
                                                <label class="label">Location: </label><span class="labelcont">${value.location}
                                                </span></div>

                                                </div>

                                                </div>
                                            </div>
                                        </div> `
                                );
                            })
                        }
                    } else {
                        $('#mydiv').html('');
                        $('#mydiv').append(
                            '<div class="w3-container"><div class="card"><h1 class="mt-5" style="text-align:center;">Data Not Available</h1></div></div>'
                            );
                    }
                },
                cache: false,
                processData: true
            });
        }

        function education() {
            event.preventDefault();
            fdata = [];
            var other_all = document.getElementById("other_all").value
            if (document.getElementById('finance_banking').checked) {
                var finance_banking = document.getElementById("finance_banking").value
                fdata.push(finance_banking);
            } else {
                var finance_banking = 0;
                fdata.push(finance_banking);
            }
            if (document.getElementById('medicine').checked) {
                var medicine = document.getElementById("medicine").value
                fdata.push(medicine);
            } else {
                var medicine = 1;
                fdata.push(medicine);
            }
            if (document.getElementById('other_all').checked) {
                var other_all = document.getElementById("other_all").value
                fdata.push(other_all);
            } else {
                var other_all = 2;
                fdata.push(other_all);
            }
            $.ajax({
                "url": "{{ route('users_education') }}",
                data: {
                    "_token": "{{ csrf_token() }}",
                    "fdata": fdata
                },
                type: 'POST',
                dataType: 'JSON',
                success: function(val) {
                    $('#mydiv').html('');
                    if (val.status == 'success') {
                        if (val.data != null) {
                            mydata = val.data
                            $.each(mydata, function(key, value) {
                                var dataa='1649240552.images (1).png'
                               var result =  value.image ? value.image : dataa;
                                console.log(value);
                                $('#mydiv').append(
                                    `<div class="w3-container">
                                        <div class="card">
                                            <div class="row">
                                                <div class="col-xm-6">
                                                    
                                                    <img src="{{ asset('public/uploads/user-profile/' . '${result}') }}" width="150" height="150" class="img-circle elevation-2">
                                                        
                                                </div>
                                            
                                                <div class="col-9 ml-3">
                                                    <div class="card-header text-capitalize" style="width:45rem;">
                                                       ${value.first_name}
                                                        ${value.last_name}
                                                        
                                                    </div>

                                                    <div class="card-body">

                                                    <div class="row">
                                                    <div class="col-md-6 mt-0">
                                                    <label class="label">Cast: </label><span class="labelcont">${value.cast}
                                                    </span></div>
                                                    <div class="col-md-6 mt-0">
                                                    <label class="label">Religion: </label><span class="labelcont">${value.religion}
                                                    </span></div>
                                                    <div class="col-md-6 mt-0">
                                                    <label class="label">Height: </label><span class="labelcont">${value.userheight}
                                                    </span></div>
                                                    <div class="col-md-6 mt-0">
                                                    <label class="label">MotherTongue: </label><span class="labelcont">${value.mother_tongue}
                                                    </span></div>
                                                    <div class="col-md-6 mt-0">
                                                    <label class="label">Merital Status:</label><span class="labelcont">${value.marital_status}
                                                    </span></div>
                                                    <div class="col-md-6 mt-0">
                                                    <label class="label">AnnualIncome: </label><span class="labelcont">${value.Annual_Income}
                                                    </span></div>
                                                    <div class="col-md-6 mt-0">
                                                    <label class="label">Location: </label><span class="labelcont">${value.location}
                                                    </span></div>

                                                    </div>

                                                    </div>
                                        </div>
                                    </div> `
                                );
                            })
                        }
                    } else {
                        $('#mydiv').children().remove();
                        $('#mydiv').append(
                            '<div class="w3-container"><div class="card"><h1 class="mt-5" style="text-align:center;">Data Not Available</h1></div></div>'
                            );
                    }
                },
                cache: false,
                processData: true
            });
        }

        function occupation() {
            event.preventDefault();
            fdata = [];
            if (document.getElementById('all_occupation').checked) {
                var all_occupation = document.getElementById("all_occupation").value
                fdata.push(all_occupation);
            } else {
                var all_occupation = 0;
                fdata.push(all_occupation);
            }
            if (document.getElementById('banking_occupation').checked) {
                var banking_occupation = document.getElementById("banking_occupation").value
                fdata.push(banking_occupation);
            } else {
                var banking_occupation = 0;
                fdata.push(banking_occupation);
            }
            if (document.getElementById('doctor_occupation').checked) {
                var doctor_occupation = document.getElementById("doctor_occupation").value
                fdata.push(doctor_occupation);
            } else {
                var doctor_occupation = 0;
                fdata.push(doctor_occupation);
            }
            $.ajax({
                "url": "{{ route('users_occupation') }}",
                data: {
                    "_token": "{{ csrf_token() }}",
                    "fdata": fdata
                },
                type: 'POST',
                dataType: 'JSON',
                success: function(val) {
                    if (val.status == 'success') {
                        $('#mydiv').html('');
                        if (val.data != null) {
                            mydata = val.data
                            $.each(mydata, function(key, value) {
                                var dataa='1649240552.images (1).png'
                               var result =  value.image ? value.image : dataa;
                                console.log(value);
                                $('#mydiv').append(
                                    `<div class="w3-container">
                                        <div class="card">
                                            <div class="row">
                                                <div class="col-xm-6">
                                                    
                                                    <img src="{{ asset('public/uploads/user-profile/' . '${result}') }}" width="150" height="150" class="img-circle elevation-2">
                                                        
                                                </div>
                                            
                                                <div class="col-9 ml-3">
                                                    <div class="card-header text-capitalize" style="width:45rem;">
                                                       ${value.first_name}
                                                        ${value.last_name}
                                                        
                                                    </div>

                                                    <div class="card-body">

                                                    <div class="row">
                                                    <div class="col-md-6 mt-0">
                                                    <label class="label">Cast: </label><span class="labelcont">${value.cast}
                                                    </span></div>
                                                    <div class="col-md-6 mt-0">
                                                    <label class="label">Religion: </label><span class="labelcont">${value.religion}
                                                    </span></div>
                                                    <div class="col-md-6 mt-0">
                                                    <label class="label">Height: </label><span class="labelcont">${value.userheight}
                                                    </span></div>
                                                    <div class="col-md-6 mt-0">
                                                    <label class="label">MotherTongue: </label><span class="labelcont">${value.mother_tongue}
                                                    </span></div>
                                                    <div class="col-md-6 mt-0">
                                                    <label class="label">Merital Status: </label><span class="labelcont">${value.marital_status}
                                                    </span></div>
                                                    <div class="col-md-6 mt-0">
                                                    <label class="label">AnnualIncome: </label><span class="labelcont">${value.Annual_Income}
                                                    </span></div>
                                                    <div class="col-md-6 mt-0">
                                                    <label class="label">Location: </label><span class="labelcont">${value.location}
                                                    </span></div>

                                                    </div>

                                                    </div>
                                        </div>
                                    </div> `
                                );
                            })
                        }
                    } else {
                        $('#mydiv').children().remove();
                        $('#mydiv').append(
                            '<div class="w3-container"><div class="card"><h1 class="mt-5" style="text-align:center;">Data Not Available</h1></div></div>'
                            );
                    }
                },
                cache: false,
                processData: true
            });
        }

        function users_age() {
            event.preventDefault();
            fdata = [];
            var start = document.getElementById("min_age").value
            console.log(start);
            var end = document.getElementById("max_age").value

            console.log(end);

            fdata.push(start);
            fdata.push(end);

            console.log(fdata);
            $.ajax({
                "url": "{{ route('filter.store') }}",
                data: {
                    "_token": "{{ csrf_token() }}",
                    "fdata": fdata
                },
                type: 'POST',
                dataType: 'JSON',
                success: function(val) {
                    if (val.status == 'success') {
                        $('#mydiv').html('');
                        if (val.data != null) {
                            mydata = val.data
                            $.each(mydata, function(key, value) {
                                var dataa='1649240552.images (1).png'
                               var result =  value.image ? value.image : dataa;
                                console.log(value);
                                $('#mydiv').append(
                                    `<div class="w3-container">
                                        <div class="card">
                                            <div class="row">
                                                <div class="col-xm-6">
                                                    
                                                    <img src="{{ asset('public/uploads/user-profile/' . '${result}') }}" width="150" height="150" class="img-circle elevation-2">
                                                        
                                                </div>
                                            
                                                <div class="col-9 ml-3">
                                                    <div class="card-header text-capitalize" style="width:45rem;">
                                                       ${value.first_name}
                                                        ${value.last_name}
                                                        
                                                    </div>

                                                <div class="card-body">

                                                <div class="row">
                                                <div class="col-md-6 mt-0">
                                                <label class="label">Cast: </label><span class="labelcont">${value.cast}
                                                </span></div>
                                                <div class="col-md-6 mt-0">
                                                <label class="label">Religion: </label><span class="labelcont">${value.religion}
                                                </span></div>
                                                <div class="col-md-6 mt-0">
                                                <label class="label">Height: </label><span class="labelcont">${value.userheight}
                                                </span></div>
                                                <div class="col-md-6 mt-0">
                                                <label class="label">MotherTongue: </label><span class="labelcont">${value.mother_tongue}
                                                </span></div>
                                                <div class="col-md-6 mt-0">
                                                <label class="label">Merital Status:</label><span class="labelcont">${value.marital_status}
                                                </span></div>
                                                <div class="col-md-6 mt-0">
                                                <label class="label">AnnualIncome: </label><span class="labelcont">${value.Annual_Income}
                                                </span></div>
                                                <div class="col-md-6 mt-0">
                                                <label class="label">Location: </label><span class="labelcont">${value.location}
                                                </span></div>

                                                </div>

                                                </div>
                                                </div>
                                    </div> `
                                );
                            })
                        }
                    } else {
                        $('#mydiv').children().remove();
                        $('#mydiv').append(
                            '<div class="w3-container"><div class="card"><h1 class="mt-5" style="text-align:center;">Data Not Available</h1></div></div>'
                            );
                    }
                },
                cache: false,
                processData: true
            });
        }

        function dietary_habbit() {
            event.preventDefault();
            fdata = [];
            if (document.getElementById('all_occupation').checked) {
                var all_dietary_habbit = document.getElementById("all_dietary_habbit").value
                fdata.push(all_dietary_habbit);
            } else {
                var all_dietary_habbit = 0;
                fdata.push(all_dietary_habbit);
            }
            if (document.getElementById('vegeterain').checked) {
                var vegeterain = document.getElementById("vegeterain").value
                fdata.push(vegeterain);
            }
            $.ajax({
                "url": "{{ route('dietary_habbit') }}",
                data: {
                    "_token": "{{ csrf_token() }}",
                    "fdata": fdata
                },
                type: 'POST',
                dataType: 'JSON',
                success: function(val) {
                    if (val.status == 'success') {
                        $('#mydiv').html('');

                        if (val.data != null) {
                            mydata = val.data
                            $.each(mydata, function(key, value) {
                                var dataa='1649240552.images (1).png'
                               var result =  value.image ? value.image : dataa;
                                console.log(value);
                                $('#mydiv').append(
                                    `<div class="w3-container">
                                        <div class="card">
                                            <div class="row">
                                                <div class="col-xm-6">
                                                    
                                                    <img src="{{ asset('public/uploads/user-profile/' . '${result}') }}" width="150" height="150" class="img-circle elevation-2">
                                                </div>
                                            
                                                <div class="col-9 ml-3">
                                                    <div class="card-header text-capitalize" style="width:45rem;">
                                                       ${value.first_name}
                                                        ${value.last_name}
                                                        
                                                    </div>

                                            <div class="card-body">

                                            <div class="row">
                                            <div class="col-md-6 mt-0">
                                            <label class="label">Cast: </label><span class="labelcont">${value.cast}
                                            </span></div>
                                            <div class="col-md-6 mt-0">
                                            <label class="label">Religion: </label><span class="labelcont">${value.religion}
                                            </span></div>
                                            <div class="col-md-6 mt-0">
                                            <label class="label">Height: </label><span class="labelcont">${value.userheight}
                                            </span></div>
                                            <div class="col-md-6 mt-0">
                                            <label class="label">MotherTongue: </label><span class="labelcont">${value.mother_tongue}
                                            </span></div>
                                            <div class="col-md-6 mt-0">
                                            <label class="label">Merital Status:</label><span class="labelcont">${value.marital_status}
                                            </span></div>
                                            <div class="col-md-6 mt-0">
                                            <label class="label">AnnualIncome: </label><span class="labelcont">${value.Annual_Income}
                                            </span></div>
                                            <div class="col-md-6 mt-0">
                                            <label class="label">Location: </label><span class="labelcont">${value.location}
                                            </span></div>

                                            </div>

                                            </div>

                                                    
                                                     
                                                     
                                                
                                        </div>
                                    </div> `
                                );
                            })
                        }
                    } else {
                        $('#mydiv').children().remove();
                        $('#mydiv').append(
                            '<div class="w3-container"><div class="card"><h1 class="mt-5" style="text-align:center;">Data Not Available</h1></div></div>'
                            );
                    }
                },
                cache: false,
                processData: true
            });
        }

        function smoking_habbit() {
            event.preventDefault();
            fdata = [];
            if (document.getElementById('smoking_yes').checked) {
                var smoking_yes = document.getElementById("smoking_yes").value
                fdata.push(smoking_yes);
            } else {
                var smoking_yes = 0;
                fdata.push(smoking_yes);
            }
            if (document.getElementById('smoking_no').checked) {
                var smoking_no = document.getElementById("smoking_no").value
                fdata.push(smoking_no);
            }
            $.ajax({
                "url": "{{ route('smoking_habbit') }}",
                data: {
                    "_token": "{{ csrf_token() }}",
                    "fdata": fdata
                },
                type: 'POST',
                dataType: 'JSON',
                success: function(val) {
                    if (val.status == 'success') {
                        $('#mydiv').html('');

                        if (val.data != null) {
                            mydata = val.data
                            $.each(mydata, function(key, value) {
                                var dataa='1649240552.images (1).png'
                               var result =  value.image ? value.image : dataa;
                                console.log(value);
                                $('#mydiv').append(
                                    `<div class="w3-container">
                                        <div class="card">
                                            <div class="row">
                                                <div class="col-xm-6">
                                                    
                                                    <img src="{{ asset('public/uploads/user-profile/' . '${result}') }}" width="150" height="150" class="img-circle elevation-2">
                                                        
                                                </div>
                                            
                                                <div class="col-9 ml-3">
                                                    <div class="card-header text-capitalize" style="width:45rem;">
                                                       ${value.first_name}
                                                        ${value.last_name}
                                                        
                                                    </div>

                                            <div class="card-body">

                                            <div class="row">
                                            <div class="col-md-6 mt-0">
                                            <label class="label">Cast: </label><span class="labelcont">${value.cast}
                                            </span></div>
                                            <div class="col-md-6 mt-0">
                                            <label class="label">Religion: </label><span class="labelcont">${value.religion}
                                            </span></div>
                                            <div class="col-md-6 mt-0">
                                            <label class="label">Height: </label><span class="labelcont">${value.userheight}
                                            </span></div>
                                            <div class="col-md-6 mt-0">
                                            <label class="label">MotherTongue: </label><span class="labelcont">${value.mother_tongue}
                                            </span></div>
                                            <div class="col-md-6 mt-0">
                                            <label class="label">Merital Status:</label><span class="labelcont">${value.marital_status}
                                            </span></div>
                                            <div class="col-md-6 mt-0">
                                            <label class="label">AnnualIncome: </label><span class="labelcont">${value.Annual_Income}
                                            </span></div>
                                            <div class="col-md-6 mt-0">
                                            <label class="label">Location: </label><span class="labelcont">${value.location}
                                            </span></div>

                                            </div>

                                            </div>

                                                    
                                                     
                                                     
                                                
                                        </div>
                                    </div> `
                                );
                            })
                        }
                    } else {
                        $('#mydiv').children().remove();
                        $('#mydiv').append(
                            '<div class="w3-container"><div class="card"><h1 class="mt-5" style="text-align:center;">Data Not Available</h1></div></div>'
                            );
                    }
                },
                cache: false,
                processData: true
            });
        }

        function drinking_habbit() {
            event.preventDefault();
            fdata = [];
            if (document.getElementById('drinking_yes').checked) {
                var drinking_yes = document.getElementById("drinking_yes").value
                fdata.push(drinking_yes);
            } else {
                var drinking_yes = 0;
                fdata.push(drinking_yes);
            }
            if (document.getElementById('drinking_no').checked) {
                var drinking_no = document.getElementById("drinking_no").value
                fdata.push(drinking_no);
            }
            $.ajax({
                "url": "{{ route('drinking_habbit') }}",
                data: {
                    "_token": "{{ csrf_token() }}",
                    "fdata": fdata
                },
                type: 'POST',
                dataType: 'JSON',
                success: function(val) {
                    if (val.status == 'success') {
                        $('#mydiv').html('');

                        if (val.data != null) {
                            mydata = val.data
                            $.each(mydata, function(key, value) {
                                var dataa='1649240552.images (1).png'
                               var result =  value.image ? value.image : dataa;
                                console.log(value);
                                $('#mydiv').append(
                                    `<div class="w3-container">
                                        <div class="card">
                                            <div class="row">
                                                <div class="col-xm-6">
                                                    
                                                    <img src="{{ asset('public/uploads/user-profile/' . '${result}') }}" width="150" height="150" class="img-circle elevation-2">
                                                        
                                                </div>
                                            
                                                <div class="col-9 ml-3">
                                                    <div class="card-header text-capitalize" style="width:45rem;">
                                                       ${value.first_name}
                                                        ${value.last_name}
                                                        
                                                    </div>

                                            <div class="card-body">

                                            <div class="row">
                                            <div class="col-md-6 mt-0">
                                            <label class="label">Cast: </label><span class="labelcont">${value.cast}
                                            </span></div>
                                            <div class="col-md-6 mt-0">
                                            <label class="label">Religion: </label><span class="labelcont">${value.religion}
                                            </span></div>
                                            <div class="col-md-6 mt-0">
                                            <label class="label">Height: </label><span class="labelcont">${value.userheight}
                                            </span></div>
                                            <div class="col-md-6 mt-0">
                                            <label class="label">MotherTongue: </label><span class="labelcont">${value.mother_tongue}
                                            </span></div>
                                            <div class="col-md-6 mt-0">
                                            <label class="label">Merital Status:</label><span class="labelcont">${value.marital_status}
                                            </span></div>
                                            <div class="col-md-6 mt-0">
                                            <label class="label">AnnualIncome: </label><span class="labelcont">${value.Annual_Income}
                                            </span></div>
                                            <div class="col-md-6 mt-0">
                                            <label class="label">Location: </label><span class="labelcont">${value.location}
                                            </span></div>

                                            </div>

                                            </div>

                                                    
                                                     
                                                     
                                                
                                        </div>
                                    </div> `
                                );
                            })
                        }
                    } else {
                        $('#mydiv').children().remove();
                        $('#mydiv').append(
                            '<div class="w3-container"><div class="card"><h1 class="mt-5" style="text-align:center;">Data Not Available</h1></div></div>'
                            );
                    }
                },
                cache: false,
                processData: true
            });
        }

        function challenged() {
            event.preventDefault();
            fdata = [];
            var challenged_yes = $('#challenged_yes').is(':checked');
            var challenged_no = $('#challenged_no').is(':checked');
            console.log(challenged_yes);
            console.log(challenged_no);

            if (challenged_yes == true) {
                $('#challenged_no').prop('checked', false);
                var challenged_yes = document.getElementById("challenged_yes").value
                fdata.push(challenged_yes);
            } else if (challenged_no == true) {
                $('#challenged_yes').prop('checked', false);
                var challenged_no = document.getElementById("challenged_no").value
                fdata.push(challenged_no);
            } else {
                var challenged_yes = 0;
                fdata.push(challenged_yes);
            }

            $.ajax({
                "url": "{{ route('challenged') }}",
                data: {
                    "_token": "{{ csrf_token() }}",
                    "fdata": fdata
                },
                type: 'POST',
                dataType: 'JSON',
                success: function(val) {
                    $('#mydiv').html('');

                    if (val.status == 'success') {
                        if (val.data != null) {
                            mydata = val.data
                            $.each(mydata, function(key, value) {
                                var dataa='1649240552.images (1).png'
                               var result =  value.image ? value.image : dataa;
                                console.log(value);
                                $('#mydiv').append(
                                    `<div class="w3-container">
                                        <div class="card">
                                            <div class="row">
                                                <div class="col-xm-6">
                                                    
                                                    <img src="{{ asset('public/uploads/user-profile/' . '${result}') }}" width="150" height="150" class="img-circle elevation-2">
                                                        
                                                </div>
                                            
                                                <div class="col-9 ml-3">
                                                    <div class="card-header text-capitalize" style="width:45rem;">
                                                       ${value.first_name}
                                                        ${value.last_name}
                                                        
                                                    </div>

                                            <div class="card-body">

                                            <div class="row">
                                            <div class="col-md-6 mt-0">
                                            <label class="label">Cast: </label><span class="labelcont">${value.cast}
                                            </span></div>
                                            <div class="col-md-6 mt-0">
                                            <label class="label">Religion: </label><span class="labelcont">${value.religion}
                                            </span></div>
                                            <div class="col-md-6 mt-0">
                                            <label class="label">Height: </label><span class="labelcont">${value.userheight}
                                            </span></div>
                                            <div class="col-md-6 mt-0">
                                            <label class="label">MotherTongue: </label><span class="labelcont">${value.mother_tongue}
                                            </span></div>
                                            <div class="col-md-6 mt-0">
                                            <label class="label">Merital Status:</label><span class="labelcont">${value.marital_status}
                                            </span></div>
                                            <div class="col-md-6 mt-0">
                                            <label class="label">AnnualIncome: </label><span class="labelcont">${value.Annual_Income}
                                            </span></div>
                                            <div class="col-md-6 mt-0">
                                            <label class="label">Location: </label><span class="labelcont">${value.location}
                                            </span></div>

                                            </div>

                                            </div>

                                                    
                                                     
                                                     
                                                
                                        </div>
                                    </div> `
                                );
                            })
                        }
                    } else {
                        $('#mydiv').children().remove();
                        $('#mydiv').append(
                            '<div class="w3-container"><div class="card"><h1 class="mt-5" style="text-align:center;">Data Not Available</h1></div></div>'
                            );
                    }
                },
                cache: false,
                processData: true
            });
        }
    </script>
@endsection
