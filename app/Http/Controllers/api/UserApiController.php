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
// use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\Log;
use CfPayout;
use Validator;
use Razorpay\Api\Api;
class UserApiController extends Controller
{

    public function getmainbanner()
    {
        Helpers::setHeader(200);
        Helpers::timezone();
        $geturl = Helpers::geturl();
        $json = array();
        $findsidebanner = DB::table('sidebanner')->get();
        if (!empty($findsidebanner)) {
            $i = 0;
            foreach ($findsidebanner as $value) {
                $json[$i]['image'] = $geturl . 'public/' . $value->image;
                $json[$i]['type'] = $value->type;
                $json[$i]['url'] = ( !empty($value->url) ) ? $value->url : '';
                $i++;
            }
            return response()->json($json);
            die;
        }
    }
    public function invitepage()
    {
        $usertoken = $_GET['token'];
        if ($usertoken != "") {
            $finduserrefercode = DB::table('registerusers')->where('auth_key', $usertoken)->first();
            if (!empty($finduserrefercode)) {
                return view('api.invitepage', compact('finduserrefercode'));
            }
        }
    }
    /**
     * used to register a user in temporary table and send otp to user
     * No Authentication required
     * @return Response
     **/
    /**
     * @return json
     * @Url: /api/tempregisteruser/
     * @Method: POST
     * @Parameters
     *     
     *      email: "email"
     *      mobile: "mobile"
     *      password: "password"
     * 
     */
    public function tempregisteruser(request $request)
    {
        try {
            Helpers::setHeader(200);
            Helpers::timezone();
            $geturl = Helpers::geturl();
            $input = $request->all();
            $validator = Validator::make($input, [
                'email'             => 'required|unique:registerusers|email', 
                'password'          => 'required|min:4|max:45', 
                'mobile'      => 'required|numeric|unique:registerusers|digits:10', 
            ]);
            if ($validator->fails()){
                $error = $this->validationHandle($validator->messages());
                return response()->json(array(['success' => false, 'message' => $error])); 
            }else{
                // $input['code'] = rand(1000, 9999);
                $input['code'] = 1234;
                $datau['code'] = $input['code'];
                $datau['email'] =$input['email'];
                $datau['mobile'] =$input['mobile'];
                $datau['password'] = Hash::make($input['password']);
                $datau['auth_key'] = md5(Hash::make($input['password']));
                if ($request->get('refercode')) {
                    /* check in the register users table */
                    $checkrefercode = DB::table('registerusers')->where('refer_code', $request->get('refercode'))->select('id')->first();
                    if (empty($checkrefercode)) {
                        $json['success'] = false;
                        $json['message'] = 'The entered referred code is not valid. Please enter some valid refer code.';
                        return response()->json(array($json));
                        die;
                    } else {
                        $datau['refer_id'] = $checkrefercode->id;
                    }
                }
                $insertid = DB::connection('mysql2')->table('tempuser')->insertGetId($datau);

                $findlogin = DB::table('tempuser')->whereId($insertid)->first();

                // $message = "Your OTP is ".$input['code']." \r\n";
                $message = $input['code'] . " is the OTP for your " . (Helpers::settings()->project_name ?? '') . " account. NEVER SHARE YOUR OTP WITH ANYONE. " . (Helpers::settings()->project_name ?? '') . " will never call or message to ask for the OTP.";
                Helpers::sendTextSmsNew($message, $input['mobile']);
                $json['success'] = true;
                $json['message'] = 'OTP sent';
                $json['tempuser'] = base64_encode(serialize($insertid));
                return response()->json(array($json));   
            }
        } catch (\Exception $e) { 
            return response()->json(array(['success' => false, 'message' => $e->getMessage()])); 
        }
    }

    public function resendotp(Request $request)
    {
        Helpers::setHeader(200);
        // if($request->isMethod('post')){
        if ($request->get('tempuser')) {
            $gid = $request->get('tempuser');
            $id = unserialize(base64_decode($gid));
            $checkdata = DB::table('tempuser')->where('id', $id)->first();
            if (!empty($checkdata)) {
                $code = $checkdata->code;
                $mobile = $checkdata->mobile;
                $message = $code . " is the OTP for your " . (Helpers::settings()->project_name ?? '') . " account. NEVER SHARE YOUR OTP WITH ANYONE. " . (Helpers::settings()->project_name ?? '') . " will never call or message to ask for the OTP.";

                Helpers::sendTextSmsNew($message, $mobile);

                $json['success'] = true;
                $json['message'] = 'OTP Send';
                return response()->json(array($json));
                die;
            } else {
                $json['success'] = false;
                $json['message'] = 'Invalid id provide';
                return response()->json(array($json));
                die;
            }
        }
        if ($request->get('mobile')) {
            $mobile = $request->get('mobile');
            $checkdata1 = DB::table('registerusers')->where('mobile', $mobile)->first();
            if (!empty($checkdata1)) {
                $code1 = $checkdata1->code;
                $mobile1 = $checkdata1->mobile;
                $message1 = $code1 . "  is the OTP for your " . (Helpers::settings()->project_name ?? '') . " account. NEVER SHARE YOUR OTP WITH ANYONE. " . (Helpers::settings()->project_name ?? '') . " will never call or message to ask for the OTP.";
                Helpers::sendTextSmsNew($message1, $mobile1);
                $json['success'] = true;
                $json['message'] = 'OTP Send';
                return response()->json(array($json));
                die;
            } else {
                $json['success'] = false;
                $json['message'] = 'Invalid id provide';
                return response()->json(array($json));
                die;
            }
        }
        if ($request->get('email')) {
            $email = $request->get('email');
            $checkdata1 = DB::table('registerusers')->where('email', $email)->first();
            if (!empty($checkdata1)) {
                $emailsubject = 'Activate Account - ' . Helpers::settings()->project_name ?? '';
                $content = '<tr>
                        <td style="padding:20px 20px 0px 20px" align="left">
                        <div style="font-family:Roboto,Arial,Helvetica;font-size:15px;line-height:22px;color:#4e4e4e">Hello <strong>user</strong> Welcome to ' . (Helpers::settings()->project_name ?? '') . '.Join the best community of Fans. Come play our Fantasy Cricket.<br> To verify your email account please use this OTP <strong>' . $checkdata1->code . '</strong>
                        </div>
                        </td>
                    </tr>';
                $msg = Helpers::mailbody1($content);
                $datamessage['email'] =  $checkdata1->email;
                $datamessage['subject'] = $emailsubject;
                $datamessage['content'] = $msg;
                Helpers::mailsentFormat($checkdata1->$email, $emailsubject, $msg);
                $json['success'] = true;
                $json['message'] = 'OTP Send';
                return response()->json($json);
                die;
            } else {
                $json['success'] = false;
                $json['message'] = 'Invalid id provide';
                return response()->json($json);
                die;
            }
        } else {
            $json['success'] = false;
            $json['message'] = 'Unauthorized Request';
            return response()->json(array($json));
            die;
        }
        // }
    }
    /* to genrate the refercode */
    public static function generateAltraffleCode($username)
    {

        $number = '0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ';
        $charcode = substr($username, 0, 3);
        $numbercode = substr(str_shuffle(str_repeat($number, 3)), 0, 3);
        $refer_code = (Helpers::settings()->short_name ?? ''). '-' . $charcode . $numbercode;
        $findifExist = DB::table('registerusers')->where('refer_code', $refer_code)->count();
        if ($findifExist == 0) {
            return $refer_code;
        } else {
            $this->generateAltraffleCode();
        }
    }
    /* Api registeruser */

    /**
     * @return json
     * @Url: /api/registeruser/
     * @Method: POST
     * @Parameters
     *     
     *      otp: "text"
     *      username: "text"
     *
     */
    public function registerusers(request $request)
    {
        try {
            Helpers::setHeader(200);
            Helpers::timezone();
            $geturl = Helpers::geturl();
            $formdata = $request->all();
            $validator = Validator::make($formdata, [
                'tempuser'             => 'required', 
                'otp'          => 'required|min:4',
            ]);
            if ($validator->fails()){
                $error = $this->validationHandle($validator->messages());
                return response()->json(array(['success' => false, 'message' => $error])); 
            }else{
                $gid = $request->get('tempuser');
                $tempid = unserialize(base64_decode($gid));
                $code = $request->get('otp');
                /* check for code in temp users */
                $findifuser = DB::table('tempuser')->where('id', $tempid)->where('code', $code)->first();
                if (empty($findifuser)) {
                    $json['success'] = false;
                    $json['message'] = 'Invalid OTP';
                    return response()->json(array($json));
                    die;
                } else {
                    $input['email'] = $findifuser->email;
                    $input['mobile'] = $getnumber = $findifuser->mobile;
                    $user_verify['mobile_verify'] = 1;
                    $input['password'] = $findifuser->password;
                    $input['auth_key'] = $findifuser->auth_key;
                    $input['refer_id'] = $findifuser->refer_id;
                    $input['status'] = 'activated';
                    $input['code'] = '';
                    $ff = DB::table('registerusers')->where('email', $findifuser->email)
                    ->where('mobile', $findifuser->mobile)->first();
                    if (empty($ff)) {
                        $getinsertid = DB::connection('mysql2')->table('registerusers')->insertGetId($input);
                        $user_verify['userid'] = $getinsertid;
                        DB::connection('mysql2')->table('user_verify')->insert($user_verify);
                        if ($request->get('appid')) {
                            $finusers= DB::table('registerusers')->where('id', $getinsertid)->select('id')->first();
                            DB::connection('mysql2')->table('androidappid')->where('user_id',$getinsertid)->delete();
                            $this->insertAppId($finusers, $request->get('appid'));
                        }
                        $bonustype = 'mobile';
                        $this->registerprocess($request, $getinsertid, $bonustype);
                        DB::connection('mysql2')->table('tempuser')->where('id', $findifuser->id)->delete();
                    }
                     
                    # referred signup bonus
                    $this->giveReferBonus($getinsertid);
                    # referred signup bonus

                    /* delete from temp users */
                    $json['success'] = true;
                    $json['userid'] = $input['auth_key'];
                    $json['auth_key'] = $input['auth_key'];
                    $json['message'] = 'Registration Done';
                    return response()->json(array($json));
                }
            }
        } catch (\Exception $e) { 
            return response()->json(array(['success' => false, 'message' => $e->getMessage()])); 
        }
    }
    /* Api loginuser */
    /**
     * @return json
     * @Url: /api/loginuser/
     * @Method: POST
     * @Parameters
     *     
     *      username: "text"
     *      password: "password"
     *
     */
    public function loginuser(request $request)
    {
        try {
            Helpers::setHeader(200);
            Helpers::timezone();
            $geturl = Helpers::geturl();
            $formdata = $request->all();
            $validator = Validator::make($formdata, [
                'username'             => 'required', 
                'password'          => 'required|min:4',
            ]);
            if ($validator->fails()){
                $error = $this->validationHandle($validator->messages());
                return response()->json(array(['success' => false,'auth_key' => 0,'userid' => 0, 'message' => $error,])); 
            }else{
                $username = $request->get('username');
                $password = $request->get('password');
                $newmailaddress = Helpers::getnewmail($username);
                $findlogin = DB::table('registerusers')
                ->where(function ($query) use ($username, $newmailaddress) {
                    $query->where('email', '=', $username);
                    $query->orWhere('mobile', '=', $username);
                    $query->orwhere('email', '=', $newmailaddress);
                })->first();
                if (!empty($findlogin)) {
                    if (Hash::check($password, $findlogin->password)) {
                        if ($findlogin->status == 'activated') {
                            if ($request->get('appid')) {
                                DB::connection('mysql2')->table('androidappid')->where('user_id',$findlogin->id)->delete();
                                $this->insertAppId($findlogin, $request->get('appid'));
                            }
                            $userd = $findlogin->id . time() . rand(1000, 9999);
                            $authkey = md5(Hash::make($userd));
                            $userdata['auth_key'] = $authkey;
                            DB::connection('mysql2')->table('registerusers')->where('id', $findlogin->id)->update($userdata);
                            $json['success'] = true;
                            $json['auth_key'] = $authkey;
                            $json['userid'] = $authkey;
                            $json['type'] = !empty($findlogin->type) ? $findlogin->type . ' user' : 'normal user';
                            $json['message'] = 'login successfully';
                            return response()->json(array($json));
                        } else {
                            $json['success'] = false;
                            $json['auth_key'] = 0;
                            $json['userid'] = 0;
                            $json['message'] = 'You cannot login now in this account. Please contact to administartor.';
                            return response()->json(array($json));
                        }
                    } else {
                        $json['success'] = false;
                        $json['auth_key'] = 0;
                        $json['userid'] = 0;
                        $json['message'] = 'Invalid username or Password.';
                        return response()->json(array($json));
                    }
                }else{
                    $json['success'] = false;
                    $json['auth_key'] = 0;
                    $json['userid'] = 0;
                    $json['message'] = 'Invalid username or Password.';
                    return response()->json(array($json));
                }
            }
        } catch (\Exception $e) { 
            return response()->json(array(['success' => false,'auth_key' => 0,'userid' => 0, 'message' => $e->getMessage()])); 
        }
    }
    

