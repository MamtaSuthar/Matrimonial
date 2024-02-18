<?php
namespace App\Http\Controllers;
use DB;
use Session;
use bcrypt;
use Config;
use Redirect;
use File;
use Hash;
use Carbon\Carbon;
use Illuminate\Http\Request; 
use App\Http\Controllers\Controller;
use App\Http\Requests;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Input;
use App\Http\Controllers\CricketapiController;
use App\Http\Controllers\FootballApiController;
use App\Helpers\Helpers;
use SoccerAPI;
class FootballMatchController extends Controller
{
	public function GetFootballMatch(Request $request){
     
		//Get Tournament List
		$gettournamentlist = FootballApiController::getTournament();
		
		if(!empty($gettournamentlist)){
			foreach ($gettournamentlist as $tournament) {
				//Get tournament details
				$gettournamentdetails= FootballApiController::getTournamentDetails($tournament['key']);
				
				//Get All Team according tournament
				$this->GetTeams($gettournamentdetails['tournament']['teams']);
				
				if(!empty($gettournamentdetails['tournament']['rounds'])){
					$rounds= $gettournamentdetails['tournament']['rounds'];
					foreach ($rounds as $getrounds) {
						$rounds= $gettournamentdetails['tournament']['rounds'];
						$roundskey= $getrounds['key']; 
						//Get Round details
						$getrounddetails= FootballApiController::getRoundsDetails($tournament['key'],$roundskey);
					
						if(!empty($getrounddetails)){
							if(!empty($getrounddetails['round']['matches'])){ 
								$getmatchlist= $getrounddetails['round']['matches'];
							 
								foreach ($getmatchlist as $matchdata) {
								    $currentmonth = date('m');
								    $apimonth = date('m',strtotime($matchdata['match']['start_date']['gmt']));
								    if($currentmonth == $apimonth){
									if($matchdata['match']['status']=='not_started'){
										$cuurectdate = date('Y-m-d H:i:s',strtotime($matchdata['match']['start_date']['gmt']));
									
										//check matchkey in db table
										$findmatch= DB::table('listmatches')->where('matchkey',$matchdata['match']['key'])->first();
										if(empty($findmatch)){
											$team1key = $matchdata['match']['home'];
											$team2key = $matchdata['match']['away'];
											$findteam1 = DB::table('teams')->where('team_key',$team1key)->select('id')->first();
											if(!empty($findteam1)){
												$team1id = $findteam1->id;
											}
											$findteam2 = DB::table('teams')->where('team_key',$team2key)->select('id')->first();
											if(!empty($findteam2)){
												$team2id = $findteam2->id;
											}
											$match['team1'] =$team1id;
											$match['team2'] =$team2id;
											$match['matchkey'] = $matchdata['match']['key'];
											$match['name'] = $matchdata['match']['name'];
											if($matchdata['match']['status']=='not_started'){
												$match['status'] = 'notstarted';
											}else{
												$match['status'] = $matchdata['match']['status'];
											}
											$match['squadstatus'] = 'no';
											$match['launch_status'] = 'pending';
											$match['final_status'] = 'pending';
											$match['fantasy_type'] = 'Football';
											$match['start_date'] = $cuurectdate;
											//insert match 
											DB::connection('mysql2')->table('listmatches')->insert($match);
										}
										else{
											$cuurectdate1 = Carbon::parse($cuurectdate)->addHours(5)->addMinutes(30);
											$matchs['start_date'] = $cuurectdate1;
											//update match
											DB::connection('mysql2')->table('listmatches')->where('matchkey',$matchdata['match']['key'])->update($matchs);
										}
									}
									}
								}
								}
						} 
					}
				}
			}
			
		}
	return redirect()->action('MatchController@upcoming_matches', ['fantasy_type' => 'Football'])->with('Players Successfully Updated!');
	}
	//Get All Teams
	public function GetTeams($allteams){
	    
		if(!empty($allteams)){
			foreach ($allteams as $key => $value) {
				$getteam= DB::table('teams')->where('team_key',$value['key'])->first();
				if(empty($getteam)){
					$data['short_name']= $value['code'];
					$data['team_key']= $value['key'];
					$data['team']= $value['name'];
					$data['color']= '#ffffff';
					$data['fantasy_type']='Football';
					DB::connection('mysql2')->table('teams')->insert($data);
				}else{
					$data['short_name']= $value['code'];
					$data['team_key']= $value['key'];
					$data['team']= $value['name'];
					DB::connection('mysql2')->table('teams')->where('team_key',$value['key'])->update($data);
				}
			}
		}
		return true;
	}
	//Get All Teams
	public function GetTeamsww($matchkey){
	    $findmatch = DB::table('listmatches')->where('matchkey',$matchkey)->first();
		if(!empty($findmatch)){
			if($findmatch->launch_status!='launched'){
				$getdetails = FootballApiController::getMatchDetails($matchkey);
        		if(!empty($getdetails['teams'])){
        		    $i = 0;
        			foreach ($getdetails['teams'] as $key => $value) {
        				$getteam = DB::table('teams')->where('team_key',$value['key'])->first();
        				// dd($getdetails);
        				if(empty($getteam)){
        					$data['short_name']= $value['code'];
        					$data['team_key']= $value['key'];
        					$data['team']= $value['name'];
        					$data['color']= '#ffffff';
        					$data['fantasy_type']='Football';
        					$team[$i]['id'] = DB::connection('mysql2')->table('teams')->insertGetId($data);
        					$team[$i]['name'] = $value['name'];
        				}else{
        					$data['short_name']= $value['code'];
        					$data['team_key']= $value['key'];
        					$data['team']= $value['name'];
        					DB::connection('mysql2')->table('teams')->where('team_key',$value['key'])->update($data);
        					$team[$i]['id'] = $getteam->id;
        					$team[$i]['name'] = $getteam->team;
        				}
        				$i += 1;
        			}
        		}
        		
	            $data1['team1'] = $team[0]['id'];
	            $data1['team2'] = $team[1]['id'];
	            $data1['name'] = $team[0]['name'].' Vs '.$team[1]['name'];
	            DB::connection('mysql2')->table('listmatches')->where('matchkey',$matchkey)->update($data1);
			}
		}
		return redirect()->back()->with('success', 'Teams imported');
	}
	public function GetMatchPlayers($matchkey){
		$findmatch = DB::table('listmatches')->where('matchkey',$matchkey)->first();
		
		if(!empty($findmatch)){
			if($findmatch->launch_status!='launched'){
				$getdetails = FootballApiController::getMatchDetails($matchkey);
				if(!empty($getdetails['teams'])){
					$matchkikey = $matchkey;
					$team1players=array();
					$team2players=array();
					foreach ($getdetails['teams'] as $teamplayers) {
						$teamkey= $teamplayers['key'];
						if(!empty($teamplayers['players'])){
							foreach ($teamplayers['players'] as $player) {
								$playerdata= $getdetails['players'][$player];
								$findmatchexist = DB::table('teams')->where('team_key',$teamkey)->select('id')->first();
							
								if(!empty($findmatchexist)){
									$findplayerexist = DB::table('players')->where('players_key',$player)->where('team',$findmatchexist->id)->first();
					              
									if(empty($findplayerexist)){
										$data['fantasy_type'] = 'Football';
										$data['player_name'] = $playerdata['name'];
										$data['players_key'] = $playerdata['key'];
										$data['credit']=9;
										$data['team'] = $findmatchexist->id;
										if($playerdata['role']==""){
											$data['role'] = 'midfielder';
										}
										else{
											$data['role'] =  $playerdata['role'];
										}
										$playerid = DB::connection('mysql2')->table('players')->insertGetId($data);
										$credit=9;
									}
									else{
										$playerid = $findplayerexist->id;
										$credit = $findplayerexist->credit;
										$data['role'] = $findplayerexist->role;
										$credit=9;
									}
									// insert players for a match//
									$findplayer1entry = DB::table('matchplayers')->where('matchkey',$matchkikey)->where('playerid',$playerid)->first();
							
									if(empty($findplayer1entry)){
										$matchplayerdata['matchkey'] = $matchkikey;
										$matchplayerdata['playerid'] = $playerid;
										$matchplayerdata['role'] = $data['role'];
										$matchplayerdata['name'] = (!empty($playerdata['name'])) ? $playerdata['name']: $data['player_name'];
										$matchplayerdata['credit'] = $credit;
										DB::connection('mysql2')->table('matchplayers')->insert($matchplayerdata);
									}
								}
							}
						}
					}
					$listmatches['squadstatus'] = 'yes';
					DB::connection('mysql2')->table('listmatches')->where('matchkey',$matchkey)->update($listmatches);
				}
			}
		}
		return redirect()->back()->with('Players Successfully Updated!');
	}
	public function showplaying($match_key){
		$checkmath = DB::table('listmatches')->where('matchkey',$match_key)->select('matchkey','playing11_status','status')->first();
        if(!empty($checkmath)){
    		$giveresresult =FootballApiController::getMatchDetails($match_key);
    		//Enter data in f_result_matches table
    		if($giveresresult['players']){
    			foreach ($giveresresult['players'] as $playerskey) {
    				$resultdata= DB::table('f_result_matches')->where('match_key',$match_key)->where('player_key',$playerskey['key'])->select('id')->first();
    				if(empty($resultdata)){
	    				$playerdatas = DB::table('players')->join('matchplayers','matchplayers.playerid','=','players.id')->where('matchplayers.matchkey',$match_key)->where('players.players_key',$playerskey['key'])->select('matchplayers.id','players.id as playerid','playingstatus')->first();
	    				if(!empty($playerdatas)){
	    					$data['player_id']=$playerdatas->playerid;
	                        $data['player_key']=$playerskey['key'];
	                        $data['match_key']=$match_key;
	                        DB::connection('mysql2')->table('f_result_matches')->insert($data);
	    				}
	    			}
    			}
    		}
    		//Lineup update
			if(!empty($giveresresult['teams'])){
				foreach ($giveresresult['teams'] as $value) {
					if(!empty($value['lineup'])){
						foreach ($value['lineup'] as $playerkey) {
							$newplaying_xi[]=$playerkey;
							$playerdata = DB::table('players')->join('matchplayers','matchplayers.playerid','=','players.id')->where('matchplayers.matchkey',$match_key)->where('players.players_key',$playerkey)->select('matchplayers.id','players.id as playerid','playingstatus')->first();
							if(!empty($playerdata)){
								$dddjdh['playingstatus'] = 1;
                                DB::table('matchplayers')->where('id',$playerdata->id)->update($dddjdh); 
                                $resultdatas= DB::table('f_result_matches')->where('match_key',$match_key)->where('player_key',$playerkey)->select('id')->first();
                                if(!empty($resultdatas)){
                                	$datad['starting11']='1';
                                	DB::connection('mysql2')->table('f_result_matches')->where('id',$resultdatas->id)->update($datad);
                                } 
							}else{
								$this->importPlayers($giveresresult,$match_key);
							}
						}
						$playingstat['playing11_status'] = '1';
                		DB::connection('mysql2')->table('listmatches')->where('matchkey',$match_key)->update($playingstat);
					}
				}
			}

			if(!empty($newplaying_xi)){
                $getplayers = DB::table('players')->join('matchplayers','matchplayers.playerid','=','players.id')->where('matchplayers.matchkey',$match_key)->select('players.players_key','matchplayers.id')->get();
                if(!empty($getplayers)){
                	$i=0;
                	foreach($getplayers as $players){
                		if(in_array($players->players_key, $newplaying_xi)){
                			$datas['playingstatus']=1;
                        	DB::connection('mysql2')->table('matchplayers')->where('id',$players->id)->update($datas); 
                		}else{
                			$datas['playingstatus']=0;
                        	DB::connection('mysql2')->table('matchplayers')->where('id',$players->id)->update($datas); 
                		}
                	$i++;
                	}
                }
            }

        }
	}

