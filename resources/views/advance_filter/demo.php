@extends('main')
<title>@yield('pageTitle','Filter')</title> 
@section('content')

  
<style>
.range-slider {
	width: 100%;
	position: relative;
	height: 40px;
	display: flex;
	justify-content: space-between;
	align-items: center;
	padding: 10px 4px;
	margin-top: 20px;
}
.range-slider span{
    display: flex;
    justify-content: space-between;
    align-items: center;
    margin-bottom: 11px;
    width: 100%;
}
.range-slider svg,
.range-slider input[type=range] {
	position: absolute;
	left: 0;
	bottom: 0;
}

.range-slider input[type=number] {
	border: none;
	text-align: center;
	font-size: 14px;
	-moz-appearance: textfield;
	font-weight: 600;
}

.range-slider input[type=number]::-webkit-outer-spin-button,
.range-slider input[type=number]::-webkit-inner-spin-button {
	-webkit-appearance: none;
}

.range-slider input[type=number]:invalid,
.range-slider input[type=number]:out-of-range {
	border: 2px solid #ff6347;
}

.range-slider input[type=range] {
	-webkit-appearance: none;
	width: 100%;
}

.range-slider input[type=range]:focus {
	outline: none;
}

.range-slider input[type=range]:focus::-webkit-slider-runnable-track {
	background: #2497e3;
}

.range-slider input[type=range]:focus::-ms-fill-lower {
	background: #2497e3;
}

.range-slider input[type=range]:focus::-ms-fill-upper {
	background: #2497e3;
}

.range-slider input[type=range]::-webkit-slider-runnable-track {
	width: 100%;
	height: 5px;
	cursor: pointer;
	animate: 0.2s;
	background: #2497e3;
	border-radius: 1px;
	box-shadow: none;
	border: 0;
}

.range-slider input[type=range]::-webkit-slider-thumb {
	z-index: 2;
	position: relative;
	box-shadow: 0px 0px 0px #000;
	border: 1px solid #2497e3;
	height: 18px;
	width: 18px;
	border-radius: 25px;
	background: #a1d0ff;
	cursor: pointer;
	-webkit-appearance: none;
	margin-top: -7px;
}

.range-slider input[type=range]::-moz-range-track {
	width: 100%;
	height: 5px;
	cursor: pointer;
	animate: 0.2s;
	background: #2497e3;
	border-radius: 1px;
	box-shadow: none;
	border: 0;
}

.range-slider input[type=range]::-moz-range-thumb {
	z-index: 2;
	position: relative;
	box-shadow: 0px 0px 0px #000;
	border: 1px solid #2497e3;
	height: 18px;
	width: 18px;
	border-radius: 25px;
	background: #a1d0ff;
	cursor: pointer;
}

.range-slider input[type=range]::-ms-track {
	width: 100%;
	height: 5px;
	cursor: pointer;
	animate: 0.2s;
	background: transparent;
	border-color: transparent;
	color: transparent;
}

.range-slider input[type=range]::-ms-fill-lower,
input[type=range]::-ms-fill-upper {
	background: #2497e3;
	border-radius: 1px;
	box-shadow: none;
	border: 0;
}

.range-slider input[type=range]::-ms-thumb {
	z-index: 2;
	position: relative;
	box-shadow: 0px 0px 0px #000;
	border: 1px solid #2497e3;
	height: 18px;
	width: 18px;
	border-radius: 25px;
	background: #a1d0ff;
	cursor: pointer;
}
</style>
<main class="main-scrollbar">
<input type="hidden" id="catid" value="" >
<div class="container">
    <div class="row ">
        <div class="col-3">
            <section class="card mt-10 category container-fluid">
                <div class="col-12 category-left pe-3 mb-4 border-bottom border-1">
                    <div class="row border-end border-2 position-sticky left-position top-140px">
                        <form method="post" id="form1" action="">
                            @csrf
                            <div class="col-md-12 col-12">
                                <span class="fs-md-15 fs-14 fw-bold  border-bottom border-3 border-theme2">Age</span>
                                <div class="range-slider">
                                <span>
                                    <input type="number" value="18" min="0" max="45"/>
                                    <input type="number" value="45" min="0" max="45"/>
                                </span>
                                <input value="18" min="0" max="45" id="price_min" step="1" type="range"/>
                                <input value="40" min="0" max="45" id="price_max" step="1" type="range"/>
                            </div>
                            <div class="col-3 pt-3 wishlist-btn">
                                <button type="submit" class="btn btn-theme2 rounded-6 py-2 text-black fs-14 ">Submit</button>
                            </div>
                        </form>
                    </div>
                </div>
            </section>
        </div>
        <div class="col-8">
          
        </div>
        </div>
    </div>
</main>

 <script>
    // range slider drag
   (function() {

  var parent = document.querySelector(".range-slider");
  if(!parent) return;

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

    $('#form1').on('submit',function(){
        event.preventDefault();
        fdata =[];
        var start = document.getElementById("price_min").value
        alert(start);
        console.log(start);
        var end = document.getElementById("price_max").value
        console.log(end);

        fdata.push(start);
        fdata.push( end);
        console.log(fdata);
        $.ajax({
            "url": "{{ route('filter.store')}}",
            data: {
                "_token": "{{ csrf_token() }}",
                "fdata":  fdata  
            },
            type: 'POST',
            success: function (val) {
                if(val.status=='success'){
                    if(val.data != null){
                        mydata = val.data
                    }
                    $('#mydiv').children().remove();
                    $('#mydiv').html(mydata);
                }
                else{
                    $('#mydiv').children().remove();
                    $('#mydiv').append('<h1>Data Not Available</h1>');
                }
            },
            cache : false,
            processData: true
        });  
    })


</script>

@endsection('content')