    /* insert application app id */
    public function insertAppId($findlogin, $appid)
    {
        $appdata['user_id'] = $findlogin->id;
        $appdata['appkey'] = $appid;
        $findexist = DB::table('androidappid')->where('user_id', $findlogin->id)->where('appkey', $appid)->first();
        if (empty($findexist)) {
            DB::connection('mysql2')->table('androidappid')->insert($appdata);
        }
    }
    /* android version */
    public function getversion()
    {

        $version = DB::table('androidversion')->select('version', 'updation_points','ios')->first();
        if (!empty($version)) {
            $msgg['status'] = $version->version;
            $msgg['ios'] = $version->ios;
            $msgg['point'] = $version->updation_points;
            $msgg['success'] = true;
            echo json_encode(array($msgg));
            die;
        } else {
            $msgg['success'] = false;
            echo json_encode(array($msgg));
            die;
        }
        echo json_encode($msgg);
        die;
    }
    /*api for user full detail */
    /**
     * @return json
     * @Url: /api/userfulldetails/
     * @Method: GET
     * @Parameters
     *     
     *       auth_key: "text" in header(Authorization)
     *      
     *
     */
    public function userfulldetails(Request $request)
    {
        Helpers::setHeader(200);
        Helpers::timezone();
        $geturl = Helpers::geturl();
        $user = Helpers::isAuthorize($request);
        $user_id = $user->id;
        $totalbalances = 0;
        $verified = 0;
        $userdata = DB::table('registerusers')->where('id', $user_id)->first();
        if (!empty($userdata)) {
            $userfulldata = DB::table('user_verify')->where('userid', $user_id)->first();
            $findtotalbalanace = DB::table('userbalance')->where('user_id', $user_id)->first();
            if (!empty($findtotalbalanace)) {
                $totalbalances = number_format($findtotalbalanace->balance + $findtotalbalanace->winning + $findtotalbalanace->bonus, 2, ".", "");
                $balance = $findtotalbalanace->balance;
                $msgg['addcashamount'] = number_format($findtotalbalanace->balance, 2, ".", "");
                $msgg['winningamount'] = number_format($findtotalbalanace->winning, 2, ".", "");
                $msgg['bonusamount'] = number_format($findtotalbalanace->bonus, 2, ".", "");
            }
            if ($userfulldata->email_verify == 1 && $userfulldata->mobile_verify == 1 && $userfulldata->pan_verify == 1 && $userfulldata->bank_verify == 1) {
                $verified = 1;
            }
            $msgg['id'] = $userdata->id;
            $msgg['username'] = $userdata->username;
            $msgg['mobile'] = ($userdata->mobile!='')?$userdata->mobile:'';
            $msgg['email'] = ($userdata->email!='')?$userdata->email:'';
            $msgg['pincode'] = $userdata->pincode;
            $msgg['address'] = $userdata->address;
            if ($userdata->dob != '0000-00-00' && $userdata->dob != '') {
                $msgg['dob'] = date('d-M-Y', strtotime($userdata->dob));
            } else {
                $msgg['dob'] = '';
            }
            if ($userdata->dob == '0000-00-00' || $userdata->dob == '') {
                $msgg['DayOfBirth'] = "12";
                $msgg['MonthOfBirth'] = "10";
                $msgg['YearOfBirth'] = "1970";
            } else {
                $msgg['DayOfBirth'] = date('d', strtotime($userdata->dob));
                $msgg['MonthOfBirth'] = date('m', strtotime($userdata->dob));
                $msgg['YearOfBirth'] = date('Y', strtotime($userdata->dob));
            }
            $msgg['gender'] = $userdata->gender;
            $result = $userdata->image;
            if (empty($result)) {
                $msgg['image'] = $geturl . 'public/' . Helpers::settings()->user_image ?? '';
            } else {
                if($result=='null'){
                    $msgg['image'] = $geturl . 'public/' . Helpers::settings()->user_image ?? '';
                }else{
                    $msgg['image'] = $result;
                }
                
            }
            $msgg['walletamaount'] = $totalbalances;
            $msgg['verified'] = $verified;
            $msgg['activation_status'] = $userdata->status;
            $msgg['state'] = ucwords($userdata->state);
            $msgg['team'] = $userdata->team;
            $msgg['teamfreeze'] = ($userdata->team != "")?1:0;
            $msgg['emailfreeze'] = ($userdata->email != "")?1:0;
            $msgg['statefreeze'] = ($userfulldata->bank_verify != "")?1:0;
            $msgg['mobilefreeze'] = ($userfulldata->mobile_verify != "")?1:0;
            $msgg['dobfreeze'] = ($userfulldata->pan_verify != "")?1:0;
            $msgg['refer_code'] = $userdata->refer_code;
            
            $getreferuser = DB::table('registerusers')->where('id',$userdata->refer_id)->select('refer_code')->first();
            if(!empty($getreferuser)){
                $msgg['refer_usercode'] = $getreferuser->refer_code;
            }else{
                $msgg['refer_usercode'] = 0;                    
            }

            $findchallenge = DB::table('joinedleauges')->where('userid', $user_id)->count();
            $msgg['totalchallenges'] = $findchallenge;
            $findmatches = DB::table('joinedleauges')->where('userid', $user_id)->distinct('matchkey')->count('matchkey');
            $msgg['totalmatches'] = $findmatches;
            $findseries = DB::table('joinedleauges')->join('listmatches', 'listmatches.matchkey', '=', 'joinedleauges.matchkey')->where('userid', $user_id)->distinct('series')->count('series');
            $msgg['totalseries'] = $findseries;
            $msgg['maxContestTeams'] = 99;
            $findwinners = DB::table('finalresults')->where('userid', $user_id)->count();
            $msgg['totalwinning'] = $findwinners;
            $msgg['balance'] = $balance;
            $msgg['totalbonus'] = number_format($findtotalbalanace->bonus, 2, ".", "");
            $msgg['totalwon'] = number_format($findtotalbalanace->winning, 2, ".", "");
            $msgg['success'] = true;
            return response()->json(array($msgg));
            die;
        }
    }
    public function logoutuser(Request $request)
    {
        Helpers::accessrules();
        $user = Helpers::isAuthorize($request);
        if ($user) {
            $user_id = $user->id;
            $appdata['user_id'] = $user_id;
            if ($request->has('appkey')) {
                $appid = $appdata['appkey'] = $request->get('appkey');
                $findexist = DB::table('androidappid')->where('user_id', $user_id)->where('appkey', $request->get('appkey'))->first();
                if (!empty($findexist)) {
                    DB::connection('mysql2')->table('androidappid')->where('id', $findexist->id)->delete();
                }
            }
            $msgg['success'] = true;
            echo json_encode(array($msgg));
            die;
        }
    }
    /*api for uploading user profile image */
    /*
     * @return json
     * @Url: /api/imageUploadUser/
     * @Method: POST
     * @Parameters
     *     
     *       image : "file"
     *       auth_key: "text" in header(Authorization)
     *      
     *
     */
    public function imageUploadUser(Request $request)
    {
        try {
            Helpers::setHeader(200);
            Helpers::timezone();
            $geturl = Helpers::geturl();
            $input = $request->all();
            /*retrive auth key from header*/
            $user = Helpers::isAuthorize($request);
            $id = $user->id;
            unset($input['auth_key']);
            if ($request->get('image')) {
                $imageName = 'user-profile' . rand(1000, 9999) . '' . time() . '.jpg';
                $imsrc = base64_decode($request->get('image'));
                file_put_contents('./public/uploads/user-profile/' . $imageName, $imsrc);
                $data1['image'] = $data['image'] = $geturl . 'public/uploads/user-profile/' . $imageName;
            }
            DB::connection('mysql2')->table('registerusers')->where('id', $id)->update($data);
            Helpers::setHeader(200);
            $msgg['url'] =  $data['image'];
            $msgg['success'] = true;
            $msgg['message'] = 'Your profile has been updated successfully.';
            echo json_encode(array($msgg));
            die;
        } catch (\Exception $e) { 
            return response()->json(array(['success' => false, 'message' => $e->getMessage()])); 
        }
    }
     /*Give Refer Bonus*/
    public function giveReferBonus($userid){
        $finduserbonus =DB::table('user_verify')->where('userid',$userid)->select('bankbonus','userid','referbonus')->first();
        $result= DB::table('registerusers')->where('id',$userid)->select('*')->first();
        if(!empty($result)){
            if($result->refer_id!=0 && $finduserbonus->referbonus==0){
                $userdata = DB::table('userbalance')->where('user_id',$result->refer_id)->first();
                $referbons = DB::table('general_tabs')->where('type','=','refer_bonus')->first();
                if(!empty($userdata)){
                    $datainseert['user_id'] = $result->refer_id;
                    $datainseert['bonus'] = $userdata->bonus+$referbons->amount;
                    DB::connection('mysql2')->table('userbalance')->where('user_id',$result->refer_id)->update($datainseert);
                    $transactionsdata['transaction_id'] = (Helpers::settings()->short_name ?? ''). '-EBONUS-' . rand(1000, 9999);
                    $transactionsdata['type'] = 'Referred Signup bonus';
                    /* entry in refered table */
                    $bonus_refered['userid'] = $result->id;
                    $bonus_refered['fromid'] =$result->refer_id;
                    $bonus_refered['amount'] = $referbons->amount;
                    $bonus_refered['type'] = 'Refer signup bonus';
                    $bonus_refered['txnid'] = $transactionsdata['transaction_id'];
                    DB::connection('mysql2')->table('bonus_refered')->insert($bonus_refered);
                    $getbonusrefer['referbonus'] = 1;
                    DB::connection('mysql2')->table('user_verify')->where('userid',$result->id)->update($getbonusrefer);
                }
                $findlastow = DB::table('userbalance')->where('user_id',$result->refer_id)->first();
                if(!empty($findlastow)){
                    $total_available_amt = $findlastow->balance+$findlastow->winning+$findlastow->bonus;
                    $bal_fund_amt = $findlastow->balance;
                    $bal_win_amt = $findlastow->winning;
                    $bal_bonus_amt = $findlastow->bonus;
                }
                $transactionsdata['transaction_by'] = 'QW11';
                $transactionsdata['amount'] = $referbons->amount;
                $transactionsdata['userid'] = $result->refer_id;
                $transactionsdata['bonus_amt'] = $referbons->amount;
                $transactionsdata['paymentstatus'] = 'confirmed';
                $transactionsdata['bal_fund_amt'] = $bal_fund_amt;
                $transactionsdata['bal_win_amt'] = $bal_win_amt;
                $transactionsdata['bal_bonus_amt'] = $bal_bonus_amt;
                $transactionsdata['total_available_amt'] = $total_available_amt;
                DB::connection('mysql2')->table('transactions')->insert($transactionsdata);
                $data21['userid']=$result->refer_id;
                $data21['seen']=0;
                $titleget="Congratulations!";
                $type1="individual";
                $msg  =  $data21['title']='You have got ₹ ' .$referbons->amount.' for referring your friend on ' . (Helpers::settings()->project_name ?? '') . ' app.';
                DB::connection('mysql2')->table('notifications')->insert($data21);
                Helpers::sendnotification($titleget,$msg,'',$result->refer_id);
            }
        }
        return true;
    }
    /*api for edit user profile */
    /**
     * @return json
     * @Url: /api/editprofile/
     * @Method: POST
     * @Parameters
     *     
     *      username : "text"
     *      dob : "text"
     *      gender :"text"
     *      pincode :"number"
     *      address : "text"
     *      state : "text"
     *      team : "text"
     *      auth_key: "text" in header(Authorization)
     *      
     *
     */
    public function editprofile(Request $request)
    {
        try {
            $geturl = Helpers::geturl();
            Helpers::timezone();
            Helpers::setHeader(200);
            if ($request->isMethod('post')) {
                $input = $request->all();
                /* check authentication*/
                $user = Helpers::isAuthorize($request);
                $id = $user->id;
                unset($input['auth_key']);
                $data = array();
                $msgg = array();
                if (isset($input['username'])) {
                    $data['username'] = $input['username'];
                }
                if (isset($input['dob'])) {
                    $data['dob'] = $input['dob'];  //  Dob Must be in Y-m-d
                }
                if (isset($input['gender'])) {
                    $data['gender'] = $input['gender'];
                }
                if (isset($input['email'])) {
                    $data['email'] = $input['email'];
                }
                if (isset($input['mobile'])) {
                    $data['mobile'] = $input['mobile'];
                }
                if (isset($input['state'])) {
                    $data['state'] = $input['state'];
                }
                if (isset($input['address'])) {
                    $data['address'] = $input['address'];
                }
                if (isset($input['pincode'])) {
                    $data['pincode'] = $input['pincode'];
                }
                if (isset($input['team'])) {
                    // $data['team'] = str_replace(' ', '', $_POST['team']);
                    $data['team'] = $input['team'];

                    $restrictarray = ['madar', 'bhosadi', 'bhosd', 'aand', 'jhaant', 'jhant', 'fuck', 'chut', 'chod', 'gand', 'gaand', 'choot', 'faad', 'loda', 'Lauda', 'maar', '*fuck*', '*chut*', '*chod*', '*gand*', '*gaand*', '*choot*', '*faad*', '*loda*', '*Lauda*', '*maar*'];
                    if (in_array($data['team'], $restrictarray)) {
                        Helpers::setHeader(200);
                        $msgg['success'] = false;
                        $msgg['message'] = 'You cannot use abusive words in your team name';
                        echo json_encode(array($msgg));
                        die;
                    }
                    foreach ($restrictarray as $raray) {
                        if (strpos(strtolower($data['team']), $raray) !== false) {
                            Helpers::setHeader(200);
                            $msgg['success'] = false;
                            $msgg['message'] = 'You cannot use abusive words in your team name';
                            echo json_encode(array($msgg));
                            die;
                        }
                    }
                    
                    // refer code Check 
                    if($request->get('refercode')){
                        $refercode = $request->get('refercode');
                        $getrefercode = DB::table('registerusers')->where('refer_code',$refercode)->select('id')->first();
                        if(empty($getrefercode)){
                            Helpers::setHeader(200);
                            $json['message'] = 'The entered refered code is not valid. Please enter some valid refer code.';
                            $json['success'] = false;
                            $json['mobile_status'] = 0;
                            return response()->json(array($json));
                        }
                        else{
                            $data['refer_id']= $getrefercode->id;
                        }
                    }

                    $findteamexist = DB::table('registerusers')->where('team', $data['team'])->where('id', '!=', $id)->first();
                    if (!empty($findteamexist)) {
                        Helpers::setHeader(200);
                        $msgg['success'] = false;
                        $msgg['message'] = 'This Team Name Is Already Exist. Please Use some Different Name For Your Team';
                        echo json_encode(array($msgg));
                        die;
                    }
                }
                DB::connection('mysql2')->table('registerusers')->where('id', $id)->update($data);
                // Start Give Refer Bonus
                $this->giveReferBonus($id);
                //End Start Refer Bonus
                Helpers::setHeader(200);
                $msgg['success'] = true;
                $msgg['message'] = "Profile updated successfully";
                echo json_encode(array($msgg));
                die;
            } else {
                Helpers::setHeader(200);
                $msgg['success'] = false;
                $msgg['message'] = 'Unauthorized request';
                echo json_encode(array($msgg));
                die;
            }
        } catch (\Exception $e) { 
            return response()->json(array(['success' => false, 'message' => $e->getMessage()])); 
        }
    }
    // api for forgot password //
    /**
     * @return json
     * @Url: /api/forgotpassword/
     * @Method: POST
     * @Parameters
     *     
     *      username : "text"
     *      auth_key : no header is required
     *      
     *
     */
    public function forgotpassword(Request $request)
    {
        try {
            Helpers::setHeader(200);
            if ($request->isMethod('post')) {
                $username = $request->get('username');
                $newmailaddress = Helpers::getnewmail($username);
                $finddetails = DB::table('registerusers')->where(function ($query) use ($username, $newmailaddress) {
                    $query->where('email', '=', $username);
                    $query->orWhere('email', '=', $newmailaddress);
                })->orWhere('mobile', $username)->first();
                $json = array();
                if (!empty($finddetails)) {
                    if ($finddetails->status == 'activated') {
                        // $input['code'] = rand(1000, 9999);
                          $input['code'] = 1234;
                        DB::connection('mysql2')->table('registerusers')->where('id', $finddetails->id)->update($input);
                        if ($finddetails->mobile == $username) {
                            $message = $input['code'] . " is the OTP for your " . (Helpers::settings()->project_name ?? '') . " account. NEVER SHARE YOUR OTP WITH ANYONE. " . (Helpers::settings()->project_name ?? '') . " will never call or message to ask for the OTP.";
                            Helpers::sendTextSmsNew($message, $finddetails->mobile);
                            $json['success'] = true;
                            $json['message'] = 'OTP sent on your mobile number.';
                            return response()->json($json);
                        }
                        if ($username == $finddetails->email || $newmailaddress == $finddetails->email) {
                            /* send mail */
                            $emailsubject = 'Reset Password - ' . Helpers::projectName();
                            $datamessage['email'] = $username;
                            $datamessage['subject'] = $emailsubject;
                            $datamessage['content'] = Helpers::mailbody($input['code']);
                            Helpers::mailSmtpSend($datamessage);
                            /* end code for send mail */
                            $json['success'] = true;
                            $json['message'] = 'We have sent you an OTP on your registered email address. Please check your email and reset your password.';
                            return response()->json($json);
                        }
                    } else {
                        $json['success'] = false;
                        $json['message'] = 'Sorry you cannot reset your password now. Please contact to administrator.';
                        return response()->json($json);
                    }
                } else {
                    $json['success'] = false;
                    $json['message'] = 'You have entered invalid details to reset your password.';
                    return response()->json($json);
                }
            } else {
                $msgg['success'] = false;
                $msgg['message'] = 'Unauthorized request';
                echo json_encode($msgg);
                die;
            }

        } catch (\Exception $e) { 
            return response()->json(array(['success' => false, 'message' => $e->getMessage()])); 
        }
    }
    /* match code to reset password */
    /**
     * @return json
     * @Url: /api/matchCodeForReset/
     * @Method: POST
     * @Parameters
     *     
     *      username : "text"
     *      code : "number"
     *      auth_key : no header is required
     *      
     *
     */
    public function matchCodeForReset(Request $request)
    {
        try{
            Helpers::setHeader(200);
            if ($request->isMethod('post')) {
                $input = $request->all();
                /* check authentication*/
                $username = $request->get('username');
                $username = Helpers::getnewmail($username);
                $code = $request->get('code');
                $findlogin = DB::table('registerusers')->where(function ($query) use ($username) {
                    $query->where('mobile', '=', $username);
                    $query->orwhere('email', '=', $username);
                })->where('code', $code)->first();
                if (!empty($findlogin)) {
                    
                    $json['success'] = true;
                    $json['token'] = Crypt::encrypt($findlogin->id);
                    $json['message'] = 'Otp matched.';
                    return response()->json($json);
                    die;
                } else {
                    $json['success'] = false;
                    $json['token'] = 0;
                    $json['message'] = 'Invalid OTP.';
                    return response()->json($json);
                    die;
                }
            } else {
                $msgg['success'] = false;
                $msgg['message'] = 'Unauthorized request';
                echo json_encode($msgg);
                die;
            }

        } catch (\Exception $e) { 
            return response()->json(array(['success' => false, 'message' => $e->getMessage()])); 
        }
    }
    /* reset your password now */
    /**
     * @return json
     * @Url: /api/resetpassword/
     * @Method: POST
     * @Parameters
     *     
     *      password : "text"
     *      token : "text"
     *      code : "number"
     *      auth_key : no header is required
     *      
     *
     */
    public function resetpassword(Request $request)
    {
        Helpers::setHeader(200);
        if ($request->isMethod('post')) {
            $input = $request->all();
            $gettoken = Crypt::decrypt($request->get('token'));
            $password = $request->get('password');
            $data['code'] = $request->get('code');
            $findloginforcode = DB::table('registerusers')->where('id', $gettoken)->where('code', $request->get('code'))->first();
            if (!empty($findloginforcode)) {
                $data['code'] = 0;
                $data['password'] =  Hash::make($password);
                $data['auth_key'] = md5(Hash::make($password));
                $findlogin = DB::connection('mysql2')->table('registerusers')->where('id', $gettoken)->update($data);
                $json['success'] = true;
                $json['message'] = 'Change password successfully';
                return response()->json($json);
            } else {
                $json['success'] = false;
                $json['message'] = 'Invalid token';
                return response()->json($json);
            }
        } else {
            $msgg['success'] = false;
            $msgg['message'] = 'Unauthorized request';
            echo json_encode($msgg);
            die;
        }
    }
    // change password //
    /**
     * @return json
     * @Url: /api/changepassword/
     * @Method: POST
     * @Parameters
     *     
     *      oldpassword : "text"
     *      newpassword : "text"
     *      confirmpassword : "text"
     *      auth_key : in header(Authorization)
     *      
     *
     */
    public function changepassword(Request $request)
    {
        Helpers::setHeader(200);
        Helpers::timezone();
        if ($request->isMethod('post')) {
            $input = $request->all();
            /* check authentication*/
            $user = Helpers::isAuthorize($request);
            unset($input['auth_key']);
            $getid = $user->id;
            $newpassword = "";
            $oldpassword = $input['oldpassword'];
            $newpassword = $input['newpassword'];
            $confirmpassword = $input['confirmpassword'];
            if ($newpassword == $confirmpassword) {
                $password = $newpassword;
                $findusers = DB::table('registerusers')->where('id', $getid)->select('id', 'password')->first();
                if (!empty($findusers)) {
                    if (Hash::check($oldpassword, $findusers->password)) {
                        $data['password'] =  Hash::make($password);
                        $data['auth_key'] = md5(Hash::make($password));
                        DB::connection('mysql2')->table('registerusers')->where('id', $findusers->id)->update($data);
                        $json['success'] = true;
                        $json['auth_key'] = $data['auth_key'];
                        $json['message'] = 'Password Changed Successfully';
                        return response()->json(array($json));
                    } else {
                        $json['success'] = false;
                        $json['message'] = 'Old password does not matched to previous password.';
                        return response()->json(array($json));
                    }
                } else {
                    $json['success'] = false;
                    $json['message'] = 'password is not exsited in database.';
                    return response()->json(array($json));
                }
            } else {
                $response['success'] = false;
                $response['message'] = 'Confirm password and new not matched';
                return response()->json(array($response));
            }
        } else {
            $msgg['success'] = false;
            $msgg['message'] = 'Unauthorized request';
            echo json_encode(array($msgg));
            die;
        }
    }
    // register process //
    /**
     *
     *      this function is called by registeruser function
     *      parameters :
     *                   id : newly added user
     *      
     *
     */
    public function registerprocess($request, $getinsertid, $bonustype)
    {
        // check for a partner system //
        $update['refer_code'] = (Helpers::settings()->short_name ?? '') . rand(10, 99) . $getinsertid;
        // end for partner system //
        DB::connection('mysql2')->table('registerusers')->where('id', $getinsertid)->update($update);
        // update in balance table//
        $blns['user_id'] = $getinsertid;
        $blns['balance'] = 0;
        $findifbalance = DB::table('userbalance')->where('user_id', $getinsertid)->first();
        if (empty($findifbalance)) {
            DB::connection('mysql2')->table('userbalance')->insert($blns);
        }
        // Bonus Given //
        $this->getbonus($getinsertid, $bonustype);
        if ($request->get('androidid')) {
            $this->getbonus($getinsertid, 'android');
        }
        return 1;
    }
    // change password //
    /**
     * @return json
     * @Url: /api/getbonus/
     * @Method: POST
     * @Parameters
     *     
     *      auth_key : in header(Authorization)
     *      
     *
     */
    public static function getbonus($userid, $type)
    {
        Helpers::timezone();
        $finduser  = DB::table('user_verify')->where('userid', $userid)->first();
        $refer = DB::table('general_tabs')->select('*')->where('type', '=', 'refer_bonus')->first();
        $signup = DB::table('general_tabs')->select('*')->where('type', '=', 'signup_bonus')->first();
        $pan = DB::table('general_tabs')->select('*')->where('type', '=', 'pan_bonus')->first();
        $bank = DB::table('general_tabs')->select('*')->where('type', '=', 'bank_bonus')->first();
        $mobile = DB::table('general_tabs')->select('*')->where('type', '=', 'mobile_bonus')->first();
        $email = DB::table('general_tabs')->select('*')->where('type', '=', 'email_bonus')->first();
        $ifbonusgets = 0;
        switch ($type) {
            case ('signup'):
                $data['bonus'] = $amount =  $signup->amount;
                if ($finduser->signupbonus == 0) {
                    $ifbonusgets = 1;
                }
                break;

            case ('refer');
                $data['refer'] = $amount = $refer->amount;
                if ($finduser->referbonus == 0) {
                    $ifbonusgets = 1;
                }
                break;

            case ('pan'):
                $data['bonus'] = $amount = $pan->amount;
                if ($finduser->panbonus == 0) {
                    $ifbonusgets = 1;
                }
                break;

            case ('bank'):
                $data['bonus'] = $amount = $bank->amount;
                if ($finduser->bankbonus == 0) {
                    $ifbonusgets = 1;
                }
                break;
            case ('mobile'):
                $data['bonus'] = $amount = $mobile->amount;
                if ($finduser->mobilebonus == 0) {
                    $ifbonusgets = 1;
                }
                break;
            case ('email'):
                $data['bonus'] = $amount = $email->amount;
                if ($finduser->email_verify == 0) {
                    $ifbonusgets = 1;
                }
                break;

            case ('facebook'):
                $data['bonus'] = $amount =  0;
                $ifbonusgets = 1;
                break;

            case ('twitter'):
                $data['bonus'] = $amount =  0;
                $ifbonusgets = 1;
                break;

            case ('whatsapp'):
                $data['bonus'] = $amount =  0;
                $ifbonusgets = 1;
                break;

            default:
                break;

        }
        /* bonus to main user */
        if ($ifbonusgets == 1) {
            UserApiController::givebonusToUser($ifbonusgets, $userid, $finduser, $type, $data);
        }
    }
    // common function to give the bonus to users //
    /**
     * @return json
     * @Url: /api/givebonusToUser/
     * @Method: POST
     * @Parameters
     *     
     *      auth_key : in header(Authorization)
     *      
     *
     */
    public static function givebonusToUser($ifbonusget, $userid, $finduser, $type, $data, $referes = '')
    {
        $getdata = array();
        $amount = $data['bonus'];
        $transactionsdata = array();
        $transactionsdata['transaction_id'] = (Helpers::settings()->short_name ?? '') . '-EBONUS-' . rand(1000, 9999);
        if ($ifbonusget == 1) {
            $userid = $getdata['userid'] = $userid;
            $userdata = array();
            $datainseert = array();
            $findlastow = array();
            $notificationdata = array();
            $userdata = DB::table('userbalance')->where('user_id', $userid)->first();
            if (!empty($userdata)) {
                $datainseert['user_id'] = $getdata['userid'];
                $datainseert['bonus'] = number_format($userdata->bonus + $data['bonus'], 2, ".", "");
                DB::connection('mysql2')->table('userbalance')->where('user_id', $userid)->update($datainseert);
            }
            $bal_bonus_amt = 0;
            $bal_win_amt = 0;
            $bal_fund_amt = 0;
            $total_available_amt = 0;
            $findlastow = DB::table('userbalance')->where('user_id', $userid)->first();
            if (!empty($findlastow)) {
                $total_available_amt = number_format($findlastow->balance + $findlastow->winning + $findlastow->bonus, 2, ".", "");
                $bal_fund_amt = number_format($findlastow->balance, 2, ".", "");
                $bal_win_amt = number_format($findlastow->winning, 2, ".", "");
                $bal_bonus_amt = number_format($findlastow->bonus, 2, ".", "");
            }
            $data21['userid'] =  $transactionsdata['userid'] = $userid;
            if ($type == 'mobile') {
                $msg  =  $data21['title'] = 'You have got ₹' . $amount . ' for mobile bonus.';
                $transactionsdata['type'] = 'Mobile bonus';
                $getbonusu['mobilebonus'] = 1;
                DB::connection('mysql2')->table('user_verify')->where('userid', $userid)->update($getbonusu);
                $titleget = 'Mobile bonus';
            } else if ($type == 'email') {
                $msg  =  $data21['title'] = 'You have got ₹' . $amount . ' for email bonus.';
                $transactionsdata['type'] = 'Email bonus';
                $getbonusu['signupbonus'] = 1;
                DB::connection('mysql2')->table('user_verify')->where('userid', $userid)->update($getbonusu);
                $titleget = 'Email bonus';
            } else if ($type == 'android') {
                $transactionsdata['type'] = 'Application download bonus';
                $getbonusu['androidbonus'] = 1;
                DB::connection('mysql2')->table('user_verify')->where('userid', $userid)->update($getbonusu);
                $titleget = 'Android bonus';
            } else if ($type == 'pan') {
                $msg  =  $data21['title'] = 'You have got ₹' . $amount . ' for pan bonus.';
                $transactionsdata['type'] = ucwords($type) . ' verification pan bonus';
                $getbonusu['panbonus'] = 1;
                DB::connection('mysql2')->table('user_verify')->where('userid', $userid)->update($getbonusu);
                $titleget = 'Verify Pan bonus';
            } else if ($type == 'bank') {
                $msg  =  $data21['title'] = 'You have got ₹' . $amount . ' for bank bonus.';
                $transactionsdata['type'] = ucwords($type) . ' verification bank bonus';
                $getbonusu['bankbonus'] = 1;
                DB::connection('mysql2')->table('user_verify')->where('userid', $userid)->update($getbonusu);
                $titleget = 'Verify Bank bonus';
            } else if ($type == 'facebook' || $type == 'twitter' || $type == 'instagram') {
                $msg  =  $data21['title'] = 'You have got ₹' . $amount . ' for share social bonus.';
                $transactionsdata['type'] = 'Share via ' . ucwords($type) . ' Registration bonus';
                $titleget = 'Share social bonus';
            }
            $transactionsdata['transaction_by'] = Helpers::settings()->short_name ?? '';
            $transactionsdata['amount'] = $amount;
            $transactionsdata['bonus_amt'] = $amount;
            $transactionsdata['paymentstatus'] = 'confirmed';
            $transactionsdata['bal_fund_amt'] = $bal_fund_amt;
            $transactionsdata['bal_win_amt'] = $bal_win_amt;
            $transactionsdata['bal_bonus_amt'] = $bal_bonus_amt;
            $transactionsdata['total_available_amt'] = $total_available_amt;
            DB::connection('mysql2')->table('transactions')->insert($transactionsdata);
            DB::connection('mysql2')->table('notifications')->insert($data21);

            $result = Helpers::sendnotification($titleget, $msg, '', $userid);
        }
    }
    // social register or login //
    /**
     * @return json
     * @Url: /api/getUsableBalance/
     * @Method: POST
     * @Parameters
     *     
     *      name:"text";
     *      email:"email";
     *      image:"file";
     *      dob:"date";
     *
     */
    public function socialauthentication(Request $request){
        $geturl = Helpers::geturl();
        Helpers::setHeader(200);
        Helpers::timezone();
        if($request->isMethod('post')){
            $email = $request->get('email');
            $name = $request->get('name');

            if(empty($email) || empty($name)){
                Helpers::setHeader(200);
                    $json['userid'] = 0;
                    $json['success'] = false;
                    $json['message'] = 'name and email is required.';
                    return response()->json($json);
            }else{
                if($request->get('image')){
                    if($request->get('image')!=""){
                        $image = $request->get('image');
                    }
                }
                $newmailaddress = Helpers::getnewmail($email);
                $findlogin =  DB::table('registerusers')->where(function($q)  use ($newmailaddress,$email){
                                 $q->where('email',$newmailaddress)->orWhere('email',$email);
                             })->first();
                if(!empty($findlogin)){
                    $checkverify = DB::table('user_verify')->where('userid',$findlogin->id)->first();
                    // echo '';print_r($checkverify);die;
                    
                    if($findlogin->status=='activated'){
                        LOG::info($request->get('appid'));
                        if($request->get('appid')){
                             DB::connection('mysql2')->table('androidappid')->where('user_id',$findlogin->id)->delete();
                            $this->insertAppId($findlogin,$request->get('appid'));
                        }
                        
                        $userd = $findlogin->id.time().rand(1000,9999);
                        $authkey = md5(Hash::make($userd));
                        $userdata['auth_key'] = $authkey;
                        DB::connection('mysql2')->table('registerusers')->where('id',$findlogin->id)->update($userdata);
                        
                        Helpers::setHeader(200);
                        $json['status'] = true;
                        if($checkverify->mobile_verify==1){
                            $json['mobile_status'] = 1;
                        }else{
                            $json['mobile_status'] = 0;
                        }
                        $json['userid'] = $authkey;
                        $json['success'] = true;
                        $json['message'] = 'login successfully';
                        return response()->json($json);
                    }else{
                        Helpers::setHeader(200);
                        $json['userid'] = 0;
                        $json['success'] = false;
                        $json['userid'] = $findlogin->auth_key;
                        $json['message'] = 'You cannot login now in this account. Please contact to administartor.';
                        return response()->json($json);
                    }  
                }
                else{
                    $data['email'] = $newmailaddress;
                    $data['username'] = $name;
                    if(!empty($image)){
                        $data['image'] = $image;
                    }
                    $data['auth_key'] =md5(Hash::make($newmailaddress));
                    $data['status'] = 'activated';
                    if($request->get('dob')){
                        if($request->get('dob')!=""){
                            $data['dob'] = date('Y-m-d',strtotime($request->get('dob')));
                        }
                    }
                    $ff = DB::table('registerusers')->where('email',$request->get('email'))->first();
                    if(empty($ff)){
                        $getinsertid = DB::connection('mysql2')->table('registerusers')->insertGetId($data);
                        $user_verify['userid'] = $getinsertid;
                        DB::connection('mysql2')->table('user_verify')->insert($user_verify);
                        $inserteddata= DB::table('registerusers')->where('id',$getinsertid)->first();
                        $bonustype='email';
                        $this->registerprocess($request,$getinsertid,$bonustype);
                        $datad['email_verify'] = 1;
                        DB::connection('mysql2')->table('user_verify')->where('userid',$getinsertid)->update($datad);
                    }
                    Helpers::setHeader(200);
                    $json['success'] = true;
                    $json['mobile_status'] = 0;
                    $json['userid'] = $inserteddata->auth_key;
                    $json['message'] = 'login successfully';
                    return response()->json($json);
                }
            }
        }else{
            Helpers::setHeader(200);
            $json['success'] = false;
            $json['message'] = 'Unauthorized Request';
            return response()->json(array($json));
            die;
        }
    }
    /****************** Verification api ************************/


