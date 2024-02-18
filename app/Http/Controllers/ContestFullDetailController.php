<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Auth;
use DB;
use Session;
use App\Helpers\Helpers;
class ContestFullDetailController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
     public function __construct(){
        $this->middleware('auth');
    }

    public function fulldetail1(Request $request){

        $f_type = request()->get('fantasy_type');
        $f_type = !empty($f_type) ? $f_type : 'Cricket';

       date_default_timezone_set('Asia/Kolkata');
        $allchallenges = array();
        if(request()->has('matchid')){
          $matchid=request('matchid');
          if($matchid!=""){
             $allchallenges = DB::table('listmatches')
                                ->join('series', 'series.id', 'listmatches.series')
                                ->join('teams as t1','t1.id','=','listmatches.team1')
                                ->join('teams as t2','t2.id','=','listmatches.team2')
                                ->where('listmatches.series',$matchid)
                                ->where('listmatches.fantasy_type', $f_type)
                                ->orderBy('listmatches.start_date', 'desc')
                                ->select('series.name as series_name', 'listmatches.*', 't1.team as teamdata1_team', 't2.team as teamdata2_team')
                                ->paginate(10);
             
          }

        }
        $currentdate = date('Y-m-d h:i:s');
        $findalllistmatches = DB::table('series')->select('*')->where('fantasy_type',$f_type)->where('status', 'opened')->orderBY('created_at','ASC')->get();
        
        return view('contest_detail.contest_full_detail',compact('findalllistmatches','allchallenges'));
      }


    public function allcontests($matchkey){
        $getdata = DB::table('matchchallenges')->where('matchkey',$matchkey)->orderBy('joinedusers','desc')->get();
        $finddata = DB::table('matchchallenges')->where('matchkey',$matchkey)->first();

          $output1 = "";
          $output1 .='"Sno.",';
          $output1 .='"Win Amount",';
          $output1 .='"League Size",';
          $output1 .='"Entry Fee",';
          $output1 .='"Contest Type",';
          $output1 .='"League Type",';
          $output1 .='"Multi Entry",';
          $output1 .='"Is Running",';
          $output1 .='"Joined Users",';
          $output1 .="\n";

          if( !empty($getdata) ) {

            $count=1;

            foreach($getdata as $get){
              $output1 .='"'.$count.'",';
              $output1 .='"'.$get->win_amount.'",';
              $output1 .='"'.$get->maximum_user.'",';
              $output1 .='"'.$get->entryfee.'",';
              $output1 .='"'.$get->contest_type.'",';
              if($get->confirmed_challenge==1){
                $output1 .='"Confirmed League",';
              }else{
                $output1 .='"Not Confirmed",';
              }
              if($get->multi_entry==1){
                $output1 .='"Yes",';
              }else{
                $output1 .='"No",';
              }
              if($get->is_running==1){
                $output1 .='"Yes",';
              }else{
                $output1 .='"No",';
              }
              $output1 .='"'.$get->joinedusers.'",';
              $output1 .="\n";
              $count++;
            }
          }

          if( !empty($_GET['download_btn_clicked']) ) {

              $filename =  "Details-allcontest.csv";
              header('Content-type: application/csv');
              header('Content-Disposition: attachment; filename='.$filename);
              echo $output1;
              exit;
          }

        return  view('contest_detail.allcontest',compact('getdata','finddata'));
      }

      public function allusers($challengeid,$matchkey){
        //$data = DB::connection('mysql2')->table('joinedleauges')->where('challengeid',$challengeid)->get();
        return view('contest_detail.all_users',compact('challengeid','matchkey'));
      }

    public function viewjoinusers_datatable(Request $request){
        $getdata=$request->all();
        $challengeid=$getdata['challngeid'];
        $matchkeyid=$getdata['matchkey'];
        $getchafinal = DB::table('finalresults')->where('challengeid',$challengeid)->first();
      
        if(!empty($getchafinal)){
            $columns = array(
                0 => 'finalresults.rank',
                1 => 'userid',
                2 => 'registerusers.email',
                3 => 'registerusers.mobile',
                4 => 'finalresults.matchkey',
                5 => 'refercode',
                6 => 'transaction_id',
                7 => 'finalresults.id',
                8 => 'finalresults.id',
                9 => 'finalresults.created_at',
                10 => 'finalresults.points',
                11 => 'finalresults.points',
            );
        }else{
            $columns = array(
                0 => 'joinedleauges.id',
                1 => 'userid',
                2 => 'registerusers.email',
                3 => 'registerusers.mobile',
                4 => 'joinedleauges.matchkey',
                5 => 'refercode',
                6 => 'transaction_id',
                7 => 'joinedleauges.id',
                8 => 'joinedleauges.id',
                9 => 'joinedleauges.created_at',
                10 => 'joinedleauges.points',
                11 => 'joinedleauges.points',
            );
        }
        
        $limit = $request->input('length');
        $start = $request->input('start');
        $order = $columns[$request->input('order.0.column')];
        $dir = $request->input('order.0.dir');
        
        $query = DB::table('joinedleauges')->join('registerusers','registerusers.id','=','joinedleauges.userid')->join('jointeam','jointeam.id','=','joinedleauges.teamid');
        $query1 = DB::table('joinedleauges')->join('registerusers','registerusers.id','=','joinedleauges.userid');
        if(!empty($getchafinal)){
            $titles = $query->where('joinedleauges.challengeid',$challengeid)
            ->leftjoin('finalresults','finalresults.joinedid','=','joinedleauges.id')
            ->select('registerusers.team','registerusers.email','finalresults.amount','jointeam.points','finalresults.transaction_id','finalresults.rank','joinedleauges.teamid','joinedleauges.userid','registerusers.id as Uid')->offset($start)->limit($limit)->orderBy($order,$dir)->get();

        $totalTitles = $query1->where('joinedleauges.challengeid',$challengeid)->leftjoin('finalresults','finalresults.joinedid','=','joinedleauges.id')->select('registerusers.username','registerusers.email','registerusers.team','finalresults.amount','finalresults.points','finalresults.transaction_id','finalresults.rank','joinedleauges.teamid','joinedleauges.userid','registerusers.id as Uid')->count();

        }else{
            $totalTitles = $query1->where('joinedleauges.challengeid',$challengeid)->select('registerusers.username','registerusers.email','registerusers.team','joinedleauges.teamid','joinedleauges.userid','jointeam.points','registerusers.id as Uid')->count();
            $titles = $query->where('joinedleauges.challengeid',$challengeid)->select('registerusers.username','registerusers.email','registerusers.team','joinedleauges.teamid','joinedleauges.userid','registerusers.id as Uid')->offset($start)->limit($limit)->orderBy($order,$dir)->get();
        }
        
        $totalFiltered = $totalTitles;
        if (!empty($titles)) {
            $data = array();
            if($request->input('order.0.column') == '0' and $request->input('order.0.dir') == 'desc') {
              $count = $totalFiltered - $start;
            } else {
              $count = $start + 1;
            }
            foreach ($titles as $title) {
                $bb=action('RegisteruserController@getuserdetails',$title->userid);
               $aa ='<a href="'.$bb.'" style="text-decoration:underline;">'.$title->userid.'';
                $confirm= "return confirm('Are you sure you want to delete this data?')";
                $edit =action('ContestFullDetailController@user_team',[$title->teamid,$matchkeyid,$title->Uid]);
                $delete =action('RegisteruserController@viewtransactions',[$title->userid,'cid='.$challengeid]);
                $nestedData['s_no'] = $count;
                $nestedData['action'] = '<a class="btn btn-sm btn-success w-35px h-35px" data-toggle="tooltip" title="View Team" href="'.$edit.'" style=""><i class="fas fa-users"></i></a>
                                        <a target="blank" class="btn btn-sm btn-info w-35px h-35px" data-toggle="tooltip" title="View Transaction" href="'.$delete.'"><i class="fas fa-eye"></i></a>';
                $nestedData['userid'] = $aa;
                $nestedData['teamname'] = $title->team;
                $nestedData['email'] = $title->email;
                if(!empty($getchafinal)){
                    $nestedData['rank'] = $title->rank;
                    $nestedData['transaction_id'] = $title->transaction_id;
                    $nestedData['points'] = $title->points;
                    $nestedData['amount'] = $title->amount;
                }else{
                    $nestedData['rank'] = 0;
                    $nestedData['transaction_id'] = 0;
                    $nestedData['points'] = 0;
                    $nestedData['amount'] = 0;
                }
                $data[] = $nestedData;
                if($request->input('order.0.column') == '0' and $request->input('order.0.dir') == 'desc') {
                  $count -= 1;
                } else {
                  $count += 1;
                }
            }
        }

        $json_data = array(
            "draw" => intval($request->input('draw')),
            "recordsTotal" => intval($totalTitles),
            "recordsFiltered" => intval($totalFiltered),
            "data" => $data,
        );
        echo json_encode($json_data);
    }

     public function user_team($teamid,$matchkeyid,$Uid){
        $data = DB::table('jointeam')->where('id',$teamid)->first();

        $getdata = DB::table('jointeam')->where('id',$teamid)->get();
        if(!empty($data))
        {
        $captain = DB::table('players')->where('id',$data->captain)->first();
        
        $vice_captain = DB::table('players')->where('id',$data->vicecaptain)->first();

        $player = explode(',',$data->players);
        

        }
        return view('contest_detail.users_team',compact('data','captain','vice_captain','getdata','player','matchkeyid','Uid'));
    }
    public function changeteam($teamid,$matchkeyid,$Uid){
      $teamarray = DB::table('jointeam')->where('id',$teamid)->first();
      $selectedplayers = explode(',',$teamarray->players);

      $data = DB::table('matchplayers')
        ->where('matchkey',$matchkeyid)
        ->whereIn('playerid', $selectedplayers)
        ->join('players','players.id','=','matchplayers.playerid')
        ->join('teams','teams.id','players.team')
        ->orderBy('matchplayers.vplaying','desc')
        ->select('teams.team', DB::raw('count(teams.team) as team_count'))
        ->groupBy('teams.team')
        ->get();
        
        // dd($data);

        return view('contest_detail.user_changeteam',compact('matchkeyid','Uid','teamid', 'data'));
    }
      
    public function changeteam_datatable(Request $request){
        $getdata=$request->all();
        $matchkeyid = $getdata['matchkey'];
        $Uid_id = $getdata['Uid'];
        $teamid = $getdata['teamid'];
        $teamarray = DB::table('jointeam')->where('id',$teamid)->first();
        $selectedplayers = explode(',',$teamarray->players);
        // dump($teamid);
        $columns = array(
                0 => 'id',
                1 => 'name',
                2 => 'role',
                3 => 'matchplayers.credit',
                4 => 'matchplayers.role',
                5 => 'matchplayers.points',
                6 => 'matchplayers.credit',
                7 => 'matchplayers.playingstatus',
            );
        $totalTitles = DB::table('matchplayers')->where('matchkey',$matchkeyid)->count();
        $limit = $request->input('length');
        $start = $request->input('start');
        $order = $columns[$request->input('order.0.column')];
        $dir = $request->input('order.0.dir');
        
        $titles = DB::table('matchplayers')->where('matchkey',$matchkeyid)->join('players','players.id','=','matchplayers.playerid')->join('teams','teams.id','players.team')->orderBy('matchplayers.vplaying','desc')->select('matchplayers.*','players.image','teams.team')
        ->orderBy('role', 'ASC')
        ->get();
        
        $totalFiltered = $totalTitles;
        if (!empty($titles)) {
            $data = array();
            $count = 1;
            foreach ($titles as $title) {
                if($title->image==''){
                    $imagelogo = asset('public/logo.png');
                    $img = '<img src="'.$imagelogo.'" style="width:70px;height:70px;">';
                }else{
                    $imagelogo = asset('public/players/'.$title->image);
                    $img = '<img src="'.$imagelogo.'" style="width:70px;height:70px;">';
                }
                
            $batman =0;
            $a=0;
            $bowler=0;
            $allrounder=0;
            $keeper=0;
            $b="";

            if($title->role=='batsman'){
            $batman= 'selected';
            }

            if($title->credit==""){
              $a = 0;
          }else{
            $a = $title->credit;
           }

           if($title->role=='bowler'){
            $bowler= 'selected'; 
           }

           if($title->role=='allrounder'){
            $allrounder= 'selected'; 
          }

          if($title->role=='keeper'){
          $keeper= 'selected'; 
          }
                $assplay= (in_array($title->playerid, $selectedplayers)) ? 'checked' : 'unchecked';
                $b = '<input type="checkbox" name="playing[]" '.$assplay.' value="'.$title->playerid.'" data-credit="'.$title->credit.'" data-team="'.$title->team.'">';
                $nestedData['s_no'] = $count;
                $nestedData['image']= $img;
                $nestedData['name'] = $title->name.' '.(($title->playerid==$teamarray->vicecaptain)?'(VC)':(($title->playerid==$teamarray->captain)?'(C)':''));
                $nestedData['team'] = $title->team;
                $nestedData['role'] = $title->role;
                $nestedData['points'] = $title->points;
                $nestedData['credit'] = $title->credit;
                $nestedData['in_playing_11'] = $title->playingstatus == 1 ? 'Yes' : 'No';
                $nestedData['action'] = $b;
                $data[] = $nestedData;
                $count++;
            }
        }

        $json_data = array(
            "draw" => intval($request->input('draw')),
            "recordsTotal" => intval($totalTitles),
            "recordsFiltered" => intval($totalFiltered),
            "data" => $data,
        );
        echo json_encode($json_data);
    }
    
    public function update_change_team($teamid,$matchkeyid,$Uid, Request $request){
      $data = $request->all();
      unset($data['_token']);
      if(!empty($data['playing']) && count($data['playing']) == 11){     
        $ds = json_encode($data);

        return view('contest_detail.user_selectvc',compact('ds','matchkeyid','Uid','teamid'));
      }else{
        if( !empty($data['playing']) and count($data['playing']) < 11){
            return redirect()->back()->with('danger','Select 11 Players '.count($data['playing']).' Selected');
        }else if( !empty($data['playing']) and count($data['playing']) > 11){
            return redirect()->back()->with('danger','Select only 11 Players '.count($data['playing']).' Selected');
        } else {
            return redirect()->action('ContestFullDetailController@changeteam', [$teamid, $matchkeyid, $Uid]);
        }
         
      }
    }
    public function update_changeteam_datatable(Request $request){
        $getdata=$request->all();
        $matchkeyid = $getdata['matchkey'];
        $Uid_id = $getdata['Uid'];
        $teamid = $getdata['teamid'];
        $teamarray = DB::table('jointeam')->where('id',$teamid)->first();
        $selectedplayers = explode(',',$teamarray->players);
        $players = json_decode($getdata['players'],true);
        // dd($getdata['players']);
        // dump($selectedplayers);
        $columns = array(
                0 => 'id',
                1 => 'name',
                2 => 'role',
                3 => 'matchplayers.credit',
                4 => 'matchplayers.role',
                5 => 'matchplayers.points',
                6 => 'matchplayers.credit',
                7 => 'matchplayers.playingstatus',
            );
        $totalTitles = DB::table('matchplayers')->where('matchkey',$matchkeyid)->count();
        $limit = $request->input('length');
        $start = $request->input('start');
        $order = $columns[$request->input('order.0.column')];
        $dir = $request->input('order.0.dir');
        
        $titles = DB::table('matchplayers')->where('matchkey',$matchkeyid)->join('players','players.id','=','matchplayers.playerid')->join('teams','teams.id','players.team')->orderBy('matchplayers.vplaying','desc')->select('matchplayers.*','players.image','teams.team')->orderBy($order, $dir)->get();
        
        $totalFiltered = $totalTitles;
        if (!empty($titles)) {
            $data = array();
            $count = 1;
            foreach ($titles as $title) {
                // dump()
                if(!in_array($title->playerid,$players['playing'])){
                    continue;
                }
                if($title->image==''){
                    $imagelogo = asset('public/logo.png');
                    $img = '<img src="'.$imagelogo.'" style="width:70px;height:70px;">';
                }else{
                    $imagelogo = asset('public/players/'.$title->image);
                    $img = '<img src="'.$imagelogo.'" style="width:70px;height:70px;">';
                }
                
            $batman =0;
            $a=0;
            $bowler=0;
            $allrounder=0;
            $keeper=0;
            $b="";

            if($title->role=='batsman'){
            $batman= 'selected';
            }

            if($title->credit==""){
                $a = 0;
            }else{
                $a = $title->credit;
             }

             if($title->role=='bowler'){
                $bowler= 'selected'; 
             }

             if($title->role=='allrounder'){
              $allrounder= 'selected'; 
            }

            if($title->role=='keeper'){
            $keeper= 'selected'; 
            }   
                
                $js = "$(this).parent().siblings().children('input[name=playingvc]').attr({'disabled':true})";
                $js1= "$(this).parent().siblings().children('input[name=playingc]').attr({'disabled':true})";
                // $js = "alert($(this).prop('checked'));";
                $assplay= (in_array($title->playerid, $selectedplayers)) ? 'checked' : 'unchecked';
                $b = '<input type="hidden" name="playing[]" '.$assplay.' value="'.$title->playerid.'" >&nbsp;<input type="radio" name="playingvc" value="'.$title->playerid.'" onchange="getdata1(),'.$js1.'">';
                $nestedData['s_no'] = $count;
                $nestedData['image']= $img;
                $nestedData['name'] = $title->name.' '.(($title->playerid==$teamarray->vicecaptain)?'(VC)':(($title->playerid==$teamarray->captain)?'(C)':''));
                $nestedData['team'] = $title->team;
                $nestedData['role'] = $title->role;
                $nestedData['points'] = $title->points;
                $nestedData['credit'] = $title->credit;
                $nestedData['VC'] = $b;
                $nestedData['C'] = '<input type="radio" name="playingc" value="'.$title->playerid.'" onchange="getdata(),'.$js.'">';
                $data[] = $nestedData;
                $count++;
            }
        }

        $json_data = array(
            "draw" => intval($request->input('draw')),
            "recordsTotal" => intval($totalTitles),
            "recordsFiltered" => intval($totalFiltered),
            "data" => $data,
        );
        echo json_encode($json_data);
    }
    public function update_change_team2($teamid,$matchkeyid,$Uid, Request $request){
        $data = $request->all();
        $input['players'] = implode(',',$data['playing']);
        $input['vicecaptain'] = $data['playingvc'];
        $input['captain'] = $data['playingc'];
        $input['points'] = 0;
        if(!empty($input['players']) && !empty($input['vicecaptain']) && !empty($input['captain'])){
            foreach ($data['playing'] as $value) {
                
                $playerpoint = DB::table('result_points')->where('matchkey',$matchkeyid)->where('playerid',$value)->first(['total']);
                
                if($value==$input['vicecaptain']){
                    $input['points'] += $playerpoint->total*1.5;
                }else if($value==$input['captain']){
                    $input['points'] += $playerpoint->total*2;
                }else{
                    $input['points'] += $playerpoint->total;
                }
            }
            $input['points'] = floor($input['points']);
            DB::table('jointeam')->where('id',$teamid)->update($input);
            return redirect()->action('ContestFullDetailController@user_team',[$teamid,$matchkeyid,$Uid])->with('Team has been updated');
        }else{
            if(!empty($input['vicecaptain'])){
                return redirect()->back()->with('danger','Select Vice Captain');
            }else if(!empty($input['captain'])){
                return redirect()->back()->with('danger','Select Captain');
            }
           
        }
    }

}
