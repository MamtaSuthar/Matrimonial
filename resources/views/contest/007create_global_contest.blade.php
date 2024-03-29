@extends('main')

@section('heading')
    Contest Manager
@endsection('heading')

@section('sub-heading')
    Add global contest
@endsection('sub-heading')

@section('card-heading-btn')
<a  href="<?php echo action('ContestController@global_index') ?>" class="btn btn-sm btn-light font-weight-bold text-uppercase text-primary text-uppercase"><i class="fad fa-eye"></i>&nbsp; View All Global Contests</a>
@endsection('card-heading-btn')

@section('content')

@include('alert_msg')

<div class="card">
    <div class="card-header">Global Contest</div>
    	{{ Form::open(array('action' => 'ContestController@create_global', 'method' => 'post','id' => 'j-forms','class'=>'card-body', 'enctype'=>'multipart/form-data' ))}}
    	{{csrf_field()}}

        <div class="sbp-preview">
            <div class="sbp-preview-content py-2">
                <div class="row mx-0">

                    <div class="col-md-6">
                        <div class="form-group my-3">
                          <label class="label-control text-bold fs-13">Contest Amount Type*</label><br>
                            <div class="custom-control custom-radio custom-control-inline">
                              <input type="radio" id="customRadio1" name="contest_type" checked="" value="Amount" checked class="custom-control-input">
                              <label class="custom-control-label" for="customRadio1">Amount Based</label>
                            </div>
                            <div class="custom-control custom-radio custom-control-inline">
                              <input type="radio" name="contest_type" value="Percentage" id="customRadio2" class="custom-control-input" value="specific">
                              <label class="custom-control-label" for="customRadio2">Percentage based</label>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group my-3 fs-13" id="pricecard_contest">
                            <label class="label-control text-bold">Contest Price Card Type*</label><br>
                             <div class="custom-control custom-radio custom-control-inline">
                                <input type="radio" name="pricecard_type" checked="" value="Amount" id="customRadio11" checked class="custom-control-input">
                                <label class="custom-control-label" for="customRadio11">Amount Based</label>
                            </div>
                            <div class="custom-control custom-radio custom-control-inline">
                                <input type="radio" name="pricecard_type" value="Percentage" id="customRadio12" class="custom-control-input" value="specific">
                                <label class="custom-control-label" for="customRadio12">Percentage based</label>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="form-group my-3">
                           <label class="label-control text-bold">Contest Category*</label>
                            <select name="contest_cat" class="form-control form-control-solid p-1 selectpicker show-tick" required="" id="contest_cat">
                            <option value="">Select Contest Category</option>
                            @foreach($contest_cat as $value)
                                <option value="<?php echo $value->id; ?>"><?php echo $value->name; ?></option>
                            @endforeach
                            </select>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group my-3">
                           <label class="label-control text-bold">Entry Fee*</label>
                            <input type="number" id="first-name" min="0" class="form-control form-control-solid" placeholder="Enter Entry Fee" name="entryfee" value="" required="" autocomplete="off">
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group my-3">
                           <label class="label-control text-bold">Winning Amount*</label>
                           <input type="number" min="0" class="form-control form-control-solid" placeholder="Enter Winning Amount"  name="win_amount" required="" value="" autocomplete="off">
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="form-group my-3" id="max_user">
                           <label class="label-control text-bold">Maximum number of users*</label>
                           <input type="number"  min="0" class="form-control form-control-solid" placeholder="Enter Maximum Number Of Users"  name="maximum_user" value="" autocomplete="off" >
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="form-group my-3" id="pert" style="display:none;">
                           <label class="label-control text-bold">Percentage of users who will win (In case of percentage)*</label>
                           <input type="number" disabled="" id="ch1" class="form-control form-control-solid"  min="0" placeholder="Enter percentage of users winning this challenge"  name="winning_percentage" value="" required="" autocomplete="off">
                        </div>
                    </div>

                    <div class="col-md-3">
                        <div class="form-group my-3">
                            <div class="custom-control custom-checkbox custom-control-inline">
                               <input type="checkbox" class="custom-control-input sel_all" id="select_all" name="multi_entry" value="1">
                                <label class="custom-control-label" for="select_all">Multi Entry</label>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group my-3">
                           <div class="custom-control custom-checkbox custom-control-inline">
                               <input type="checkbox" class="custom-control-input sel_all" id="select_all1" name="confirmed_challenge" value="1">
                                <label class="custom-control-label" for="select_all1">Is Confirmed</label>
                             </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group my-3">
                           <div class="custom-control custom-checkbox custom-control-inline">
                               <input type="checkbox" class="custom-control-input sel_all" id="select_all2" name="is_running" value="1">
                                <label class="custom-control-label" for="select_all2">Is Running</label>
                             </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group my-3">
                           <div class="custom-control custom-checkbox custom-control-inline">
                               <input type="checkbox" class="custom-control-input sel_all" id="select_all3" name="is_bonus" value="1">
                                <label class="custom-control-label" for="select_all3">Is Bonus Allowed</label>
                             </div>
                        </div>
                    </div>
                    <div class="col-12 mt-3">
                        <div class="form-group d-none" id="bonuspercentage">
                          <label class="label-control text-bold">Bonus Percentage (No need to enter % here. Just enter number here)*</label>
                           <input disabled="" id="ch2" type="text" class="form-control form-control-solid"  name="bonus_percentage" value="" placeholder="Enter Bonus Percentage"required="">
                      </div>
                    </div>
                    <div class="col-12 text-right mt-md-4 mb-md-2">
	                    <button type="reset" class="btn btn-sm text-uppercase btn-warning" onclick="window.location.href=window.location.href"><i class="far fa-undo"></i>&nbsp; Reset</a>
                        <button type="submit" class=" btn btn-sm text-uppercase btn-success float-right ml-1"><i class="far fa-check-circle"></i>&nbsp; Submit</button>
	                </div>
                </div>
            </div>
        </div>
    {{ Form::open() }}