    // send pan verifiction request //
    /**
     * @return json
     * @Url: /api/panrequest/
     * @Method: POST
     * @Header: Authorization (in header)
     * @Parameters
     *     
     *      pan_name:"text";
     *      pan_dob:"text";
     *      image:"file";
     *      pan_number:"text";
     *
     */
    public function panrequest(Request $request)
    {
        try {
            if ($request->isMethod('post')) {
                $geturl = Helpers::geturl();
                Helpers::setHeader(200);
                $geturl = Helpers::geturl();
                $input = $request->all();
                $validator = Validator::make($input, [
                    'panname'             => 'required', 
                    'dob'          => 'required', 
                    'pannumber'      => 'required', 
                ]);
                if ($validator->fails()){
                    $error = $this->validationHandle($validator->messages());
                    return response()->json(array(['success' => false, 'message' => $error])); 
                }else{
                    $user = Helpers::isAuthorize($request);
                    $data = array();
                    $input = $request->all();
                    /* get all the params */
                    $id = $user->id;
                    $data['userid'] = $id;
                    $data['pan_name'] = strtoupper($request->get('panname'));
                    $data['pan_dob'] = $request->get('dob');
                    $data['pan_number'] = strtoupper($request->get('pannumber'));
                    $data['status'] = 0;
                    $findplannumber = DB::table('pancard')->where('pan_number', $data['pan_number'])->where('userid', '!=', $data['userid'])->first();
                    if (!empty($findplannumber)) {
                        $msgg['success'] = false;
                        $msgg['message'] = 'This pan card number is already exist.';
                        return response()->json(array($msgg));
                    }
                    //upload panfile//
                    $data['image'] = "";
                    if ($request->get('image')) {
                        $imageName = 'pancard-' . rand(1000, 9999) . '' . time() . '.jpg';
                        $imsrc = base64_decode($request->get('image'));
                        $ffs =   file_put_contents('./public/uploads/pancard/' . $imageName, $imsrc);
                        $data['image'] = $imageName;
                    }

                    if (file_exists(public_path('uploads/pancard/' . $imageName))) {
                        /* find if already exist and entry in pancard table*/
                        $req['pan_verify'] = '0';
                        DB::connection('mysql2')->table('user_verify')->where('userid', $data['userid'])->update($req);
                        $findexist =  DB::table('pancard')->where('userid', $id)->first();
                        if (!empty($findexist)) {
                            DB::connection('mysql2')->table('pancard')->where('id', $findexist->id)->update($data);
                        } else {
                            DB::connection('mysql2')->table('pancard')->insert($data);
                        }
                        /* return final data */
                        $msgg['success'] = true;
                        $msgg['message'] = 'Your pan card request has been successfully submitted.';
                        return response()->json(array($msgg));
                    } else {
                        $msgg['success'] = false;
                        $msgg['message'] = 'Data Not updated properly please update again';
                        return response()->json(array($msgg));
                    }   
                }
            } else {
                $msgg['success'] = false;
                $msgg['message'] = 'Unauthorized request';
                echo json_encode(array($msgg));
                die;
            }
        } catch (\Exception $e) { 
            return response()->json(array(['success' => false, 'message' => $e->getMessage()])); 
        }
    }
    // check for pan card details //
    /**
     * @return json
     * @Url: /api/seepandetails/
     * @Method: GET
     * @Header: Authorization (in header)
     * @Parameters
     *     
     *   No parameters are required
     *
     */
    public function seepandetails(Request $request)
    {
        try {
            Helpers::setHeader(200);
            $geturl = Helpers::geturl();
            Helpers::timezone();
            $input = $request->all();
            /* check authentication*/
            $user = Helpers::isAuthorize($request);
            $id = $user->id;
            unset($input['auth_key']);
            $JSON = array();
            $pancarddetails = DB::table('pancard')->where('userid', $id)->first();
            if (!empty($pancarddetails)) {
                $JSON['panname'] = strtoupper($pancarddetails->pan_name);
                $JSON['pannumber'] = strtoupper($pancarddetails->pan_number);
                $JSON['pandob'] = date('d M ,Y', strtotime($pancarddetails->pan_dob));
                if (!empty($pancarddetails->comment)) {
                    $JSON['comment'] = $pancarddetails->comment;
                } else {
                    $JSON['comment'] = '';
                }
                $JSON['image'] = $geturl . 'public/uploads/pancard/' . $pancarddetails->image;
                $ext = pathinfo($JSON['image'], PATHINFO_EXTENSION);
                if ($ext == 'pdf') {
                    $JSON['imagetype'] = 'pdf';
                } else {
                    $JSON['imagetype'] = 'image';
                }
                $JSON['imagetype'] = $ext;
                $JSON['success'] = true;
            } else {
                $JSON['success'] = false;
            }
            return response()->json(array($JSON));
        } catch (\Exception $e) { 
            return response()->json(array(['success' => false, 'message' => $e->getMessage()])); 
        }
    }
    // send bank account verifiction request //
    /**
     * @return json
     * @Url: /api/bankrequest/
     * @Method: POST
     * @Header: Authorization (in header)
     * @Parameters
     *     
     *      accno:"text";
     *      ifsc:"text";
     *      image:"file";
     *      bankname:"text";
     *      bankbranch:"text";
     *      state:"text";
     *
     */
    public function bankrequest(Request $request)
    {

        try {
            if ($request->isMethod('post')) {
                $geturl = Helpers::geturl();
                Helpers::setHeader(200);
                $geturl = Helpers::geturl();
                $input = $request->all();
                $validator = Validator::make($input, [
                    'accountholder'             => 'required', 
                    'accno'          => 'required', 
                    'ifsc'      => 'required', 
                    'bankname'      => 'required', 
                    'bankbranch'      => 'required', 
                    'state'      => 'required', 
                ]);
                if ($validator->fails()){
                    $error = $this->validationHandle($validator->messages());
                    return response()->json(array(['success' => false, 'message' => $error])); 
                }else{
                    $user = Helpers::isAuthorize($request);
                    $data = array();
                    $input = $request->all();
                    $id = $user->id;
                    /* get all the params */
                    $data['userid'] = $user->id;
                    $data['accountholder'] = $request->get('accountholder');
                    $data['accno'] = $request->get('accno');
                    $data['ifsc'] = strtoupper($request->get('ifsc'));
                    $data['bankname'] = strtoupper($request->get('bankname'));
                    $data['bankbranch'] = strtoupper($request->get('bankbranch'));
                    $data['state'] = $request->get('state');
                    $data['status'] = '0';
                    //upload panfile//
                    // for andriod app//
                    $data['image'] = "";
                    if ($request->get('image')) {
                        $imageName = 'bank-' . rand(1000, 9999) . '' . time() . '.jpg';
                        $imsrc = base64_decode($request->get('image'));
                        file_put_contents('./public/uploads/bank/' . $imageName, $imsrc);
                        $data['image'] = $imageName;
                    } else {
                        $msgg['success'] = false;
                        $msgg['message'] = 'Please Update the image properly';
                        echo json_encode(array($msgg));
                        die;
                    }
                    if (file_exists(public_path('uploads/bank/' . $imageName))) {
                        /* find if already exist and entry in bank account table*/
                        $findlastow = DB::table('registerusers')->where('id', $id)->first();
                        $findexist =  DB::table('bank')->where('userid', $id)->first();
                        if (!empty($findexist)) {
                            DB::connection('mysql2')->table('bank')->where('id', $findexist->id)->update($data);
                            $req['bank_verify'] = '0';
                            DB::connection('mysql2')->table('user_verify')->where('userid', $data['userid'])->update($req);
                        } else {
                            DB::connection('mysql2')->table('bank')->insert($data);
                            $req['bank_verify'] = '0';
                            DB::connection('mysql2')->table('user_verify')->where('userid', $data['userid'])->update($req);
                        }
                        /* return final data */
                        Helpers::setHeader(200);
                        $msgg['message'] = 'Your bank account request has been successfully submitted.';
                        $msgg['success'] = true;
                        return response()->json(array($msgg));
                    } else {
                        Helpers::setHeader(200);
                        $msgg['message'] = 'Data is not updated properly please update again.';
                        $msgg['success'] = false;
                        return response()->json(array($msgg));
                    }   
                }
            } else {
                $msgg['success'] = false;
                $msgg['message'] = 'Unauthorized request';
                echo json_encode(array($msgg));
                die;
            }
        } catch (\Exception $e) { 
            return response()->json(array(['success' => false, 'message' => $e->getMessage()])); 
        }
    }
    // check for bank account details //
    /**
     * @return json
     * @Url: /api/seebankdetails/
     * @Method: GET
     * @Header: Authorization (in header)
     * @Parameters
     *     
     *   No parameters are required
     *
     */
    public function seebankdetails(Request $request)
    {
        try {
            $geturl = Helpers::geturl();
            Helpers::setHeader(200);
            Helpers::timezone();

            $input = $request->all();
            /* check authentication*/
            $user = Helpers::isAuthorize($request);
            if ($user) {
                $id = $user->id;
                unset($input['auth_key']);
                $JSON = array();
                $pancarddetails = DB::table('bank')->where('userid', $id)->first();
                if (!empty($pancarddetails)) {
                    $JSON['accno'] = $pancarddetails->accno;
                    $JSON['accountholdername'] = $pancarddetails->accountholder;
                    $JSON['ifsc'] = strtoupper($pancarddetails->ifsc);
                    $JSON['bankname'] = strtoupper($pancarddetails->bankname);
                    $JSON['bankbranch'] = strtoupper($pancarddetails->bankbranch);
                    $JSON['state'] = strtoupper($pancarddetails->state);
                    if (!empty($pancarddetails->comment)) {
                        $JSON['comment'] = $pancarddetails->comment;
                    } else {
                        $JSON['comment'] = '';
                    }
                    $JSON['image'] = $geturl . 'public/uploads/bank/' . $pancarddetails->image;
                    $ext = pathinfo($JSON['image'], PATHINFO_EXTENSION);
                    if ($ext == 'pdf') {
                        $JSON['imagetype'] = 'pdf';
                    } else {
                        $JSON['imagetype'] = 'image';
                    }
                    $JSON['imagetype'] = $ext;
                    $JSON['success'] = true;
                } else {
                    $JSON['success'] = false;
                }
                return response()->json(array($JSON));
                die;
            }
        } catch (\Exception $e) { 
            return response()->json(array(['success' => false, 'message' => $e->getMessage()])); 
        }
    }
    // check for verification of users //
    /**
     * @return json
     * @Url: /api/allverify/
     * @Method: GET
     * @Header: authorization
     * @Parameters
     *     
     *   No parameters are required
     *
     */
    public function allverify(Request $request)
    {
        try {
            Helpers::setHeader(200);
            Helpers::timezone();
            $geturl =  Helpers::geturl();
            $input = $request->all();
            /* check authentication*/
            $user = Helpers::isAuthorize($request);
            $id = $user->id;
            unset($input['auth_key']);
            $userdata = DB::table('user_verify')->where('userid', $id)->first();
            $msgg['mobile_verify'] = $userdata->mobile_verify;
            $msgg['email_verify'] = $userdata->email_verify;
            $msgg['bank_verify'] = $userdata->bank_verify;
            $msgg['pan_verify'] = $userdata->pan_verify;
            // if ($userdata->profile_image_verify == '1') {
            $findemaila = DB::table('registerusers')->where('id', $user->id)->select('image')->first();
            if (!empty($findemaila->image)) {
                $msgg['image'] = $findemaila->image;
            } else {
                $msgg['image'] =  $geturl . 'public/' . Helpers::settings()->player_image ?? '';
            }
            if ($msgg['email_verify'] == 1) {
                $findemail = DB::table('registerusers')->where('id', $user->id)->select('email')->first();
                $msgg['email'] = $findemail->email;
            }
            if ($msgg['mobile_verify'] == 1) {
                $findmobile = DB::table('registerusers')->where('id', $user->id)->select('mobile')->first();
                $msgg['mobile'] = $findmobile->mobile;
            }
            if ($msgg['pan_verify'] == 2) {
                $findreason =  DB::table('pancard')->where('userid', $user->id)->select('comment')->first();
                $msgg['pan_comment'] = $findreason->comment;
            }
            if ($msgg['bank_verify'] == 2) {
                $findreason =  DB::table('bank')->where('userid', $user->id)->select('comment')->first();
                $msgg['bank_comment'] = $findreason->comment;
            }

            echo json_encode(array($msgg));
            die;
        } catch (\Exception $e) { 
            return response()->json(array(['success' => false, 'message' => $e->getMessage()])); 
        }
    }
    // to verify the phone number //
    /**
     * @return json
     * @Url: /api/verifyMobileNumber/
     * @Method: POST
     * @Header: Authorization (in header)
     * @Parameters
     *     
     *   mobile : "number"
     *
     */
    public function verifyMobileNumber(Request $request)
    {
        try {
            if ($request->isMethod('post')) {
                $geturl = Helpers::geturl();
                Helpers::setHeader(200);
                $geturl = Helpers::geturl();
                $input = $request->all();
                $validator = Validator::make($input, [
                    'mobile'=> 'required|numeric|digits:10',
                ]);
                if ($validator->fails()){
                    $error = $this->validationHandle($validator->messages());
                    return response()->json(array(['success' => false, 'message' => $error])); 
                }else{
                    $user = Helpers::isAuthorize($request);
                    $data = array();
                    $input = $request->all();
                    $id = $user->id;
                    unset($input['auth_key']);
                    $input['mobile'] = $mobile = $request->get('mobile');
                    $input['userid'] = $id;
                    $data['status'] = '0';
                    //upload panfile//
                    $findthisemail = DB::table('registerusers')->where('mobile', $input['mobile'])->where('id', '<>', $id)->first();
                    if (!empty($findthisemail)) {
                        Helpers::setHeader(200);
                        $json['message'] = 'The mobile number you have entered is already in use.';
                        $json['success'] = false;
                        return response()->json(array($json));
                        die;
                    } else {
                        $finduserinfo = DB::table('user_verify')->where('userid', $id)->first();
                        if ($finduserinfo->mobile_verify == 1) {
                            Helpers::setHeader(200);
                            $json['message'] = 'You have already verified mobile number. You cannot change number now';
                            $json['success'] = false;
                            return response()->json(array($json));
                            die;
                        }
                        // $input['code'] = rand(1000, 9999);
                        $input['code'] = 1234;
                        $message = $input['code'] . " is the OTP for your " . (Helpers::settings()->project_name ?? '') . " account. NEVER SHARE YOUR OTP WITH ANYONE. " . (Helpers::settings()->project_name ?? '') . " will never call or message to ask for the OTP.";
                        // Helpers::sendTextSmsNew($message, $input['mobile']);
                        Helpers::sendTextSmsNew($message, $input['mobile']);
                        $updatedata['code'] = $input['code'];
                        DB::connection('mysql2')->table('registerusers')->where('id', $id)->update($updatedata);

                        $json['message'] = 'OTP Sent.';
                        $json['success'] = true;
                        return response()->json(array($json));
                        die;
                    }
                }
            } else {
                $msgg['success'] = false;
                $msgg['message'] = 'Unauthorized request';
                echo json_encode(array($msgg));
                die;
            }
        } catch (\Exception $e) { 
            return response()->json(array(['success' => false, 'message' => $e->getMessage()])); 
        }
    }
    // to verify with the code//
    public function verifyCode(Request $request)
    {
        try {
            Helpers::setHeader(200);
            Helpers::timezone();
            if ($request->isMethod('post')) {
                $input = $request->all();
                /* check authentication*/
                $user = Helpers::isAuthorize($request);
                $id = $user->id;
                unset($input['auth_key']);
                $input['code']  = $code = $request->get('code');
                if (!empty($input['email'])) {
                    $emailverify = DB::table('user_verify')->where('email_verify', '=', 1)->where('userid', $id)->first();
                    if (!empty($emailverify)) {
                        $json['message'] = 'your email id is already Verified';
                        $json['success'] = true;
                        return response()->json(array($json));
                        die;
                    }
                } else {
                    $mobileverify = DB::table('user_verify')->where('mobile_verify', '=', 1)->where('userid', $id)->first();
                    if (!empty($mobileverify)) {
                        $json['message'] = 'your mobile no. is already Verified';
                        $json['success'] = true;
                        return response()->json(array($json));
                        die;
                    }
                }
                $finduserinfo = DB::table('registerusers')->where('id', $id)->where('code', $code)->first();
                if (!empty($finduserinfo)) {
                    if ($request->get('email') != '') {
                        $dataupdate['email_verify'] = 1;
                        $dataupdate1['email'] = $request->get('email');
                        $this->getbonus($finduserinfo->id, 'email');
                    } else if ($request->get('mobile') != '') {
                        $dataupdate['mobile_verify'] = 1;
                        $dataupdate1['mobile'] = $request->get('mobile');
                        $this->getbonus($finduserinfo->id, 'mobile');
                    }
                    $dataupdate1['code'] = "";
                    // dd($user);
                    
                    DB::connection('mysql2')->table('user_verify')->where('userid', $id)->update($dataupdate);
                    DB::connection('mysql2')->table('registerusers')->where('id', $id)->update($dataupdate1);
                    Helpers::setHeader(200);
                    $json['type'] = !empty($finduserinfo->type) ? $finduserinfo->type . ' user' : 'normal user';
                    $json['success'] = true;
                    $json['message'] = 'Verified succcessfully';
                    $json['userid'] = $user->auth_key;
                    return response()->json(array($json));
                    die;
                } else {
                    Helpers::setHeader(200);
                    $json['message'] = 'Invalid Code';
                    $json['success'] = false;
                    return response()->json(array($json));
                    die;
                }
            }
        } catch (\Exception $e) { 
            return response()->json(array(['success' => false, 'message' => $e->getMessage()])); 
        }
    }
    // to verify the email//
    public function verifyEmail(Request $request)
    {
        try {
            Helpers::setHeader(200);
            Helpers::timezone();
            if ($request->isMethod('post')) {
                $input = $request->all();
                /* check authentication*/
                $user = Helpers::isAuthorize($request);
                $id = $user->id;
                unset($input['auth_key']);
                $input['email']  = $email = $request->get('email');
                $ifEmail = Helpers::checkEmail($input['email']);
                if ($ifEmail != true) {
                    $json['message'] = 'Please enter valid email address';
                    $json['success'] = false;
                    return response()->json(array($json));
                    die;
                }
                $findthisemail = DB::table('registerusers')->where('email', $input['email'])->where('id', '<>', $id)->first();
                if (!empty($findthisemail)) {
                    Helpers::setHeader(200);
                    $json['message'] = 'The email address you have entered is already in use.';
                    $json['success'] = false;
                    return response()->json(array($json));
                    die;
                } else {
                    $finduserinfo = DB::table('user_verify')->where('userid', $id)->first();
                    if ($finduserinfo->email_verify == 1) {
                        Helpers::setHeader(200);
                        $json['message'] = 'You have already verified email address. You cannot change your email address now';
                        $json['success'] = false;
                        return response()->json(array($json));
                        die;
                    }
                    // $input['code'] = rand(1000, 9999);
                     $input['code'] = 1234;
                    $emailsubject = 'Verify Email Address -' . Helpers::settings()->short_name ?? '';
                    $msgcontent = '<p style="padding-left: 23px;"><strong> Hello </strong></p>';
                    $msgcontent .= '<p style="padding-left: 23px;">Your Verification OTP code is<strong> ' . $input['code'] . '  </strong></p>';
                    $content = Helpers::Mailbody1($msgcontent);
                    $datamessage['email'] = $request->get('email');
                    $datamessage['subject'] = $emailsubject;
                    $datamessage['content'] = $content;
                    $message = $content;
                    Helpers::mailsentFormat($datamessage['email'], $datamessage['subject'], $message);
                    $updatedata['code'] = $input['code'];
                    DB::connection('mysql2')->table('registerusers')->where('id', $id)->update($updatedata);
                    Helpers::setHeader(200);
                    $json['message'] = 'OTP Sent.';
                    $json['success'] = true;
                    return response()->json(array($json));
                    die;
                }
            }
        } catch (\Exception $e) { 
            return response()->json(array(['success' => false, 'message' => $e->getMessage()])); 
        }
    }
    // to get my transactions //
    public function mytransactions(Request $request)
    {
        try{
            Helpers::setHeader(200);
            Helpers::timezone();
            $input = $request->all();
            $user = Helpers::isAuthorize($request);
            $getuserid = $user_id =  $user->id;
            unset($input['auth_key']);
            $findlastow = DB::table('transactions')
                            ->join('registerusers', 'registerusers.id', 'transactions.userid')
                            ->orderBy('transactions.id', 'DESC')
                            ->where('transactions.userid', $user_id)
                            ->select('registerusers.team', 'transactions.*')
                            ->get();
            $Json = array();
            $i = 0;
            if (!empty($findlastow)) {
                foreach ($findlastow as $val) {
                    $Json[$i]['id'] = $val->id;
                    $Json[$i]['type'] = $val->type;
                    $Json[$i]['amount'] = $val->amount;
                    $Json[$i]['status'] = 1;
                    $Json[$i]['success'] = true;
                    $Json[$i]['date_time'] = date('d M Y H:i', strtotime($val->created_at));
                    $Json[$i]['team'] = $val->team;
                    $Json[$i]['txnid'] = $val->transaction_id;
                    $i++;
                }
            } else {
                $Json[$i]['success'] = false;
                $Json[$i]['message'] = 'No transaction available';
            }
            return response()->json($Json);
        } catch (\Exception $e) { 
            return response()->json(array(['success' => false, 'message' => $e->getMessage()])); 
        }
    }
    // to get my wallet details //
    public function mywalletdetails(Request $request)
    {
        try{
            $input = $request->all();
            Helpers::timezone();
            Helpers::setHeader(200);
            $user = Helpers::isAuthorize($request);
            $type = $request->get('type');
            $getuserid = $user_id =  $user->id;
            unset($input['auth_key']);
            $findlastow = DB::table('userbalance')->orderBy('id', 'DESC')->where('user_id', $user_id)->first();
            if (!empty($findlastow)) {
                $bonus = $findlastow->bonus;
                $winning = $findlastow->winning;
                $balance = $findlastow->balance;
                $Json['balance'] = number_format(floatval($balance), 2, ".", "");
                $Json['winning'] = number_format(floatval($winning), 2, ".", "");
                $Json['bonus'] = number_format(floatval($bonus), 2, ".", "");
                $totalamount = $Json['balance'] + $Json['winning'] + $Json['bonus'];
                $Json['totalamount'] = $totalamount;
                // to get the total joined contest//
                $findjoinedcontest = DB::table('joinedleauges')->where('userid', $getuserid)->groupBy('challengeid')->select('id')->get();
                $Json['totaljoinedcontest'] = count($findjoinedcontest);
                // to get the list of total matches //
                $findtotalmatches = DB::table('joinedleauges')->where('userid', $getuserid)->groupBy('matchkey')->select('id')->get()->count();
                $Json['totaljoinedmatches'] = $findtotalmatches;
                // to get the list of total series //
                $findtotalseries = DB::table('joinedleauges')->join('listmatches', 'listmatches.matchkey', '=', 'joinedleauges.matchkey')->where('userid', $getuserid)->groupBy('listmatches.series')->select('listmatches.series')->get();
                $Json['totaljoinedseries'] = count($findtotalseries);
                // total won contest //
                $findwoncontest = DB::table('finalresults')->where('userid', $getuserid)->groupBy('finalresults.challengeid')->select('id')->get();
                $Json['totalwoncontest'] = count($findwoncontest);
                $allverify = DB::table('user_verify')->where('userid', $user_id)->where('mobile_verify', '1')->where('email_verify', '1')->where('pan_verify', '1')->where('bank_verify', '1')->select('id')->first();
                if (!empty($allverify)) {
                    $Json['allverify'] = 1;
                } else {
                    $Json['allverify'] = 0;
                }
            } else {
                $Json['balance'] = 0;
                $Json['winning'] = 0;
                $Json['bonus'] = 0;
                $Json['totalamount'] = 0;
            }
            return response()->json($Json);
            die;
        } catch (\Exception $e) { 
            return response()->json(array(['success' => false, 'message' => $e->getMessage()])); 
        }
    }
    // request for withdarw//
    public function request_withdrow(Request $request)
    {
        try{
            $geturl = Helpers::geturl();
            Helpers::timezone();
            Helpers::setHeader(200);
            if ($request->isMethod('post')) {
                $input = $request->all();
                $user = Helpers::isAuthorize($request);
                $user_id = $userid =  $user->id;
                unset($input['auth_key']);
                $amount = $request->get('amount');
                $withdrawfrom = $request->get('withdrawFrom');
                $data['user_id'] = $user_id;
                $data['amount'] = $amount;
                $data['withdraw_request_id'] = 'WD-' . $user_id . '-' . time();
                $data['created_at'] = date('Y-m-d H:i:s');
                $data['witdrawfrom'] = $request->get('withdrawFrom');
                if($request->has('type') && !empty($request->get('type'))){
                    $data['type'] = $request->get('type');
                    if($request->get('type')=='paytm'){
                        $data['paytm_number'] = $request->get('paytm_number');
                    }
                }
                $msgg = array();
                // check for minimum amount //
                // if ($amount < 50) {
                //     $msgg['message'] = "Withdrawl amount should be greater than or equal to 50";
                //     $msgg['success'] = false;
                //     return response()->json(array($msgg));
                //     die;
                // }
                $date = date('Y-m-d');
                // check for verification process //
                if($request->get('type')!='paytm'){
                    $findverification = DB::table('user_verify')->where('userid', $user_id)->first();
                    if (!empty($findverification)) {
                        if ($findverification->pan_verify != 1) {
                            $msgg['message'] = "Please first complete your PAN verification process. to withdarw this amount.";
                            $msgg['success'] = false;
                            return response()->json(array($msgg));
                            die;
                        }
                        if ($findverification->bank_verify != 1) {
                            $msgg['message'] = "Please first complete your Bank verification process to withdraw this amount.";
                            $msgg['success'] = false;
                            return response()->json(array($msgg));
                            die;
                        }
                    } else {
                        $msgg['success'] = false;
                        $msgg['message'] = 'Sorry,no data available!';
                        return response()->json(array($msgg));
                        die;
                    }
                }
                
                $bal_bonus_amt = 0;
                $bal_win_amt = 0;
                $bal_fund_amt = 0;
                $total_available_amt = 0;
                $findlastow = DB::table('userbalance')->where('user_id', $user_id)->first();
                if (!empty($findlastow)) {
                    /* check from where user wants to withdraw his money */
                    $balance = number_format($findlastow->winning, 2, ".", "");

                    if ($balance >= $amount) {
                        $bal_fund_amt = $findlastow->balance;
                        $bal_win_amt = $findlastow->winning;
                        $bal_bonus_amt = $findlastow->bonus;
                        $dataq['winning'] = number_format($balance - $amount, 2, ".", "");
                        DB::connection('mysql2')->table('userbalance')->where('id', $findlastow->id)->update($dataq);
                        DB::connection('mysql2')->table('withdraw')->insert($data);
                        $total_available_amt = $findlastow->balance + $dataq['winning'] + $findlastow->bonus;
                        $transactionsdata['userid'] = $userid;
                        $transactionsdata['type'] = 'Amount Withdraw';
                        $transactionsdata['transaction_id'] = $data['withdraw_request_id'];
                        $transactionsdata['transaction_by'] = 'wallet';
                        $transactionsdata['amount'] = $amount;
                        $transactionsdata['paymentstatus'] = 'pending';
                        $transactionsdata['withdraw_amt'] = $amount;
                        $transactionsdata['bal_fund_amt'] = $bal_fund_amt;
                        $transactionsdata['bal_win_amt'] = $dataq['winning'];
                        $transactionsdata['cons_win'] = $amount;
                        $transactionsdata['bal_bonus_amt'] = $bal_bonus_amt;

                        $transactionsdata['total_available_amt'] = $total_available_amt;
                        DB::connection('mysql2')->table('transactions')->insert($transactionsdata);
                        $msgg['message'] = "Your request for  withdrawl amount of Rs " . $amount . " is sent successfully. You will  get info about it in between 24 to 48 Hours.";
                        $msgg['success'] = true;
                        return response()->json(array($msgg));
                    } else {
                        $msgg['message'] = "You can withdraw only " . $balance . " rupees.";
                        $msgg['success'] = false;
                        return response()->json(array($msgg));
                    }
                } else {
                    $msgg['message'] = "Invalid user id.";
                    $msgg['success'] = false;
                    return response()->json(array($msgg));
                    die;
                }
            }
        } catch (\Exception $e) { 
            return response()->json(array(['success' => false, 'message' => $e->getMessage()])); 
        }
    }
    // my withdrawl list //
    public function mywithdrawlist(Request $request)
    {
        try{
            $input = $request->all();
            $user = Helpers::isAuthorize($request);
            $userid =  $user->id;
            unset($input['auth_key']);
            $Json = array();
            $withdrawdata = DB::table('withdraw')->where('user_id', $userid)->get();

            if (count($withdrawdata) > 0) {
                $i = 0;
                foreach ($withdrawdata as $val) {
                    $Json[$i]['id'] = $val->id;
                    $Json[$i]['user_id'] = $val->user_id;
                    $Json[$i]['withdrawfrom'] = $val->witdrawfrom;
                    $Json[$i]['withdrawto'] = $val->type;
                    $Json[$i]['withdrawtxnid'] = $val->withdraw_request_id;
                    $Json[$i]['withdrawl_date'] = date('d-M-y h:i:a', strtotime($val->created_at));
                    if ($val->approved_date != '0000-00-00') {
                        $Json[$i]['approved_date'] = $val->approved_date;
                    } else {
                        $Json[$i]['approved_date'] = "not available";
                    }
                    if ($val->status == 0) {
                        $Json[$i]['status'] = 'Pending';
                    } else {
                        $Json[$i]['status'] = 'Approved';
                    }
                    if ($val->comment == null) {
                        $Json[$i]['comment'] = "not available";
                    } else {
                        $Json[$i]['comment'] = $val->comment;
                    }
                    $Json[$i]['amount'] = round($val->amount, 2);

                    $i++;
                }
            }
            return response()->json($Json);
        } catch (\Exception $e) { 
            return response()->json(array(['success' => false, 'message' => $e->getMessage()])); 
        }
    }
    // process for add fund and transfer money to his bucket //
    public function requestprocess($paymentgatewayinfo)
    {
        $finduserinfo = DB::table('paymentprocess')
            ->where('paymentprocess.status', 'pending')
            ->where(
                function ($qq) use ($paymentgatewayinfo) {
                    $qq->where('orderid', $paymentgatewayinfo['txnid'])
                        ->orWhere('returnid', $paymentgatewayinfo['txnid'])
                        ->orWhere('orderid', $paymentgatewayinfo['returnid'])
                        ->orWhere('returnid', $paymentgatewayinfo['returnid']);
                }
            )
            ->join('registerusers', 'registerusers.id', '=', 'paymentprocess.userid')
            ->select('registerusers.email', 'registerusers.mobile', 'paymentprocess.orderid', 'paymentprocess.offerid', 'registerusers.team', 'paymentprocess.amount', 'paymentprocess.paymentmethod', 'registerusers.id as userid', 'paymentprocess.id', 'paymentprocess.status', 'registerusers.refer_id')
            ->first();

        if (!empty($finduserinfo)) {
            $getdata['amount'] = $finduserinfo->amount;
            $getdata['userid'] = $finduserinfo->userid;
            $getdata['paymentby'] = $finduserinfo->paymentmethod;
            $ds['returnid'] = $paymentgatewayinfo['txnid'];
            $ds['status'] = !empty($paymentgatewayinfo['status']) ? $paymentgatewayinfo['status'] : 'success';
            DB::connection('mysql2')->table('paymentprocess')->where('id', $finduserinfo->id)->update($ds);
            /* update balance in user bucket */
            $userdata = DB::table('userbalance')->where('user_id', $getdata['userid'])->first();
            if (!empty($userdata)) {
                $datainseert['user_id'] = $getdata['userid'];
                $datainseert['balance'] = $userdata->balance + $getdata['amount'];
                DB::connection('mysql2')->table('userbalance')->where('user_id', $getdata['userid'])->update($datainseert);
            }
            /* check for offers */
            if (!empty($finduserinfo->offerid)) {
                $userid = $finduserinfo->userid;
                $offer = DB::table('offers')->where('id', $finduserinfo->offerid)->first();

                if ($offer->bonus_type == 'per') {
                    $amountt =  $finduserinfo->amount * ($offer->bonus / 100);
                } else {
                    $amountt = $offer->bonus;
                }
                $userdata = array();
                $userdata = DB::table('userbalance')->where('user_id', $userid)->first();
                if (!empty($userdata)) {
                    $datainseert['user_id'] = $userid;
                    $datainseert['bonus'] = $userdata->bonus + $amountt;
                    DB::connection('mysql2')->table('userbalance')->where('user_id', $userid)->update($datainseert);
                    $bal_bonus_amt = 0;
                    $bal_win_amt = 0;
                    $bal_fund_amt = 0;
                    $total_available_amt = 0;
                    $findlastow = DB::table('userbalance')->where('user_id', $userid)->first();
                    if (!empty($findlastow)) {
                        $total_available_amt = $findlastow->balance + $findlastow->winning + $findlastow->bonus;
                        $bal_fund_amt = $findlastow->balance;
                        $bal_win_amt = $findlastow->winning;
                        $bal_bonus_amt = $findlastow->bonus;
                    }
                    $transactionsdata = array();
                    $transactionsdata['transaction_id'] = (Helpers::settings()->short_name ?? '') . '-EBONUS-' . rand(1000, 9999);
                    $transactionsdata['transaction_by'] = Helpers::settings()->short_name ?? '';
                    $transactionsdata['userid'] = $userid;
                    $transactionsdata['type'] = 'special bonus';
                    $transactionsdata['amount'] = $amountt;
                    $transactionsdata['bonus_amt'] = $amountt;
                    $transactionsdata['paymentstatus'] = 'confirmed';
                    $transactionsdata['bal_fund_amt'] = $bal_fund_amt;
                    $transactionsdata['bal_win_amt'] = $bal_win_amt;
                    $transactionsdata['bal_bonus_amt'] = $bal_bonus_amt;
                    $transactionsdata['total_available_amt'] = $total_available_amt;
                    DB::connection('mysql2')->table('transactions')->insert($transactionsdata);
                    $myoo['user_id'] = $userid;
                    $myoo['offer_id'] = $offer->id;
                    DB::connection('mysql2')->table('used_offer')->insert($myoo);
                    $msg  =  $data21['title'] = 'You have got ₹' . $amountt . ' special bonus on ' . (Helpers::settings()->project_name ?? '') . ' app.';
                    DB::connection('mysql2')->table('notifications')->insert($data21);
                    $titleget = 'special bonus';
                    $result = Helpers::sendnotification($titleget, $msg, '', $userid, '');
                }
            }

            /* entry in transactions*/
            $trdata = array();
            $trdata['type'] = 'Cash added';
            $txnid = (Helpers::settings()->short_name ?? '') . '-ADD-' . time();
            $trdata['transaction_id'] = $txnid;
            $trdata['userid'] = $getdata['userid'];
            $trdata['amount'] = $getdata['amount'];
            $trdata['addfund_amt'] = $getdata['amount'];
            $trdata['transaction_by'] = $paymentgatewayinfo['paymentby'];
            $this->transactionentry($trdata);
            return 'success';
        }
    }
    // common function for entry in transactions //
    public function transactionentry($trdata)
    {
        if (!empty($trdata)) {
            /* find for total balance now */
            $bal_bonus_amt = 0;
            $bal_win_amt = 0;
            $bal_fund_amt = 0;
            $total_available_amt = 0;
            $findlastow = DB::table('userbalance')->where('user_id', $trdata['userid'])->first();
            if (!empty($findlastow)) {
                $total_available_amt = $findlastow->balance + $findlastow->winning + $findlastow->bonus;
                $bal_fund_amt = $findlastow->balance;
                $bal_win_amt = $findlastow->winning;
                $bal_bonus_amt = $findlastow->bonus;
            }
            /* entry in transactions  table now with full array details */
            $trdata['paymentstatus'] = 'confirmed';
            $trdata['bal_fund_amt'] = $bal_fund_amt;
            $trdata['bal_win_amt'] = $bal_win_amt;
            $trdata['bal_bonus_amt'] = $bal_bonus_amt;
            $trdata['total_available_amt'] = $total_available_amt;
            DB::connection('mysql2')->table('transactions')->insert($trdata);
        }
    }
    // api for andriod apis for cash add //
    public function addcash1(Request $request)
    {
        try{
            $input = $request->all();
            $user = Helpers::isAuthorize($request);
            $userid =  $user->id;
            unset($input['auth_key']);
            $getdata['amount'] = $amount = floor($request->get('amount'));
            $getdata['userid'] = $userid;
            $getdata['paymentby'] = $request->get('paymentby');
            $getdata['txnid'] = $request->get('txnid');
            $getdata['returnid'] = $request->get('returnid');
            $loginsession = DB::table('registerusers')->where('id', $userid)->first();
            $data21['userid'] = $userid;
            $data21['seen'] = 0;
            $titleget = "payment done";
            $msg  =  $data21['title'] = 'You have added rupees ' . $amount . ' by ' . $request->get('paymentby');
            $totalamt = DB::table('userbalance')->where('user_id', $userid)->first();
            $total = 0;
            if (!empty($totalamt)) {
                $total = $totalamt->bonus + $totalamt->winning + $totalamt->balance;
            }
            $Json['success'] = true;
            $Json['total_amount'] = $total;
            $Json['message'] = 'payment done';
            return response()->json(array($Json));
        } catch (\Exception $e) { 
            return response()->json(array(['success' => false, 'message' => $e->getMessage()])); 
        }
    }