	public function importPlayers($getdetails,$matchkey){
		if(!empty($getdetails['teams'])){
			$matchkikey = $matchkey;
			$team1players=array();
			$team2players=array();
			foreach ($getdetails['teams'] as $teamplayers) {
				$teamkey= $teamplayers['key'];
				if(!empty($teamplayers['players'])){
					foreach ($teamplayers['players'] as $player) {
						$playerdata= $getdetails['players'][$player];
						$findmatchexist = DB::table('teams')->where('team_key',$teamkey)->select('id')->first();
						if(!empty($findmatchexist)){
							$findplayerexist =DB::table('players')->where('players_key',$player)->where('team',$findmatchexist->id)->first();
							if(empty($findplayerexist)){
								$data['fantasy_type'] = 'Football';
								$data['player_name'] = $playerdata['name'];
								$data['players_key'] = $playerdata['key'];
								$data['credit']=9;
								$data['team'] = $findmatchexist->id;
								if($playerdata['role']==""){
									$data['role'] = 'midfielder';
								}
								else{
									$data['role'] =  $playerdata['role'];
								}
								$playerid = DB::connection('mysql2')->table('players')->insertGetId($data);
								$credit=9;
							}
							else{
								$playerid = $findplayerexist->id;
								$credit = $findplayerexist->credit;
								$data['role'] = $findplayerexist->role;
								$credit=9;
							}
							// insert players for a match//
							$findplayer1entry = DB::table('matchplayers')->where('matchkey',$matchkikey)->where('playerid',$playerid)->first();
							if(empty($findplayer1entry)){
								$matchplayerdata['matchkey'] = $matchkikey;
								$matchplayerdata['playerid'] = $playerid;
								$matchplayerdata['role'] = $data['role'];
								$matchplayerdata['name'] = $data['player_name'];
								$matchplayerdata['credit'] = $credit;
								DB::connection('mysql2')->table('matchplayers')->insert($matchplayerdata);
							}
						}
					}
				}
			}
		}
	}
	//Update Score In football
	public function updateFootballScore()
	{
		date_default_timezone_set('Asia/Kolkata'); 
		$findmatchexist = DB::table('listmatches')->whereDate('start_date','<=',date('Y-m-d'))->where('launch_status','launched')->where('final_status','!=','winnerdeclared')->where('status','!=','completed')->get();
		
		if(!empty($findmatchexist)){
			foreach($findmatchexist as $val){
				$match_type = $val->format;
				$getcurrentdate = date('Y-m-d H:i:s');
				$matchtimings = date('Y-m-d H:i:s',strtotime($val->start_date));
				$matchtimings1 = date('Y-m-d H:i:s', strtotime( '-30 minutes', strtotime($val->start_date)));
			//	if($getcurrentdate>$matchtimings1){
					$match_key=$val->matchkey;
					$this->showplaying($match_key);
			//	}
				if($getcurrentdate>=$matchtimings){
					$match_key=$val->matchkey;
					$this->getfootballscoresupdates($match_key);
				}
			}
		  return 'completed';
		}
	}
	//update score card
	public function getfootballscoresupdates($match_key){
		$findmatchtype =DB::table('listmatches')->where('matchkey',$match_key)->select('format')->first();
		$giveresresult = FootballApiController::getMatchDetails($match_key);
		$getmtdatastatus['status'] = $giveresresult['match']['status'];
		if($getmtdatastatus['status']=='completed'){
			$getmtdatastatus['final_status'] = 'IsReviewed';
		}
		// echo "<pre>";print_r($giveresresult);die;
		DB::connection('mysql2')->table('listmatches')->where('matchkey',$match_key)->update($getmtdatastatus);
		if(!empty($giveresresult['players'])){
			foreach ($giveresresult['players'] as $playerdata) {
				$matchplayers =DB::table('matchplayers')->join('players','players.id','=','matchplayers.playerid')->where('matchkey',$match_key)->where('players.players_key',$playerdata['key'])->select('matchplayers.*','players.players_key','players.role as playerrole')->first();
				if(!empty($matchplayers)){
					$data= array();
					$data['RC']=$playerdata['stats']['card']['RC'];
					$data['Y2C']=$playerdata['stats']['card']['Y2C'];
					$data['YC']=$playerdata['stats']['card']['YC'];
					if(!empty($playerdata['stats']['clean_sheet'])){
						$data['clean_sheet']=$playerdata['stats']['clean_sheet'];
					}
					$data['committed']=$playerdata['stats']['foul']['committed'];
					$data['drawn']=$playerdata['stats']['foul']['drawn'];
					if(!empty($playerdata['stats']['goal']['assist'])){
						$data['assist']=$playerdata['stats']['goal']['assist'];
					}
					if(!empty($playerdata['stats']['goal']['own_goal_concededx`'])){
						$data['own_goal_concededx']=$playerdata['stats']['goal']['own_goal_concededx'];
					}
					if(!empty($playerdata['stats']['goal']['saved'])){
						$data['saved']=$playerdata['stats']['goal']['saved'];
					}
					if(!empty($playerdata['stats']['goal']['scored'])){
						$data['scored']=$playerdata['stats']['goal']['scored'];
					}
					if(!empty($playerdata['stats']['goal']['conceded'])){
						$data['conceded']=$playerdata['stats']['goal']['conceded'];
					}
					if(!empty($playerdata['stats']['penalty']['missed'])){
						$data['missed']=$playerdata['stats']['penalty']['missed'];
					}
					if(!empty($playerdata['stats']['penalty']['saved'])){
						$data['penalty_saved']=$playerdata['stats']['penalty']['saved'];
					}
					if(!empty($playerdata['stats']['penalty']['scored'])){
						$data['penalty_scored']=$playerdata['stats']['penalty']['scored'];
					}
					$data['minutes_played']=$playerdata['stats']['minutes_played'];
					if(!empty($playerdata['stats']['passes'])){
						$data['passes']=$playerdata['stats']['passes'];
					}
					if(!empty($playerdata['stats']['shot_on_target'])){
						$data['shot_on_target']=$playerdata['stats']['shot_on_target'];
					}
					if(!empty($playerdata['stats']['tackles'])){
						$data['tackles']=$playerdata['stats']['tackles'];
					}
					$findplayerex = DB::table('f_result_matches')->where('player_key',$playerdata['key'])->where('match_key',$match_key)->select('id')->first();
					if(!empty($findplayerex)){
						DB::connection('mysql2')->table('f_result_matches')->where('id',$findplayerex->id)->update($data);
					}else{
						$data['match_key'] =$match_key;
						$data['player_key'] =$playerdata['key'];
						$data['player_id'] =$matchplayers->playerid;
						DB::connection('mysql2')->table('f_result_matches')->insert($data);
					}
					
				}
			}
			$this->player_point($match_key);
		}

	}
	//update players point
	public function player_point($match_key){
		$matchplayers = DB::table('f_result_matches')->where('match_key',$match_key)->get();
		$aaa = $matchplayers->toArray();
		if(!empty($aaa)){
			foreach($matchplayers as $row){
				$findplayer = DB::table('matchplayers')->where('playerid',$row->player_id)->where('matchkey',$match_key)->select('role')->first();
				$findplayerrole= $findplayer->role;
				$resultmatchupdate = array();
				$result = array();
				$player_key = $row->player_key;
				$minutes_played=0;
				$goal_scored=0;
				$assist=0;
				$passes=0;
				$clean_sheet=0;
				$shot_on_target=0;
				$saved=0;
				$penalty_saved=0;
				$yellow_card=0;
				$red_card=0;
				$own_goal_conceded=0;
				$missed=0;
				$conceded=0;
				$tackles=0;
				
				if($row->minutes_played>=55 ){
					$minutes_played=2;
				}else if($row->minutes_played<55){
					$minutes_played=1;
				}
				
				if($findplayerrole =='goalkeeper' || $findplayerrole =='defender'){
					$goal_scored= $row->scored*10;
				}

				if($findplayerrole =='midfielder'){
					$goal_scored= $row->scored*9;
				}

				if($findplayerrole == 'striker'){
					$goal_scored= $row->scored*8;
				}
				$assist=$row->assist*5;

				if($row->passes>=10){
					$count_passes= $row->passes/10;
					$count_passes= explode('.',$count_passes);
					$passes= $count_passes[0]*0.5;
				}
				if($row->shot_on_target>=2){
					$count_target= $row->shot_on_target/2;
					$shot_on_target= $count_target*1;
				}

				if($row->tackles>=3){
					$count_tackles= $row->tackles/3;
					$tackles= $count_tackles*1;
				}

				if($findplayerrole =='midfielder'){
					$clean_sheet= $row->clean_sheet*1;
				}

				if($findplayerrole =='goalkeeper' || $findplayerrole =='defender'){
					$clean_sheet= $row->clean_sheet*5;
				}

				if($findplayerrole =='goalkeeper' || $findplayerrole =='defender'){
					if($row->conceded>=2){
						$count_conceded= $row->conceded/2;
						$conceded= $count_conceded*(-1);
					}
				}

				if($findplayerrole =='goalkeeper'){
					if($row->saved>=3){
						$count_saved= $row->saved/3;
						$saved= $count_saved*2;
					}
				}

				if($findplayerrole =='goalkeeper'){
					$penalty_saved= $row->penalty_saved*9;
				}
				if($row->YC>0){
					$yellow_card= $row->YC*(-1);
				}
				if($row->RC>0){
					$red_card= $row->RC*(-3);
				}
				if($row->missed>0){
					$missed= $row->missed*(-2);
				}
				if($row->own_goal_conceded>0){
					$own_goal_conceded= $row->own_goal_conceded*(-2);
				}

				$total_points =  $missed+$own_goal_conceded+$red_card+$yellow_card+$penalty_saved+$saved+$conceded+$clean_sheet+$tackles+$shot_on_target+$passes+$assist+$goal_scored+$minutes_played;
				$total_points= round($total_points,2);
				$result['total_points'] =$total_points;
				DB::connection('mysql2')->table('f_result_matches')->where('player_key',$player_key)->where('match_key',$match_key)->update($result);
				//insert in result points// 
				$resultpoints['matchkey']= $match_key;
				$resultpoints['playerid']= $row->player_id;
				if($minutes_played>0){
					$resultpoints['missed']= $missed;
					$resultpoints['own_goal_conceded']= $own_goal_conceded;
					$resultpoints['RC']= $red_card;
					$resultpoints['YC']= $yellow_card;
					$resultpoints['penalty_saved']= $penalty_saved;
					$resultpoints['saved']= $saved;
					$resultpoints['conceded']= $conceded;
					$resultpoints['clean_sheet']= $clean_sheet;
					$resultpoints['tackles']= $tackles;
					$resultpoints['shot_on_target']= $shot_on_target;
					$resultpoints['passes']= $passes;
					$resultpoints['assist']= $assist;
					$resultpoints['scored']= $goal_scored;
					$resultpoints['minutes_played']= $minutes_played;
					$resultpoints['total_points']=$total_points;
				}else{
					$resultpoints['startingpoints']= 0;
					$resultpoints['missed']= 0;
					$resultpoints['own_goal_conceded']= 0;
					$resultpoints['RC']= 0;
					$resultpoints['YC']= 0;
					$resultpoints['penalty_saved']= 0;
					$resultpoints['saved']= 0;
					$resultpoints['conceded']= 0;
					$resultpoints['clean_sheet']= 0;
					$resultpoints['tackles']= 0;
					$resultpoints['shot_on_target']= 0;
					$resultpoints['passes']= 0;
					$resultpoints['assist']= 0;
					$resultpoints['scored']= 0;
					$resultpoints['minutes_played']= 0;
					$resultpoints['total_points']= 0;
				}
				$resultpoints['updated_at'] = date('Y-m-d H:i:s');
				$finde = DB::table('f_result_point')->where('matchkey',$match_key)->where('playerid',$row->player_id)->where('resultmatch_id',$row->id)->select('id')->first();
				
				if(empty($finde)){
					$resultpoints['resultmatch_id']= $row->id;
					DB::connection('mysql2')->table('f_result_point')->insert($resultpoints);
				}
				else{
					DB::connection('mysql2')->table('f_result_point')->where('id',$finde->id)->update($resultpoints);
				}
			}
			$this->updateplayerpoints($match_key);
		}
	}
	public function updateplayerpoints($match_key){
		$findallplayers =DB::table('matchplayers')->where('matchkey',$match_key)->get();
		if(!empty($findallplayers)){
			foreach($findallplayers as $player){
				$findtotalpoints = DB::table('f_result_point')->where('matchkey',$match_key)->where('playerid',$player->playerid)->sum('f_result_point.total_points');
				$data['points'] = $findtotalpoints;
				DB::connection('mysql2')->table('matchplayers')->where('id',$player->id)->update($data);
			}
			$this->userpoints($match_key);
		}
	}
	public function userpoints($match_key){
		$joinlist =DB::table('jointeam')->where('matchkey',$match_key)->get();
		if(!empty($joinlist)){
			foreach($joinlist as $row2){
				$user_points = 0;
				$players = explode(',',$row2->players);
				$matchplayers = DB::table('matchplayers')->where('matchkey',$match_key)->get();
				if(!empty($matchplayers)){
					foreach($matchplayers as $row){
						$pid = $row->playerid;
						if(in_array($pid,$players)){
							if($row2->captain == $pid){
								$user_points =$user_points + ($row->points*2);
							}else if ($row2->vicecaptain== $pid){
								$user_points =$user_points + ($row->points*1.5);
							}else {
								$user_points =$user_points + $row->points;
							}
						}else{
							$user_points = $user_points;
						}
					}
				}
				if($row2->points!=$user_points){
					$result['lastpoints']=$row2->points;
				}
				$result['points']=$user_points;
				DB::connection('mysql2')->table('jointeam')->where('id',$row2->id)->update($result);
			}
		}
	}
	
