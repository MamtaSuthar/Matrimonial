@extends('main')

@section('heading')
    Dashboard
@endsection('heading')

@section('content')

<div class="row">
    <div class="col-xl-4 col-md-4 mb-4">
        <!-- Dashboard info widget 1-->
        <div class="card border-top-0 border-bottom-0 border-right-0 border-left-lg border-primary h-100">
            <div class="card-body">
                <div class="d-flex align-items-center">
                    <div class="flex-grow-1">
                        <div class="small font-weight-bold text-capitalize text-primary mb-1">Pending pan requests</div>
                        <div class="h5"></div>
                        <div class="text-xs font-weight-bold d-inline-flex align-items-center">
                            {{-- <a href="{{ action('VerificationController@verifypan')}}" class="btn btn-primary text-uppercase btn-xs px-2">OPEN &nbsp; &nbsp; <i class="fad fa-chevron-right"></i></a> --}}
                        </div>
                    </div>
                    <div class="ml-2 fs-50 position-relative">
                        <i class="fad fa-address-card"></i>
                        <i class="fas fa-info-circle position-absolute fs-22 top-8px right-n8px rounded-pill bg-white text-primary"></i>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="col-xl-4 col-md-4 mb-4">
        <!-- Dashboard info widget 2-->
        <div class="card border-top-0 border-bottom-0 border-right-0 border-left-lg border-orange h-100">
            <div class="card-body">
                <div class="d-flex align-items-center">
                    <div class="flex-grow-1">
                        <div class="small font-weight-bold text-capitalize text-orange mb-1">Not Uploaded pan users</div>
                        <div class="h5"></div>
                        <div class="text-xs font-weight-bold text-danger d-inline-flex align-items-center">
                            <a href="" class="btn btn-orange text-uppercase btn-xs px-2">
                                approval &nbsp; &nbsp; <i class="fad fa-chevron-right"></i></a>
                        </div>
                    </div>
                    <div class="ml-2 fs-50 position-relative">
                        <i class="fad fa-address-card"></i>
                        <i class="fas fa-question-circle position-absolute fs-22 top-8px 
                        right-n8px rounded-pill bg-white text-warning"></i>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="col-xl-4 col-md-4 mb-4">
        <!-- Dashboard info widget 3-->
        <div class="card border-top-0 border-bottom-0 border-right-0 border-left-lg border-success h-100">
            <div class="card-body">
                <div class="d-flex align-items-center">
                    <div class="flex-grow-1">
                        <div class="small font-weight-bold text-capitalize text-success mb-1">Verified pan requests</div>
                        <div class="h5"></div>
                        <div class="text-xs font-weight-bold text-success d-inline-flex align-items-center">
                            {{-- <a href="{{ action('VerificationController@verifypan','status=1')}}" class="btn btn-success text-uppercase btn-xs px-2">OPEN &nbsp; &nbsp; <i class="fad fa-chevron-right"></i></a> --}}
                        </div>
                    </div>
                    <div class="ml-2 fs-50 position-relative">
                        <i class="fad fa-address-card"></i>
                        <i class="fas fa-check-circle position-absolute fs-22 top-8px right-n8px rounded-pill bg-white text-success"></i>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>



@include('alert_msg')

 
@endsection('content')
