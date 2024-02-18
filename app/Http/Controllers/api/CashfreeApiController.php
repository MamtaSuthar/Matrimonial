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

class CashfreeApiController extends Controller {
    
    public $environment = 'PROD',
           $urls = [
            'TEST' => 'https://payout-gamma.cashfree.com',
            'PROD' => 'https://payout-api.cashfree.com'
           ];
    
    public function authorize_token() {
                
        $curl = curl_init();
        
        curl_setopt_array($curl, array(
          CURLOPT_URL => $this->urls[$this->environment] . "/payout/v1/authorize",
          CURLOPT_RETURNTRANSFER => true,
          CURLOPT_ENCODING => "",
          CURLOPT_MAXREDIRS => 10,
          CURLOPT_TIMEOUT => 0,
          CURLOPT_FOLLOWLOCATION => true,
          CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
          CURLOPT_CUSTOMREQUEST => "POST",
          CURLOPT_HTTPHEADER => array(
            // test
            // "X-Client-Id: CF14892DK1NHY04Y2AAMA2",
            // "X-Client-Secret: 1144e06b4317a76e8dcf92670d8cc69821b130a9"
            "X-Client-Id: CF54553D039X0GN4B8MUQI",
            "X-Client-Secret: 7ee0681f359ccfce56802821cc00781c7a556d41"
          ),
        ));
        
        $response = curl_exec($curl);
        
        curl_close($curl);
        return $response;

    }
    
    
    public function check_cashfree_payout_status() {
        $response = json_decode($this->authorize_token(), true);    
        
        if($response['status'] == 'SUCCESS') {
            $token = $response['data']['token'];
        } else {
            echo 'something went wrong';
            echo '<br/>';
            echo '<pre>';
            print_r($response);die;
        }
        
        // $transfer_id = '127317182';
        // $reference_id = '140443';
        
        $response_transfer_status = $this->check_transfer_status($token, $transfer_id);
        
        // if($response_transfer_status['status'] == 'SUCCESS') {
        //     $token = $response_transfer_status['data']['token'];
        // } else {
        //     echo 'something went wrong';
        //     echo '<br/>';
        //     echo '<pre>';
        //     print_r($response_transfer_status);die;
        // }
        
        echo $response_transfer_status;
        
    }
    
    
    public function transfer($token, $to_transfer) {
                
        $curl = curl_init();
        
        curl_setopt_array($curl, array(
          CURLOPT_URL => $this->urls[$this->environment] . "/payout/v1/requestTransfer",
          CURLOPT_RETURNTRANSFER => true,
          CURLOPT_ENCODING => "",
          CURLOPT_MAXREDIRS => 10,
          CURLOPT_TIMEOUT => 0,
          CURLOPT_FOLLOWLOCATION => true,
          CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
          CURLOPT_CUSTOMREQUEST => "POST",
          CURLOPT_POSTFIELDS => $to_transfer,
          CURLOPT_HTTPHEADER => array(
            "Authorization: Bearer " . $token,
            "Content-Type: text/plain"
          ),
        ));
        
        $response = curl_exec($curl);
        
        curl_close($curl);
        echo $response;
        
    }
    
    
    public function check_transfer_status($token, $transfer_id) {
       
        $curl = curl_init();
        
        curl_setopt_array($curl, array(
        CURLOPT_URL => $this->urls[$this->environment] . "/payout/v1/getTransferStatus?transferId=".$transfer_id,
        CURLOPT_RETURNTRANSFER => true,
        CURLOPT_ENCODING => "",
        CURLOPT_MAXREDIRS => 10,
        CURLOPT_TIMEOUT => 0,
        CURLOPT_FOLLOWLOCATION => true,
        CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
        CURLOPT_CUSTOMREQUEST => "GET",
        CURLOPT_HTTPHEADER => array(
            "Authorization: Bearer ".$token
        ),
        ));
        
        $response = curl_exec($curl);
        
        curl_close($curl);
        return $response;

    }
    
    
    public function add_beneficiary($token, $beneficiary) {
        
        $curl = curl_init();
        
        curl_setopt_array($curl, array(
          CURLOPT_URL => $this->urls[$this->environment] . "/payout/v1/addBeneficiary",
          CURLOPT_RETURNTRANSFER => true,
          CURLOPT_ENCODING => "",
          CURLOPT_MAXREDIRS => 10,
          CURLOPT_TIMEOUT => 0,
          CURLOPT_FOLLOWLOCATION => true,
          CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
          CURLOPT_CUSTOMREQUEST => "POST",
          CURLOPT_POSTFIELDS => $beneficiary,
          CURLOPT_HTTPHEADER => array(
            "Authorization: Bearer " . $token,
            "Content-Type: text/plain"
          ),
        ));
        
        $response = curl_exec($curl);
        
        curl_close($curl);
        echo $response;

    }
    
    public function send_money() {
        
        $token_response = $this->authorize_token();    
        
        $token_response = json_decode($token_response, true);    
        
        if($token_response['status'] == 'SUCCESS') {
            $token = $token_response['data']['token'];
        } else {
            echo 'something went wrong';die;
        }
        
        $beneficiary = array();
        $beneficiary["beneId"] = $beneId = "Praveen123";
        $beneficiary["name"] = "praveen soni";
        $beneficiary["email"] = "praveensoni.img@gmail.com";
        $beneficiary["phone"] = "7062334389";
        $beneficiary["bankAccount"] = "917062334389";
        $beneficiary["ifsc"] = "PYTM0123456";
        $beneficiary["address1"] = "Jaipur";
        $beneficiary["city"] = "Jaipur";
        $beneficiary["state"] = "Rajasthan";
        $beneficiary["pincode"] = "302016";
        
        $beneficiary = json_encode($beneficiary);
        
        // $beneficiary_response = $this->add_beneficiary($token, $beneficiary);
        
        $amount = '1.00';
        $transfer_id = '123123123';
        
        $to_transfer = array();
        $to_transfer["beneId"] = $beneId;
        $to_transfer["amount"] = $amount;
        $to_transfer["transferId"] = $transfer_id;
        
        $to_transfer = json_encode($to_transfer);
        
        $to_transfer_response = $this->transfer($token, $to_transfer);
        
        echo $to_transfer_response;
    }
    
}