    // android add bucket process //
    public function requestaddcash(Request $request)
    {
        try{
            if ($request->isMethod('post')) {
                $input = $request->all();
                $user = Helpers::isAuthorize($request);
                $id =  $userid =  $user->id;
                unset($input['auth_key']);
                $getdata['amount'] = $amount = floor($request->get('amount'));
                $getdata['userid'] = $userid;
                $getdata['paymentby'] = $request->get('paymentby');
                $type = $request->get('type');

                /* check for the user details */
                $loginsession = DB::table('registerusers')->where('id', $id)->first();
                if (!empty($loginsession)) {
                    if ($request->get('offerid')) {
                        $offerdata = DB::table('offers')->where('id', $request->get('offerid'))->select('*')->first();
                        if (!empty($offerdata)) {
                            $max = $offerdata->maxamount;
                            $min = $offerdata->minamount;
                            if ($max >= $amount && $min <= $amount) {
                                $paymentprocess['offerid'] = $request->get('offerid');
                            }
                        }
                    }
                    $paymentdata['amount'] = $amount;
                    $paymentdata['userid'] = $loginsession->id;
                    $paymentdata['username'] = $loginsession->username;
                    $paymentdata['mobile'] = $loginsession->mobile;
                    $paymentdata['email'] = $loginsession->email;
                    $paymentdata['paymentby'] = $request->get('paymentby');
                    $paymentprocess['amount'] = $amount;
                    $paymentprocess['userid'] = $loginsession->id;
                    $paymentprocess['paymentmethod'] = $request->get('paymentby');
                    $txnid = (Helpers::settings()->short_name ?? ''). '-add-' . time() . $loginsession->id;
                    $paymentprocess['orderid'] = $txnid;
                    $Json['orderId'] ='';
                    if($request->get('paymentby') == 'razorpay') {
                        include(app_path() . '/razorpay/razorpay-php/Razorpay.php');
                        include(app_path() . '/razorpay/config.php');
                        $api = new Api($keyId, $keySecret);
                        $orderData = [
                            'receipt'         => $txnid,
                            'amount'          => $amount * 100,
                            'currency'        => 'INR',
                            'payment_capture' => 1
                        ];
                        $razorpayOrder = $api->order->create($orderData);
                        $razorpayOrderId = $razorpayOrder['id'];
                        $Json['orderId'] = $razorpayOrderId;
                        $paymentprocess['orderid'] = $razorpayOrderId;
                    }
                    if($request->get('paymentby')=='paykun'){
                        $Json['orderId'] = time().$loginsession->id;
                    }

                    DB::connection('mysql2')->table('paymentprocess')->insert($paymentprocess);
                    $Json['success'] = true;
                    $Json['txnid'] = $txnid;
                    return response()->json($Json);
                } else {
                    $Json['success'] = false;
                    $Json['txnid'] = 0;
                    return response()->json($Json);
                }
            }else{
                $Json['message'] = 'Invalid Method';
                $Json['success'] = false;
                $Json['txnid'] = 0;
                return response()->json($Json);
            }
        } catch (\Exception $e) { 
            return response()->json(array(['success' => false, 'message' => $e->getMessage()])); 
        }
    }