</div>
<script>
$('input[name=is_bonus]').change(function() {
  if($('input[name=is_bonus]').prop('checked')==true){
    $('input[name=bonus_percentage]').val('');
    $("input[name=bonus_percentage]").prop('disabled', false);
    $("#bonuspercentage").removeClass('d-none');
  $("#multientryteam").show();
  }
  if($('input[name=is_bonus]').prop('checked')==false){
    $("input[name=bonus_percentage]").prop('disabled', true);
    $("#bonuspercentage").addClass('d-none');
  $("#multientryteam").hide();
  }

});
$("input[name=contest_type]").change(function () {
  if ($('input[name=contest_type]:checked').val() == "Amount") {
      $('#pert').hide();
      $('#max_user').show();
      $("#ch1").prop('disabled', true);
  }
  if ($('input[name=contest_type]:checked').val() == "Percentage") {
      $('#pert').show();
      $('#max_user').hide();
      $("#ch1").prop('disabled', false);
  }
});
</script>
<script type="text/javascript">
  $("input[name=contest_type]").change(function () {
  if ($('input[name=contest_type]:checked').val() == "Amount") {
      $('#pricecard_contest').show();
      document.getElementById("pricecard_contest").style.display = "block";
  }
  if ($('input[name=contest_type]:checked').val() == "Percentage") {
      $('#pricecard_contest').hide();
      document.getElementById("pricecard_contest").style.display = "none";
  }
});


function get_contest_category(value){
    var fantasy_type = value;
    $.ajax({
    type:'POST',
    url:'<?php echo asset('my-admin/get_contest_category');?>',
    data:'_token=<?php echo csrf_token();?>&fantasy_type='+fantasy_type,
    success:function(data){
        $('#contest_cat').html('<option value="">Select Contest Category</option>');

        for(var i = 0; i < data.length; i++) {
            // alert(data[i]['id']);
            $('#contest_cat').append('<option value="'+data[i]['id']+'">'+data[i]['name']+'</option>');
        }

        // <option value="">Select Team</option>
    }
    });
}
$(window).ready(function() {
    var fantasy_type = $('#fantasy_type').val();
    get_contest_category(fantasy_type);
});
</script>
@endsection('content')