	//launch match
	public function launchmatch($matchkey){
		$findmatchdetails = DB::table('listmatches')->where('matchkey',$matchkey)->first();
		
		$goalkeeper1 = 0;$goalkeeper2 = 0;$defender1 = 0;$defender2 = 0;$midfielder1 = 0;$midfielder2 = 0;$striker1 = 0;$striker2 = 0;$criteria=1;
		if(!empty($findmatchdetails)){
			$team1 = $findmatchdetails->team1;
			$team2 = $findmatchdetails->team2;
			$findallmatchplayers =	DB::table('matchplayers')
										->join('players', 'players.id', 'matchplayers.playerid')
										->where('matchplayers.matchkey',$matchkey)
										->select('matchplayers.*', 'players.team as matchplayers_playerid_team')
										->get();
			$findplayer1details =DB::table('matchplayers')->where('matchplayers.matchkey',$findmatchdetails->matchkey)->where('players.team',$findmatchdetails->team1)->join('players','players.id','=','matchplayers.playerid')->select('matchplayers.*','players.image')->get();

            $findplayer2details =DB::table('matchplayers')->where('matchplayers.matchkey',$findmatchdetails->matchkey)->where('players.team',$findmatchdetails->team2)->join('players','players.id','=','matchplayers.playerid')->select('matchplayers.*','players.image')->get();

			if(!empty($findallmatchplayers)){
				
				foreach($findallmatchplayers as $matchplay){
					if($matchplay->matchplayers_playerid_team==$team1){
						if($matchplay->role=='defender'){
							$defender1++;
						}
						if($matchplay->role=='goalkeeper'){
							$goalkeeper1++;
						}
						if($matchplay->role=='midfielder'){
							$midfielder1++;
						}
						if($matchplay->role=='striker'){
							$striker1++;
						}
						if($matchplay->role==""){ 
						    $criteria=0;
							// return Redirect()->action('FootballMatchController@launchmatch',$matchkey)->with('danger','You cannot launch this match because the role of '.ucwords($matchplay->name).' is not defined.');
						}
					}
					if($matchplay->matchplayers_playerid_team==$team2){
						if($matchplay->role=='defender'){
							$defender2++;
						}
						if($matchplay->role=='goalkeeper'){
							$goalkeeper2++;
						}
						if($matchplay->role=='midfielder'){
							$midfielder2++;
						}
						if($matchplay->role=='striker'){
							$striker2++;
						} 
						if($matchplay->role==""){
							$criteria=0;
							// return Redirect()->action('FootballMatchController@launchmatch',$matchkey)->with('danger','You cannot launch this match because the role of '.ucwords($matchplay->name).' is not defined.');
						}
					}
				}
			}
		}
		$fantasy_type = 'Football';
		return view('matches.launchmatch',compact('fantasy_type', 'findmatchdetails','defender1','defender2','goalkeeper1','goalkeeper2','midfielder1','midfielder2','striker1','striker2','findplayer1details','findplayer2details'));
			
	}
		public function launch($matchkey){
				$datastatus['launch_status'] = 'launched';
				$findmatch =DB::table('listmatches')->where('matchkey',$matchkey)->first();
				if(!empty($findmatch)){
					if($findmatch->series==0 || $findmatch->series==""){
						return Redirect()->action('MatchController@launchmatch',$matchkey)->with('danger','You cannot launch this match. Series is required in this match.');
					}
					$team1 = $findmatch->team1;
					$team2 = $findmatch->team2;
					$goalkeeper1 = 0;$goalkeeper2   = 0;$defender1 = 0;$defender2 = 0;$midfielder1 = 0;$midfielder2 = 0;$striker1 = 0;$striker2 = 0;$criteria=1;
					$findallmatchplayers = DB::table('matchplayers')
										->join('players', 'players.id', 'matchplayers.playerid')
										->where('matchplayers.matchkey',$matchkey)
										->select('matchplayers.*', 'players.team as matchplayers_playerid_team')
										->get();
					if(!empty($findallmatchplayers)){
						foreach($findallmatchplayers as $matchplay){
							if($matchplay->matchplayers_playerid_team==$team1){
								if($matchplay->role=='defender'){
									$defender1++;
								}
								if($matchplay->role=='goalkeeper'){
									$goalkeeper1++;
								}
								if($matchplay->role=='striker'){
									$striker1++;
								}
								if($matchplay->role=='midfielder'){
									$midfielder1++;
								}
								if($matchplay->role==""){ 
								    $criteria=0;
									// return Redirect()->action('MatchController@launchmatch',$matchkey)->with('danger','You cannot launch this match because the role of '.ucwords($matchplay->name).' is not defined.');
								}
							}
							if($matchplay->matchplayers_playerid_team==$team2){
								if($matchplay->role=='defender'){
									$defender2++;
								}
								if($matchplay->role=='goalkeeper'){
									$goalkeeper2++;
								}
								if($matchplay->role=='striker'){
									$striker2++;
								}
								if($matchplay->role=='midfielder'){
									$midfielder2++;
								}
								if($matchplay->role==""){
									$criteria=0;
									// return Redirect()->action('FootballMatchController@launchmatch',$matchkey)->with('danger','You cannot launch this match because the role of '.ucwords($matchplay->name).' is not defined.');
								}
							}
						}
						if($defender1<3){
							$criteria=0;
							return Redirect()->action('FootballMatchController@launchmatch',$matchkey)->with('danger','Minimum 3 bowlers are required in team1 to launch this match');
						}
						else if($defender2<3){
							$criteria=0;
							return Redirect()->action('FootballMatchController@launchmatch',$matchkey)->with('danger','Minimum 3 bowlers are required in team2 to launch this match');
						}
						else if($goalkeeper1<3){
							$criteria=0;
							return Redirect()->action('FootballMatchController@launchmatch',$matchkey)->with('danger','Minimum 3 batman are required in team1 to launch this match');
						}
						else if($goalkeeper2<3){
							$criteria=0;
							return Redirect()->action('FootballMatchController@launchmatch',$matchkey)->with('danger','Minimum 3 batman are required in team2 to launch this match');
						}
						else if($midfielder1<1){
							$criteria=0;
							return Redirect()->action('FootballMatchController@launchmatch',$matchkey)->withErrors('danger','Minimum 1 wicketkeeper is required in team1 to launch this match');
						}
						else if($midfielder2<1){
							$criteria=0;
							return Redirect()->action('FootballMatchController@launchmatch',$matchkey)->with('danger','Minimum 1 wicketkeeper is required in team2 to launch this match');
						}
						else if($striker1<1){
							$criteria=0;
							return Redirect()->action('FootballMatchController@launchmatch',$matchkey)->with('danger','Minimum 1 all rounder are required in team1 to launch this match');
						}
						else if($striker2<1){
							$criteria=0;
							return Redirect()->action('FootballMatchController@launchmatch',$matchkey)->with('danger','Minimum 1 all rounder are required in team2 to launch this match');
						}
					}

					if($criteria==1){
						DB::connection('mysql2')->table('listmatches')->where('matchkey',$matchkey)->update($datastatus);
					    return redirect()->action('ContestController@create_custom_contest')->with('success','Successfully launched this match!');
					}
				}else{
					 return redirect()->action('MatchController@upcoming_matches')->with('danger','Invalid match Provided');
				}
			}
}
?>