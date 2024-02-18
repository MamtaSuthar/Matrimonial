@extends('main')

@section('heading')
    Register User Manager
@endsection('heading')

@section('sub-heading')
    Display User Details
@endsection('sub-heading')

@section('content')

    <html>

    <head>
        <link rel="stylesheet" href="{{ asset('public/css/from.css') }}">
    </head>

    <body>
        <div class="card">
            @include('alert_msg')

            <div class="card mb-4">
                <div class="card-header  mb-3">
                    <div class="row w-100 align-items-center mx-0">
                        <div class="col-md col-12 mb-md-0 mb-2 text-md-left text-center">View All Users</div>
                        <div class="col-md-auto col-12 px-md-3 px-0 text-center">

                        </div>
                    </div>
                </div>

                <div class="col-sm-12" >
                    @include('alert_msg')
                    <div class="datatable table-responsive">
                        <table class="table table-bordered table-hover last-btn-center text-nowrap" 
                            id="view_player_datatable11" width="100%" cellspacing="0">
                            <thead >
                                <tr>
                                    <th>Sno.</th>
                                    <th>Image</th>
                                    <th>Name</th>
                                    <th>Email</th>
                                    <th>Age</th>
                                    <th>Marital Status</th>
                                    <th>Height</th>
                                    <th>Religion</th>
                                    <th>Location</th>
                                    <th>Cast</th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                @if (!empty($data))

                                    @forelse($data as $notifi)

                                        <tr>
                                            <td>{{ $loop->iteration }}</td>
                                            <td> @if(!empty($notifi['image']))<img src="{{ asset('public/uploads/user-profile/' . $notifi['image']) }}" width="80" class="img-circle elevation-2" />
                                                    @else
                                                    <img src="{{ asset('public/designer.jpeg') }}" width="80" class="img-circle elevation-2" />
                                                    @endif</td>
                                            <td>{{ (!empty($notifi['first_name']).ucfirst($notifi['last_name']))?ucfirst($notifi['first_name']).ucfirst($notifi['last_name']):""}}</td>
                                            <td >{{ (!empty($notifi['email']))?$notifi['email']:"" }}</td>
                                            <td >{{ (!empty($notifi['age']))?$notifi['age']:"" }}</td>
                                            <td>{{ (!empty($notifi['marital_status']))?$notifi['marital_status']:"" }}</td>
                                            <td>{{ (!empty($notifi['userheight']))?$notifi['userheight']:"" }}</td>
                                            <td>{{ (!empty($notifi['religion']))?$notifi['religion']:"" }}</td>
                                            <td>{{ (!empty($notifi['location']))?$notifi['location']:"" }}</td>
                                            <td>{{ (!empty($notifi['cast']))?$notifi['cast']:"" }}</td>
                                            <td>
                                                <div class="btn-group">
                                                    <button type="button" class="btn-sm btn-warning dropdown-toggle"
                                                        data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                        Action
                                                    </button>
                                                    <div class="dropdown-menu">
                                                        <a class="dropdown-item"
                                                            href="{{ route('register.edit', $notifi['id']) }}">Edit</a>
                                                        <form method="POST" id="register{{ $notifi['id'] }}"
                                                            action="{{ route('register.destroy', $notifi['id']) }}">
                                                            @csrf
                                                            @method('DELETE')
                                                        </form>
                                                        <a class="dropdown-item" data-id="{{ $notifi['id'] }}"
                                                            data-action="{{ route('register.destroy', $notifi['id']) }}"
                                                            onclick="deleteC({{ $notifi['id'] }},'{{ route('register.destroy', $notifi['id']) }}')">Delete</a>
                                                    </div>
                                                </div>
                                            </td>
                                        </tr>
                                    @empty
                                        <tr class="text-center">
                                            <td colspan="10">No Data Available now</td>
                                        </tr>
                                    @endforelse
                                @endif
                            </tbody>
                            <tfoot>
                                <th>Sno.</th>
                                <th>Image</th>
                                <th>Name</th>
                                <th>Email</th>
                                <th>Age</th>
                                <th>Marital Status</th>
                                <th>Height</th>
                                <th>Religion</th>
                                <th>Location</th>
                                <th>Cast</th>
                                <th>Action</th>
                                </tr>
                            </tfoot>
                        </table>
                    </div>
                </div>

            </div>


            <!-----sweetalert---->
            <script type="text/javascript">
                function deleteC(id, url) {
                    const swalWithBootstrapButtons = Swal.mixin({
                        customClass: {
                            confirmButton: 'btn btn-sm btn-success ml-2',
                            cancelButton: 'btn btn-sm btn-danger'
                        },

                        buttonsStyling: false
                    })

                    swalWithBootstrapButtons.fire({

                        title: 'are you confirm!',

                        text: "You won't be able to revert this!",

                        icon: 'success',

                        showCancelButton: true,

                        confirmButtonText: 'Yes',

                        cancelButtonText: 'No',

                        reverseButtons: true

                    }).then((result) => {

                        if (result.isConfirmed) {
                            $('#register' + id).submit();

                        } else if (

                            result.dismiss === Swal.DismissReason.cancel

                        ) {

                            return false;

                        }

                    })
                }
            </script>
            <script>
    $(function () {
        $('#view_player_datatable11').DataTable({
            "paging": true,
            "lengthChange": true,
            "searching": true,
            "ordering": true,
            "info": true,
            "autoWidth": true,
            "responsive": true,
        });
    });
</script>
        @endsection('content')