    public function getPaytmCheckSum(Request $request)
    {
        header("Pragma: no-cache");
        header("Cache-Control: no-cache");
        header("Expires: 0");
        // following files need to be included
        include(app_path() . '/PaytmKit/lib/config_paytm.php');
        include(app_path() . '/PaytmKit/lib/encdec_paytm.php');
        $checkSum = "";
        // below code snippet is mandatory, so that no one can use your checksumgeneration url for other purpose .
        $paramList = array();
        $paramList["MID"] = $_POST["MID"];                           //Provided by Paytm
        $paramList["ORDER_ID"] = $_POST["ORDER_ID"];                    //unique OrderId for every request
        $paramList["CUST_ID"] = $_POST["CUST_ID"];                      // unique customer identifier
        $paramList["INDUSTRY_TYPE_ID"] = $_POST["INDUSTRY_TYPE_ID"];    //Provided by Paytm
        $paramList["CHANNEL_ID"] = $_POST["CHANNEL_ID"];                //Provided by Paytm
        $paramList["TXN_AMOUNT"] = $_POST["TXN_AMOUNT"];                // transaction amount
        $paramList["WEBSITE"] = $_POST["WEBSITE"];                      //Provided by Paytm
        $paramList["CALLBACK_URL"] = $_POST["CALLBACK_URL"];            //Provided by Paytm
        $paramList["EMAIL"] = $_POST["EMAIL"];                          // customer email id
        $paramList["MOBILE_NO"] = $_POST["MOBILE_NO"];                  // customer 10 digit mobile no.
        $checkSum = getChecksumFromArray($paramList,"bKMfNxPPf_QdZppa");
        $paramList["CHECKSUMHASH"] = $checkSum;
        echo json_encode($paramList);
        die;
    }
    public function getnotification(request $request)
    {
        try{
            $user = Helpers::isAuthorize($request);
            $currentdate = date("Y-m-d");
            $findallnotification = DB::table('notifications')->where('userid', $user->id)->whereDate('created_at', $currentdate)->orderBy('created_at', 'DESC')->get();
            $findallnotifications = DB::table('notifications')->where('userid', $user->id)->whereDate('created_at', '!=', $currentdate)->get();
            $Json = array();
            $i = 0;
            $j = 0;
            $count = 0;
            if (!empty($findallnotifications->toarray())) {
                foreach ($findallnotifications as $notifications) {

                    $Json['previous'][$j]['id'] = ucfirst($notifications->id);
                    $Json['previous'][$j]['message'] = $notifications->title;
                    $Json['previous'][$j]['seen'] = $notifications->seen;
                    $Json['previous'][$j]['created_at'] = date('Y-m-d', strtotime($notifications->created_at));
                    if($notifications->seen==0){
                        $data['seen'] = 1;
                        DB::connection('mysql2')->table('notifications')->update($data);
                    }
                    // $data['seen'] = 1;
                    // DB::connection('mysql2')->table('notifications')->update($data);
                    $Json['previous'][$j]['success'] = true;
                    $j++;
                }
            }
            if (!empty($findallnotification->toarray())) {
                foreach ($findallnotification as $notification) {

                    $Json['today'][$i]['id'] = ucfirst($notification->id);
                    $Json['today'][$i]['message'] = $notification->title;
                    $Json['today'][$i]['seen'] = $notification->seen;
                    $Json['today'][$i]['created_at'] = date('Y-m-d', strtotime($notification->created_at));
                    if($notification->seen==0){
                        $data['seen'] = 1;
                        DB::connection('mysql2')->table('notifications')->update($data);
                    }
                    // $data['seen'] = 1;
                    // DB::connection('mysql2')->table('notifications')->update($data);
                    $Json['today'][$i]['success'] = true;
                    $i++;
                }
            }
            Helpers::setHeader(200);
            return response()->json(array($Json));
            die;
        } catch (\Exception $e) { 
            return response()->json(array(['success' => false, 'message' => $e->getMessage()])); 
        }
    }


