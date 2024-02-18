<?php
namespace App\Http\Controllers\api;
use DB;
use Session;
use bcrypt;
use Config;
use Redirect;
use App\Helpers\Helpers; 
use Hash;
use Mail;
use Cache;
use Crypt;
use Carbon\Carbon;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Requests;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Input;
use App\Http\Middleware\VerifyCsrfToken;

class SeriesApiController extends Controller{
	/* check for referal */
  	/**
     * @return json
     * @Url: /api/checkforrefer/
     * @Method: POST
     * @Parameters
     *     
     *		refercode : "text"
     *		auth_key : in header [Authorization]
     * 		
     *
     */
  	public function getallseries(Request $request){
		Helpers::timezone();
		Helpers::setHeader(200);
		$input = $request->all();
		$geturl = Helpers::geturl();
		
           		$currentdate = date('Y-m-d');
				$seriesfind = DB::table('series')->select('*')->where('status','opened')->where('end_date','>=',$currentdate)->orderBy('end_date','DESC')->get();
				   
				$Json=array();
				$i=0;
				if(count($seriesfind)>0){
				foreach($seriesfind as $series){
					$Json[$i]['id'] = $series->id;
					$Json[$i]['name'] = $series->name;
					$Json[$i]['status'] = 1;
					$Json[$i]['startdate'] = date('d M Y', strtotime($series->start_date));
					$Json[$i]['starttime'] = date('H:i a', strtotime($series->start_date));
					$Json[$i]['enddate'] = date('d M Y', strtotime($series->end_date));
					$Json[$i]['endtime'] = date('H:i a', strtotime($series->end_date));
					$Json[$i]['startdatetime'] = date('Y-m-d H:i:s', strtotime($series->start_date));
					$Json[$i]['enddatetime'] = date('Y-m-d H:i:s', strtotime($series->end_date));
					$i++;
				}
			}
			else{
			    $Json['success']=false;
			    $Json['message']='Sorry,no data available!';
			}
			return response()->json($Json);
       
	}

	public function getpointsystem(Request $request){
		Helpers::timezone();
		Helpers::setHeader(200);
		$users=Helpers::isAuthorize($request);
		$geturl = Helpers::geturl();
        $input = $request->all();

		$pointsTable = DB::table('point_system')->get();
		if(!empty($pointsTable->toArray())){
			$json = [];$i =0;$j=0;
			foreach ($pointsTable as $key => $value) {
				$value1= (array)$value;
				// dd($value1);
				# code...
				if($value->type=='Batting'){
					$json[$value->fantasy_type][$value->format][$value->type]['run'] = $value->run;
					$json[$value->fantasy_type][$value->format][$value->type]['boundary_bonus'] = $value->boundary_bonus;
					$json[$value->fantasy_type][$value->format][$value->type]['six_bonus'] = $value->six_bonus;
					$json[$value->fantasy_type][$value->format][$value->type]['half_century_bonus'] = $value->half_century_bonus;
					$json[$value->fantasy_type][$value->format][$value->type]['century_bonus'] = $value->century_bonus;
					$json[$value->fantasy_type][$value->format][$value->type]['dismissal_for_a_duck'] = $value->dismissal_for_a_duck;
				}
				if($value->type=='Bowling'){
					$json[$value->fantasy_type][$value->format][$value->type]['wicket'] = $value->wicket;
					$json[$value->fantasy_type][$value->format][$value->type]['2_wicket_haul_bonus'] = $value1['2_wicket_haul_bonus'];
					$json[$value->fantasy_type][$value->format][$value->type]['3_wicket_haul_bonus'] = $value1['3_wicket_haul_bonus'];
					$json[$value->fantasy_type][$value->format][$value->type]['4_wicket_haul_bonus'] = $value1['4_wicket_haul_bonus'];
					$json[$value->fantasy_type][$value->format][$value->type]['5_wicket_haul_bonus'] = $value1['5_wicket_haul_bonus'];
					$json[$value->fantasy_type][$value->format][$value->type]['maiden_over'] = $value->maiden_over;
				}
				if($value->type=='Fielding'){
					$json[$value->fantasy_type][$value->format][$value->type]['catch'] = $value->catch;
					$json[$value->fantasy_type][$value->format][$value->type]['stumping_run_out'] = $value->stumping_run_out;
					$json[$value->fantasy_type][$value->format][$value->type]['run_out_thrower'] = $value->run_out_thrower;
					$json[$value->fantasy_type][$value->format][$value->type]['run_out_hitter'] = $value->run_out_catcher;
				}
				if($value->type=='others'){
					$json[$value->fantasy_type][$value->format][$value->type]['captain'] = $value->captain;
					$json[$value->fantasy_type][$value->format][$value->type]['vice_captain'] = $value->vice_captain;
					$json[$value->fantasy_type][$value->format][$value->type]['in_starting_11'] = $value->in_starting_11;
				}
				
				if($value->type=='economy rate'){
					if(!isset($json['economy_rate_min_over'])){
						$json['economy_rate_min_over'] = $value->economy_rate_min_over;
						$json[$value->fantasy_type][$value->format][$value->type][$i]['economy_rate_min_over'] = $json['economy_rate_min_over'];
					}else{
						$json[$value->fantasy_type][$value->format][$value->type][$i]['economy_rate_min_over'] = $json['economy_rate_min_over'];
					}
					
					$json[$value->fantasy_type][$value->format][$value->type][$i]['below'] = $value->below;
					$json[$value->fantasy_type][$value->format][$value->type][$i]['from'] = $value->from;
					$json[$value->fantasy_type][$value->format][$value->type][$i]['to'] = $value->to;
					$json[$value->fantasy_type][$value->format][$value->type][$i]['above'] = $value->above;
					$json[$value->fantasy_type][$value->format][$value->type][$i]['point'] = $value->point;
					$i++;
				}
				if($value->type=='strike rate'){
					if(!isset($json['strike_rate_min_ball'])){
						$json['strike_rate_min_ball'] = $value->strike_rate_min_ball;
						$json[$value->fantasy_type][$value->format][$value->type][$j]['strike_rate_min_ball'] = $json['strike_rate_min_ball'];
					}else{
						$json[$value->fantasy_type][$value->format][$value->type][$j]['strike_rate_min_ball'] = $json['strike_rate_min_ball'];
					}
					$json[$value->fantasy_type][$value->format][$value->type][$j]['below'] = $value->below;
					$json[$value->fantasy_type][$value->format][$value->type][$j]['from'] = $value->from;
					$json[$value->fantasy_type][$value->format][$value->type][$j]['to'] = $value->to;
					$json[$value->fantasy_type][$value->format][$value->type][$j]['above'] = $value->above;
					$j++;
				}
				unset($json['strike_rate_min_ball'],$json['economy_rate_min_over']);
				// $json[$value->fantasy_type][$value->format][] = $value;

			}
			
			return response()->json($json);die;
		}else{
			$Json['success'] =false;
			$Json['message']='Sorry,no data available!';
			return response()->json([$json]);die;
		}
	}

	
}