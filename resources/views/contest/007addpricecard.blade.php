@extends('main')

@section('heading')
    Contest Manager
@endsection('heading')

@section('sub-heading')
    Contest Price Card
@endsection('sub-heading')

@section('card-heading-btn')
    <a href="<?php echo action('ContestController@global_index'); ?>"
        class="btn btn-sm btn-light font-weight-bold text-uppercase text-primary" data-toggle="tooltip"
        title="View All Global Contest"><i class="fas fa-eye"></i>&nbsp; View</a>
@endsection('card-heading-btn')

@section('content')

    <div class="card">
        <div class="card-body">
            <div class="sbp-preview">
                <div class="sbp-preview-content">
                    <div class="row">
                        <div class="col-md mr-md-5">
                            <div class="row py-2 border-bottom">
                                <div class="col-md font-weight-bold fs-md-15 fs-14">Winning Amount :-</div>
                                <div class="col-md-auto font-weight-bold fs-md-15 fs-14">{{ ucwords($findchallenge1->win_amount) }}</div>
                            </div>
                            <div class="row py-2 border-bottom">
                                <div class="col-md font-weight-bold fs-md-15 fs-14">Entry Fees :-</div>
                                <div class="col-md-auto font-weight-bold fs-md-15 fs-14">{{ ucwords($findchallenge1->entryfee) }}</div>
                            </div>
                            <div class="row py-2 border-bottom">
                                <div class="col-md font-weight-bold fs-md-15 fs-14">Maximum Users :-</div>
                                <div class="col-md-auto font-weight-bold fs-md-15 fs-14">{{ ucwords($findchallenge1->maximum_user) }}</div>
                            </div>
                            <div class="row py-2 border-bottom">
                                <div class="col-md font-weight-bold fs-md-15 fs-14">Multiple Entry :-</div>
                                <div class="col-md-auto font-weight-bold fs-md-15 fs-14"> @if ($findchallenge1->multi_entry == 1) <span class="font-weight-bold text-success">Yes</span> @else <span class="font-weight-bold text-danger">No</span> @endif </div>
                            </div>
                            <div class="row py-2 border-bottom">
                                <div class="col-md font-weight-bold fs-md-15 fs-14">Is Running :-</div>
                                <div class="col-md-auto font-weight-bold fs-md-15 fs-14"> @if ($findchallenge1->is_running == 1) <span class="font-weight-bold text-success">Yes</span> @else <span class="font-weight-bold text-danger">No</span> @endif </div>
                            </div>
                        </div>
                        <div class="col-md ml-md-5">
                            <div class="row py-2 border-bottom">
                                <div class="col-md font-weight-bold fs-md-15 fs-14">Confirm Contest :-</div>
                                <div class="col-md-auto font-weight-bold fs-md-15 fs-14"> @if ($findchallenge1->confirmed_challenge == 1) <span class="font-weight-bold text-success">Yes</span> @else <span class="font-weight-bold text-danger">No</span> @endif </div>
                            </div>
                            <div class="row py-2 border-bottom">
                                <div class="col-md font-weight-bold fs-md-15 fs-14">Is Bonus Allowed :-</div>
                                <div class="col-md-auto font-weight-bold fs-md-15 fs-14"> @if ($findchallenge1->is_bonus == 1) <span class="font-weight-bold text-success">Yes</span> @else <span class="font-weight-bold text-danger">No</span> @endif </div>
                            </div>
                            <div class="row py-2 border-bottom">
                                <div class="col-md font-weight-bold fs-md-15 fs-14">Contest Category :-</div>
                                <div class="col-md-auto font-weight-bold fs-md-15 fs-14"> @if (!empty($cat)) {{ $cat->name }} @endif </div>
                            </div>
                            @if ($findchallenge1->is_bonus == 1)
                            <div class="row py-2 border-bottom">
                                <div class="col-md font-weight-bold fs-md-15 fs-14">Bonus Percentage :-</div>
                                <div class="col-md-auto font-weight-bold fs-md-15 fs-14"> {{ $findchallenge1->bonus_percentage }}% </div>
                            </div>
                            @endif
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <div class="card my-3">
        <div class="card-header">
            Add Price Cards
        </div>
        <div class="card-body">
            <div class="sbp-preview">
                <div class="sbp-preview-content">
                    @php
                        $getid = $findchallenge1->id;
                    @endphp

                    {{ Form::open(['action' => ['ContestController@addpricecard', base64_encode(serialize($getid))], 'method' => 'post', 'enctype' => 'multipart/form-data']) }}

                    {{ csrf_field() }}


                    @include('alert_msg')

                    <div class="row">
                      <div class="col-md-4">
                          <div class="form-group">
                              {{ Form::label('Start Position*', 'Start Position*', ['class' => 'label-control']) }}
                              {{ Form::text('min_position', $min_position, ['value' => '$min_position', 'required' => '', 'placeholder' => 'Enter starting position', 'readonly' => '', 'min' => '0', 'class' => 'form-control form-control-solid']) }}
                          </div>
                      </div>

                      <div class="col-md-4">
                          <div class="form-group">
                              {{ Form::label('Number Of Winners*', 'Number Of Winners*', ['class' => 'label-control text-bold']) }}
                              {{ Form::text('winners', null, ['value' => '$min_position', 'required' => '', 'placeholder' => 'Enter number of winner', 'min' => '1', 'class' => 'form-control form-control-solid', 'autocomplete' => 'off', 'onkeypress' => 'return isNumberKey(event)']) }}
                          </div>
                      </div>

                      @if ($findchallenge1->pricecard_type == 'Amount')
                      <div class="col-md-4">
                          <div class="form-group">
                              {{ Form::label('Price Amount In Rupees*', 'Price Amount In Rupees*', ['class' => 'label-control text-bold']) }}
                              {{ Form::text('price', null, ['value' => '', 'required' => '', 'placeholder' => 'Price Amount In Rupees', 'min' => '1', 'autocomplete' => 'off', 'class' => 'form-control form-control-solid', 'onkeypress' => 'return isNumberKey(event)']) }}
                          </div>
                      </div>
                      @else
                        <div class="col-md-4">
                          <div class="form-group">
                              {{ Form::label('Price Amount In Percentage*', 'Price Amount In Percentage*', ['class' => 'label-control text-bold']) }}

                              {{ Form::text('price_percent', null, ['value' => '', 'required' => '', 'placeholder' => 'Price Amount In Percentage ', 'min' => '1', 'autocomplete' => 'off', 'class' => 'form-control form-control-solid', 'onkeypress' => 'return isNumberKey(event)']) }}
                          </div>
                        </div>
                      @endif

                    </div>
                    
                        <div class="row justify-content-end">
                            <div class="col-md-auto">
                                
                                <button type="submit" class=" btn btn-sm btn-success ml-1"><i class="far fa-check-circle"></i>
                                    &nbsp; Submit
                                </button>
                                <button type="reset" class="btn btn-sm btn-warning" onclick="window.location.href=window.location.href"><i class="far fa-undo"></i>&nbsp;Reset
                                </button>
                            </div>
                        </div>
                                
                        {!! Form::close() !!}
                </div>
            </div>

        </div>
    </div>
    

    <div class="card mb-3">
        <div class="card-header">
            Contest Price Cards
        </div>
        <div class="card-body">
            <div class="datatable table-responsive">
                <table class="table table-bordered table-striped table-hover dataTable text-nowrap" id="dataTable" width="100%" cellspacing="0">
                    <thead>
                        <tr>
                            <th>S No.</th>
                            <th>Price Card Type</th>
                            <th>Min Position</th>
                            <th>Max Position</th>
                            <th>Winning Users</th>
                            <th>Each Winner {{$findchallenge1->pricecard_type}} </th>
                            <th>Total Amount</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                        $per = 0;
                        $tper = 0;
                        $tamt = 0;
                        $twin = 0;
                        $totalper = 0;
                        if (!empty($findallpricecards)) {

                            $snoo = 0;
                            $countpricecards = count($findallpricecards);
                            ?>
                            @foreach ($findallpricecards as $pricecars)
                            <?php
                            $snoo++;
                            ?>
                            <tr role="row" class="odd">
                                <td>{{ $snoo }}</td>
                                @if ($pricecars->price == null)
                                <td>{{ 'Percentage' }}</td>
                                @else
                                <td>{{ 'Amount' }}</td>
                                @endif
                                <td>{{ $pricecars->min_position }}</td>
                                <td>{{ $pricecars->max_position }}</td>
                                <td>{{ $pricecars->winners }}</td>
                                @if ($pricecars->price_percent != null)
                                <td>{{ $pricecars->price_percent }}</td>
                                <td>{{ $pricecars->total }}rs({{
                                    $pricecars->price_percent * $pricecars->winners }}%)</td>
                                @endif
                                @if ($pricecars->price != null)
                                <td>{{ $pricecars->price }}</td>
                                <td>{{ $pricecars->total }}</td>
                                @endif
                                @if ($pricecars->price == null || $pricecars->price_percent == null)
                                @endif

                                @php
                                $wamt = $findchallenge1->win_amount;
                                $ttt = $pricecars->total;
                                @endphp
                                
                                @if ($wamt != 0)
                                <?php
                                    $totalper = ($ttt / $wamt) * 100;
                                ?>
                                @endif
                                
                                @php
                                $tper = $tper + $totalper;
                                $tamt = $tamt + $ttt;
                                $twin = $twin + $pricecars->winners;
                                @endphp
                                

                                @if ($snoo == $countpricecards)
                                <td><a class="btn btn-sm btn-danger w-35px h-35px" onclick="delete_confirmation('{{ action("ContestController@deletepricecard", base64_encode(serialize($pricecars->id))) }}')" data-toggle="tooltip" title="Delete"> <i class="far fa-trash"></i></a></td>
                                @else
                                <td></td>
                                @endif
                            </tr>

                            @endforeach
                        <?php
                        }
                        ?>
                    </tbody>
                    <tfoot>
                        <tr>
                            <td></td>
                            <td></td>
                            <td></td>
                            <?php ?>
                            <td></td>
                            <td>Total-<?php echo $twin; ?></td>
                            <td></td>
                            <td>Total-<?php echo $tamt; ?></td>
                            <td></td>
                        </tr>
                        <tr>
                            <th>S No.</th>
                            <th>Price Card Type</th>
                            <th>Min Position</th>
                            <th>Max Position</th>
                            <th>Winning Users</th>
                            <th>Each Winner {{$findchallenge1->pricecard_type}} </th>
                            <th>Total Amount</th>
                            <th>Action</th>
                        </tr>
                    
                    </tfoot>
                </table>
            </div>
        </div>
    </div>
    
<script>
function delete_confirmation(url) {
  // sweet alert
    const swalWithBootstrapButtons = Swal.mixin({
    customClass: {
        confirmButton: 'btn btn-sm btn-success ml-2',
        cancelButton: 'btn btn-sm btn-danger'
    },
    buttonsStyling: false
    })

    swalWithBootstrapButtons.fire({
    title: 'Are you sure?',
    text: "You won't be able to revert this!",
    icon: 'success',
    showCancelButton: true,
    confirmButtonText: 'Yes, delete it!',
    cancelButtonText: 'No, cancel!',
    reverseButtons: true
    }).then((result) => {
    if (result.isConfirmed) {

      swalWithBootstrapButtons.fire(
                'Deleted!',
                'Price card deleted successfully.',
                'success'
                );

      window.location.href = url;

        
    } else if (
        /* Read more about handling dismissals below */
        result.dismiss === Swal.DismissReason.cancel
    ) {
        swalWithBootstrapButtons.fire(
        'Cancelled',
        'Cancelled successfully :)',
        'error'
        );
        return false;
    }
  })
}
</script>
@endsection('content')