    public function getreferuser(request $request)
    {
        try{
            $user = Helpers::isAuthorize($request);
            $geturl = Helpers::geturl();
            $findreferuser = DB::table('registerusers')->where('refer_id', $user->id)->select('registerusers.id', 'registerusers.username', 'registerusers.team', 'registerusers.image', 'registerusers.mobile', 'registerusers.email', 'registerusers.created_at')->get();
            $Json = array();
            $i = 0;
            $count = 0;
            if (!empty($findreferuser)) {
                foreach ($findreferuser as $referuser) {
                    $bonref = DB::table('bonus_refered')->where('userid', $referuser->id)->first();
                    if (!empty($bonref)) {
                        $amount = $bonref->amount;
                    } else {
                        $amount = 0;
                    }
                    $Json[$i]['id'] = $referuser->id;
                    if (!empty($referuser->username)) {
                        $Json[$i]['username'] = ucfirst($referuser->username);
                    } else {
                        $Json[$i]['username'] = ucfirst($referuser->team);
                    }
                    $Json[$i]['email'] = $referuser->email;
                    $Json[$i]['amount'] = $amount;
                    $Json[$i]['image'] = $referuser->image;
                    $Json[$i]['created_at'] = date('d M Y', strtotime($referuser->created_at));
                    $Json[$i]['success'] = true;
                    $i++;
                }
                Helpers::setHeader(200);
            } else {
                Helpers::setHeader(200);
                $Json[$i]['success'] = false;
            }
            return response()->json($Json);
            die;
        } catch (\Exception $e) { 
            return response()->json(array(['success' => false, 'message' => $e->getMessage()])); 
        }
    }

