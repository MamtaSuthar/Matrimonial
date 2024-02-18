<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use DB;
use Auth;
use Session;
class DashboardController extends Controller
{
	
    public function index(){
		
		$type = 'Cricket';
		
		#User subadmin Permissions - date: 27 dec

			$permissions_string = Auth::user()->permissions;
			$permissions_array = explode(',', $permissions_string);
			
		#end subadmin Permissions work


	    if(!empty($type)){
			// $users = DB::table('registerusers')->where('user_status','0')->join('user_verify','user_verify.userid','=','registerusers.id')->leftjoin('special_refer','special_refer.id','=','registerusers.special_refer')->select('user_verify.mobile_verify as mobile_verify','user_verify.email_verify as email_verify','user_verify.pan_verify as pan_verify','user_verify.bank_verify as bank_verify','user_verify.userid as userid','registerusers.*','registerusers.id as rid')->count();
			
			// $pan =DB::connection('mysql')->table('pancard')->where('status','=',0)->where('user_verify.email_verify','1')->where('user_verify.mobile_verify','1')->join('user_verify','user_verify.userid','=','pancard.userid')->count();
			
			// $panapproved =DB::connection('mysql')->table('pancard')->where('status','=',1)->where('user_verify.email_verify','1')->where('user_verify.mobile_verify','1')->join('user_verify','user_verify.userid','=','pancard.userid')->count();
			// $pendingpanuser =DB::connection('mysql')->table('user_verify')->where('user_verify.pan_verify','-1')->join('registerusers','user_verify.userid','=','registerusers.id')->count();
			
			// $bank =DB::connection('mysql')->table('bank')->where('status','=',0)->join('user_verify','user_verify.userid','=','bank.userid')->where('user_verify.pan_verify','1')->where('user_verify.mobile_verify','1')->where('user_verify.email_verify','1')->count();
			// $bankapproved =DB::connection('mysql')->table('bank')->where('status','=',1)->join('user_verify','user_verify.userid','=','bank.userid')->where('user_verify.pan_verify','1')->where('user_verify.mobile_verify','1')->where('user_verify.email_verify','1')->count();
			// $pendingbankuser =DB::connection('mysql')->table('user_verify')->where('user_verify.bank_verify','-1')->join('registerusers','user_verify.userid','=','registerusers.id')->count();

			// $withdraw = DB::table('withdraw')->join('registerusers','registerusers.id','=','withdraw.user_id')->join('bank','bank.userid','=','registerusers.id')->join('pancard','pancard.userid','=','registerusers.id')->select('registerusers.id as reg_id','bank.id as bank_id','pancard.id as pan_id','withdraw.*','withdraw.id as withdraw_id','withdraw.status as withdraw_status','withdraw.amount as withdraw_amount','withdraw.created_at as withdraw_request','registerusers.activation_status as reg_status','bank.status as bank_status','pancard.status as pan_status','registerusers.username as username','bank.ifsc as ifsc','bank.bankname as bankname','bank.bankbranch as bankbranch','bank.accno as ano','registerusers.email as email','registerusers.mobile as mobile','registerusers.id as rid','registerusers.email','registerusers.mobile')->where('withdraw.status','=',0)->count();

			// $withdrawapprove = DB::connection('mysql')->table('withdraw')->where('status','=',1)->count();
			// $totalwithdraw =DB::connection('mysql')->table('withdraw')->where('status','=',1)->select('amount')->sum('amount');
			
			// # active users
			// $active_users = DB::connection('mysql')
			//                    ->table('transactions')
			//                    ->where("type", 'cash added')
			//                    ->orWhere("type", 'Contest Joining Fee')
			//                    ->groupBy('userid')
			//                    ->select('userid')
			//                    ->get()->count();
			// # active users
			
			// if($type == 'Cricket'){
			// 	$matches = DB::table('listmatches')->where('fantasy_type','Cricket')->count();
            //     $launchmatches = DB::table('listmatches')->where('fantasy_type','Cricket')->where('launch_status','=','launched')->where('status','!=','completed')->count();
            //     $completedmatches = DB::table('listmatches')->where('fantasy_type','Cricket')->where('launch_status','=','launched')->where('status','=','completed')->count();
            //     $pendingwinnerdeclare =DB::connection('mysql')->table('listmatches')->where('launch_status','=','launched')->where('status','=','completed')->where('final_status','!=','winnerdeclared')->count();
			// 	$totallivematches = DB::table('listmatches')->where('fantasy_type','Cricket')->where('status','=','started')->count();
            //     $teams = DB::table('teams')->where('fantasy_type','Cricket')->count();
            //     $players =DB::table('players')->where('fantasy_type','Cricket')->count();
            //     $leauges =DB::table('challenges')->where('fantasy_type','Cricket')->count();
			// }else{
            //     $matches = DB::table('listmatches')->where('fantasy_type','Football')->count();
            //     $launchmatches = DB::table('listmatches')->where('fantasy_type','Football')->where('launch_status','=','launched')->count();
            //     $completedmatches = DB::table('listmatches')->where('fantasy_type','Football')->where('launch_status','=','launched')->where('status','=','completed')->count();
            //     $pendingwinnerdeclare = 0;
            //     $totallivematches = DB::table('listmatches')->where('fantasy_type','Football')->where('status','=','started')->count();
            //     $teams = DB::table('teams')->where('fantasy_type','Football')->count();
            //     $players =DB::table('players')->where('fantasy_type','Football')->count();
            //     $leauges =DB::table('challenges')->where('fantasy_type','Football')->count();
			// }
			// $id = Auth::user()->id;
            // $result=  DB::connection('mysql')->table('users')->where('id',$id)->first();
			// $amt_recevied = DB::table('paymentprocess')->where('paymentprocess.status','success')->sum('amount');
			
			// $amt_withdraw =DB::connection('mysql')->table('withdraw')->where('status','=','1')->get();
			return view('home');
		} 
    }
   	
	public function total_amount_withdraw_in_week() {
		
		$data = DB::table('withdraw')
					->whereBetween('created_at', [now()->subDays(6), now()])
					->where('status', 1)
					->get()
					->groupBy(function ($val) {
						return \Carbon\Carbon::parse($val->created_at)->format('d M');
					});

		$start = now()->subDays(6);
		$today = now();

		while($start <= $today) {
			$new_data[$start->format('d M')] = 0;

			$start = $start->addDays(1);
		}
		
		foreach($data as $day => $value) {

			$new_data[$day] = $value->sum('amount');

		}

		return [array_keys($new_data), array_values($new_data)];

	}

	public function total_amount_received_in_week() {
		
		$data = DB::table('paymentprocess')
					->whereBetween('created_at', [now()->subDays(6), now()])
					->where('status', 'success')
					->get()
					->groupBy(function ($val) {
						return \Carbon\Carbon::parse($val->created_at)->format('d M');
					});

		$start = now()->subDays(6);
		$today = now();

		while($start <= $today) {
			$new_data[$start->format('d M')] = 0;

			$start = $start->addDays(1);
		}
		
		foreach($data as $day => $value) {

			$new_data[$day] = $value->sum('amount');

		}

		return [array_keys($new_data), array_values($new_data)];

	}


}
 