    public function sendlinktouser(Request $request)
    {
        try{
            Helpers::setHeader(200);
            Helpers::accessrules();
            $mobile = $request->get('mobile');
            if (!empty($mobile)) {
                $message = 'Welcome to ' . (Helpers::settings()->project_name ?? '') . ' - Most advanced & trusted fantasy cricket game! Select your best 11 or 5 players & Win now! Link : https://' . (Helpers::settings()->project_name ?? '') . '.com/apk/' . (Helpers::settings()->project_name ?? '') . '.apk';
                Helpers::sendTextSmsNew($message, $mobile);
                $json['success'] = true;
            } else {
                $json['success'] = false;
            }
            return response()->json(array($json));
            die;
        } catch (\Exception $e) { 
            return response()->json(array(['success' => false, 'message' => $e->getMessage()])); 
        }
    }


    //   Cashfree Webhook
    public function webhook_detail(Request $request){
        // Get Request data
        $input= $request->all();
        if(!empty($input)){
            $data['data']=json_encode($input);

            $lastid= DB::connection('mysql2')->table('payment_data')->insertGetId($data);
            $data= DB::table('payment_data')->where('id',$lastid)->first();

            $input=json_decode($data->data);
            
            $orderid = $input->orderId; # we need these
            $amount = $input->orderAmount; # we need these
            $returnid = $input->referenceId; # we need these
            $status = $input->txStatus; # we need these
            $paymentby = $input->paymentMode; # we need these
            $txMsg = $input->txMsg;
            $txTime = $input->txTime;
            $signature = $input->signature;
            $daaata = $orderid.$amount.$returnid.$status.$paymentby.$txMsg.$txTime;

            $secretkey = '8213fac3c2492334efc4a99628b2fd815fc0e85c';

            $hash_hmac = hash_hmac('sha256', $daaata, $secretkey, true);
            $computedSignature = base64_encode($hash_hmac);
            
            if($signature == $computedSignature) {
                $txStatus = $input->txStatus;

                if($txStatus=='SUCCESS'){
                    $orderid = $input->orderId;
                    $amount = $input->orderAmount;
                    $referenceId = $input->referenceId;
                    $paymentMode = $input->paymentMode;
                    $txTime = $input->txTime;
                    $signature = $input->signature;
                    $checkdata = DB::table('paymentprocess')->where('orderid',$orderid)->first();
                    
                    if(!empty($checkdata)){
                        $uid =$userid=  $checkdata->userid;
                        $pstatus = $checkdata->status;
                        if($pstatus == "pending"){
                            $getdata['amount'] = $amount =floor($amount);
                            $getdata['userid']= $uid;
                            $getdata['returnid']= $referenceId;
                            $paymentgatewayinfo['amount'] = $getdata['amount'];
                            $paymentgatewayinfo['txnid'] = $orderid;
                            $paymentgatewayinfo['paymentby'] = $paymentMode;
                            $paymentgatewayinfo['returnid'] = $referenceId;
                            $returnamount = $this->requestprocess($paymentgatewayinfo);
                            if($returnamount=='success'){
                                $data21['userid']=$userid;
                                $data21['seen']=0;
                                $titleget="payment done";
                                $msg  =  $data21['title']='You have added ₹ '.$paymentgatewayinfo['amount'].' by '.$paymentMode;
                                DB::connection('mysql2')->table('notifications')->insert($data21);
                                $result=Helpers::sendnotification($titleget,$msg,'',$userid);
                                $totalamt=DB::connection('mysql')->table('userbalance')->where('user_id',$userid)->first();
                                $total=0;
                                if(!empty($totalamt)){
                                    $total= $totalamt->bonus+$totalamt->winning+$totalamt->balance;
                                }
                                DB::connection('mysql2')->table('payment_data')->where('id',$data->id)->delete();
                                $Json['status'] = 1;
                                $Json['success'] = true;
                                $Json['total_amount'] = $total;
                                $Json['msg'] = 'payment done';
                                if(!empty($request->get('type')=='IOS')){
                                        return response()->json(array($Json));
                                    }else{
                                        return response()->json(array($Json));
                                    }
                            }else{
                                $Json['status'] = 0;
                                $Json['success'] = false;
                                $Json['msg'] = 'payment failed';
                                if(!empty($request->get('type')=='IOS')){
                                    return response()->json(array($Json));
                                }else{
                                    return response()->json(array($Json));
                                }
                            }
                            $json['status'] = true;
                            return response()->json(array($json));
                        }
                    }else{
                        $json['status'] = false;
                        $json['msg'] = 'Data not avilable!...';
                        return response()->json(array($json));
                    }
                } 
            }
        }
        http_response_code(200);
    }

    # webhook for cashfree payout

    // public function popup_notify(Request $request){
    //     try{
    //         Helpers::setHeader(200);
    //         $geturl = Helpers::geturl();
    //         $json = array();
    //         $getpopup = DB::table('popup_notification')->first();
    //         if(!empty($getpopup)){
    //                 $json['id'] = $getpopup->id;
    //                 $json['title'] = $getpopup->title;
    //                 $json['image'] = $geturl.'public/popup_notify/'.$getpopup->image;
    //                 return response()->json(array($json));die;
    //         }else{
    //             $Json['success'] = false;
    //             $Json['message'] = 'Data not available';
    //             return response()->json(array($json));die;
    //         }
    //     } catch (\Exception $e) {
    //         return response()->json(array(['success' => false, 'message' => $e->getMessage()])); 
    //     }
    // }

    public function popup_notify(Request $request){
        try{
            Helpers::setHeader(200);
            $geturl = Helpers::geturl();
            $json = array();
            $getpopup = DB::table('popup_notification')->first();
            if(!empty($getpopup)){
                    $json['id'] = $getpopup->id;
                    $json['title'] = $getpopup->title;
                    $json['image'] = $geturl.'public/popup_notify/'.$getpopup->image;
                    return response()->json(array($json));die;
            }else{
                $Json['success'] = false;
                $Json['message'] = 'Data not available';
                return response()->json($json);die;
            }
        } catch (\Exception $e) {
            return response()->json(array(['success' => false, 'message' => $e->getMessage()])); 
        }
    }
    
    public function helpdeskmaiL(Request $request){
        $user = Helpers::isAuthorize($request);
        $geturl = Helpers::geturl();
        $input = $request->all();
        if(!empty($input['fname'])){
            if(!empty($input['contact'])){
                if(!empty($input['email'])){
                    if(!empty($input['reason'])){
                        if(!empty($input['message'])){
                            // $msg= Helpers::Mailbody($input['message'],$input['fname'],$input['lname'],$input['contact']);
                            $datamessage['email'] =  $input['email'];
                            // $datamessage['content'] = $msg;
                            $subject = $input['reason'];
                            $supportmail = 'kuldeepsingh19.img@gmail.com';
                        
                            //====================Mail body=======================================
                            $emailsubject = 'Feedback & support -' . Helpers::settings()->short_name ?? '';
                            $msgcontent = '<p style="padding-left: 23px;"><strong>Name: - </strong> '.$input['fname'].' '.$input['lname'].'</p>';
                            $msgcontent .= '<p style="padding-left: 23px;"><strong> Email: -  </strong> '.$input['email'].'</p>';
                            $msgcontent .= '<p style="padding-left: 23px;"><strong> Contact: -  </strong> '.$input['contact'].'</p>';
                            $msgcontent .= '<p style="padding-left: 23px;"><strong> Reason of Enquiry: -  </strong> '.$input['reason'].'</p>';
                            $msgcontent .= '<p style="padding-left: 23px;"><strong> Message: -  </strong> '.$input['message'].'</p>';
                            $msg = Helpers::HelpdeskMail($msgcontent);
                            //====================Mail body END =======================================
                            
                            Helpers::mailsentFormat($supportmail,$subject,$msg);
                            $json['status'] = true;
                            $json['message'] = 'Feedback send Successfully';
                            return response()->json($json);die;
                        }
                    }
                }
            }
        }

    }
}
