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
use CfPayout;
use Dotenv\Result\Success;
use Validator;
use Razorpay\Api\Api;
// use Helpers;
use Log;

use function PHPSTORM_META\type;

class CartapiController extends Controller
{
    // public function addcart(Request $request){
    //     Helpers::setHeader(200);
    //     Helpers::timezone();
    //     $geturl = Helpers::geturl();
    //     $user = Helpers::isAuthorize($request);
    //     $getproductit = $request->get('product_id');
    //     $status = $request->get('status');
    //     $user_id = $user->id;
    //     if($getproductit==''){
    //         return response()->json(array('No such product found'));
    //     }
       
    //         $get_product= DB::table('products')->where('product_id',$getproductit)->first();
            
    //         if(!empty($get_product)){
    //             $product['id'] = 1;
    //             $product['pid'] = $get_product->product_id;
    //             $product['title'] = $get_product->title;
    //             $product['amount'] = $get_product->purchase_price;
    //             $product['saleamount'] = $get_product->sale_price;
    //             $product['image'] = $get_product->main_image;
    //             $product['quantity'] = $get_product->quantity;
    //             $product['p_amt'] = 1 * $get_product->purchase_price;
    //             $product['description']= $get_product->description;
    //             $product['prod_qty'] = 1;
    //             $data['user_id'] = $user_id;  

    //             $check = DB::table('cart')->where('user_id',$user_id)->first();
    //             if(!empty($check)){
    //                 $cart_data = json_decode($check->cart_product);
    //                 $getprodid = strval(array_search($product['pid'],array_column($cart_data,'pid')));
    //                 if($getprodid!= ""){
    //                     $cart_data[$getprodid]->prod_qty = $cart_data[$getprodid]->prod_qty+1;
    //                     $cart_data[$getprodid]->p_amt = $cart_data[$getprodid]->prod_qty * $cart_data[$getprodid]->amount;
    //                     $decode_data = json_encode($cart_data);
              
    //                     $dataaa=DB::table('cart')->where('user_id',$user_id)->update(['cart_product'=>$decode_data]);
    //                     // return response()->json("update");
    //                     return response()->json(array(['status'=>true,'msg'=>"add to cart successfully update"]));
                      
    //                 }else{
    //                     $product['id'] = count($cart_data)+1;
    //                     array_push($cart_data,$product);
    //                     $decode_data = json_encode($cart_data);
    //                     DB::table('cart')->where('user_id',$user_id)->update(['cart_product'=>$decode_data]);
                        
    //                 }

                   
    //             }else{
    //                 $data['cart_product'] = json_encode(array($product));
                   
    //                 DB::table('cart')->where('user_id',$user_id)->insert($data);
    //                 // return response()->json("insert");
    //                 return response()->json(array(['status'=>true,'msg'=> "add to cart successfully"]));
    //             }
    //             // return response()->json("error");
                
    //             return response()->json(array(['status'=>true,'msg'=>"add to cart successfully" ]));
    //         }else{
    //            return response()->json(array(['status'=>false,'msg'=>"No such product id found" ]));

    //         }
    //     // }
    //     // dd('hgd');
    // }




    
    public function addcart(Request $request){
      Helpers::setHeader(200);
      Helpers::timezone();
      $geturl = Helpers::geturl();
      $user = Helpers::isAuthorize($request);
      $getproductit = $request->get('product_id');
      $status = $request->get('status');
      $pqty = $request->get('pqty');
      $user_id = $user->id;
      if($getproductit==''){
        return response()->json(array('No such product found'));
      }
  
      $get_product= DB::table('products')->where('product_id',$getproductit)->first();
      
      if(!empty($get_product)){
        
          $product['id'] = 1;
          $product['pid'] = $get_product->product_id;
          $product['title'] = $get_product->title;
          $product['amount'] = $get_product->purchase_price;
          $product['saleamount'] = $get_product->sale_price;
          $product['image'] = $get_product->main_image;
          $product['quantity'] = $get_product->quantity;
          
          // $product['p_amt'] = 1 * $get_product->purchase_price;
          $product['description']= $get_product->description;
          $product['prod_qty'] = (!empty($pqty))?$pqty:1;
          if($status=="buynow"){
            $product['prod_qty'] = $pqty;
            $product['p_amt'] = $get_product->purchase_price*$pqty;
          }else{
            $product['prod_qty'] = 1;
            $product['p_amt'] = 1 * $get_product->purchase_price;
          }
          // $product['prod_qty'] = 1;
          $data['user_id'] = $user_id;  

          $check = DB::table('cart')->where('user_id',$user_id)->first();
          if(!empty($check)){
            if($status=="buynow"){                
              $data['buy_porduct'] = json_encode(array($product));        
              DB::table('cart')->where('user_id',$user_id)->update($data);
              return response()->json(array(['status'=>true,'msg'=> "Buy to cart successfully"]));
            }else{
                $cart_data = json_decode($check->cart_product);
                if(empty($cart_data)){
                  
                  $data['cart_product'] = json_encode(array($product));        
                  DB::table('cart')->where('user_id',$user_id)->update($data);
                }else{
                      $getprodid = strval(array_search($product['pid'],array_column($cart_data,'pid')));
                      if($getprodid!= ""){

                          $cart_data[$getprodid]->prod_qty = $cart_data[$getprodid]->prod_qty+1;
                          $cart_data[$getprodid]->p_amt = $cart_data[$getprodid]->prod_qty * $cart_data[$getprodid]->amount;
                          $decode_data = json_encode($cart_data);
                
                          $dataaa=DB::table('cart')->where('user_id',$user_id)->update(['cart_product'=>$decode_data]);
                          // return response()->json("update");
                          return response()->json(array(['status'=>true,'msg'=>"add to cart successfully update"]));
                        
                      }else{
                          $product['id'] = count($cart_data)+1;
                          array_push($cart_data,$product);
                          $decode_data = json_encode($cart_data);
                          DB::table('cart')->where('user_id',$user_id)->update(['cart_product'=>$decode_data]);                     
                      }
                }
              }
            
          }else{
            
            if($status=="buynow"){
                $data['buy_porduct'] = json_encode(array($product));        
                $data['cart_product'] = json_encode(array());        
                DB::table('cart')->where('user_id',$user_id)->insert($data);
                return response()->json(array(['status'=>true,'msg'=> "Buy to cart successfully"]));
            }else{
                $data['cart_product'] = json_encode(array($product));        
                $data['buy_porduct'] = json_encode(array());        
                DB::table('cart')->where('user_id',$user_id)->insert($data);
                // return response()->json("insert");
                return response()->json(array(['status'=>true,'msg'=> "add to cart successfully"]));
            }
            
          }                
          return response()->json(array(['status'=>true,'msg'=>"add to cart successfully" ]));
      }else{
        return response()->json(array(['status'=>false,'msg'=>"No such product id found" ]));
      }
    }



    public function add_item(Request $request){

        Helpers::setHeader(200);
        Helpers::timezone();
        $geturl = Helpers::geturl();
        $user = Helpers::isAuthorize($request);  
       $user_id = $user->id;
    //    $key = $request->get('index_id');
       $pid = $request->get('product_id');

        $cartdata = DB::table('cart')->where('user_id',$user_id)->first();
        // dd($cartdata);
        $dump=json_decode($cartdata->cart_product);
        // $collectionA = collect([$dump]);
        $test=array_column($dump,'pid'); 
        $keys = array_search($pid, $test);
        if(!empty($cartdata) && $cartdata->cart_product!=null){
      
            $cartitems = json_decode($cartdata->cart_product);
          //  dd($cartitems);
           
           $itemdata=$cartitems[$keys];
        //    dd($pid,$itemdata)
           // $itemdata = collect($cartitems)->get($keys);
         //  $itemdata = collect($cartitems)->get($key);
          // dd($itemdata);
                $itemdata->prod_qty = $itemdata->prod_qty+1;

                $cartsss = collect($cartitems);
                
              
                 
                $cartsss->each(function ($item, $user_id) {
                    $item->p_amt = $item->amount * $item->prod_qty;
                });
               //  dd($cartsss);
                // dd($data);
                $dddd=[];
                foreach($cartsss as $cartss){
                    $dddd[] = $cartss;
                }
                // $dddd = $cartsss->toArray();
                // dd($dddd);
               // dd(json_encode($dddd));
                DB::table('cart')->where('user_id',$user_id)->update(['cart_product'=>$cartsss->toJson()]);
                $csum = collect($cartitems)->sum('p_amt');
                
                // $data = ['cartitems'=>$cartsss,'cart_Total'=>$csum ,'userid'=> $user_id];
                return response()->json(array(['status'=>true,'msg'=>"Add Data successfuly" ]));
        }
    }


    public function remove_item(Request $request){
        Helpers::setHeader(200);
        Helpers::timezone();
        $geturl = Helpers::geturl();
        $user = Helpers::isAuthorize($request); 
        $user_id = $user->id;
        $pid = $request->get('product_id');
        $cartdata = DB::table('cart')->where('user_id',$user_id)->first();
    //   dd($cartdata);
        $dump=json_decode($cartdata->cart_product);
        // $collectionA = collect([$dump]);
        $test=array_column($dump,'pid'); 
        $keys = array_search($pid, $test);
        // dd($keys);
        if(!empty($cartdata) && $cartdata->cart_product!=null){
    
            $cartitems = json_decode($cartdata->cart_product);
        
            $itemdata=$cartitems[$keys];
           // dd($itemdata);
            if($itemdata->prod_qty != 1){
                    $itemdata->prod_qty = $itemdata->prod_qty-1;
                    $cartsss = collect($cartitems);
                    $cartsss->each(function ($item, $keys){
                        $item->p_amt = $item->amount * $item->prod_qty;
                    });
                //    $dddd = $cartsss->toArray();
                    // dd($cartsss->toArray());
                    DB::table('cart')->where('user_id',$user_id)->update(['cart_product'=>$cartsss->toJson()]);
                    $csum = collect($cartitems)->sum('p_amt');
                    // $dd = view('frontend.renders.cartItems');
                    // $view = $dd->render();
                    // dd('jhgfd');
                    // $data = ['cartitems'=>$cartsss,'cart_Total'=>$csum ,'userid'=> $user_id];
                    return response()->json(array(['status'=>true,'msg'=>"remove " ]));
            }else{
                return response()->json(array(['status'=>false,'msg'=>'quantity cannot be less than 1']));
            }
            }
    }



    // public function view_cart(Request $request)
    // {
    //     Helpers::setHeader(200);
    //     Helpers::timezone();
    //     $geturl = Helpers::geturl();
    //     $user = Helpers::isAuthorize($request);
    //     $productid = $request->get('product_id');
    //     $quantity = $request->get('prod_qty');
    //     $status = $request->get('status');
    //     $uid = $user->id;
    //     $catg = DB::table('category')->get();
    //     $cartitem = DB::table('cart')->where('user_id',$uid)->first();

    //     if($cartitem == ""){
    //         $json['success'] = true;
    //         $json['message'] = 'No Product Add in Cart  Add Some Product First';
    //         $json['data'] = [];
    //         return response()->json(array($json,));
    //     }else{
    //         $cartproduct=json_decode($cartitem->cart_product);
    //         $cart_prod="";
           
    //       if(!empty($cartitem)){
    //         $cart_prod = json_decode($cartitem->cart_product);
    //         $i = 0;
    //         $discounts = 0;
    //         $data= [];
    //         $pp=[];
    //         $rksum =0;
    //         $csum=0;
    //         // dd($cart_prod);

    //         if(!empty($productid)){

    //             $getdata = collect($cart_prod)->get(collect($cart_prod)->pluck('pid')->search($productid));
    //             $query  = DB::table('offers')->where('product_id',$getdata->pid)->first();
    //             $pp = $query;
    //             if(!empty($query)){
    //               $discount_type = $query->bonus_type;
    //               $amount = $getdata->amount;
    //               $discount = $query->bonus;
    //               if($discount_type == "per"){
    //                 $totaloffer = $discount/100*$amount;
    //                 $data=$totaloffer;
    //                 $kk = $quantity;
    //                 // $kk =$getdata->prod_qty;
        
    //                 $discounts+=$totaloffer*$kk;
    //                 $csum = $getdata->amount*$kk;
    //                 // $csum=collect($getdata)->sum('p_amt')-$discounts;
                
    //               }elseif($discount_type == "rs"){
                  
    //                 $totaloffer=$amount-$discount;
    //                 $data =$discount;
    //                 $kk = $quantity;
    //                 // $kk = $getdata->prod_qty;
    //                 $discounts = $discount*$kk;
    //                 $csum = $getdata->amount*$kk;
    //               }
    //             }else{
    //               $csum = $getdata->p_amt*$quantity;
    //               // $csum=collect($getdata)->sum('p_amt')-$discounts;
    //               $rksum+= $getdata->p_amt-$discounts;                
    //             }

    //               $buyprod['d_amt'] = "";
    //               $buyprod['id'] = $getdata->id;
    //               $buyprod['pid'] = $getdata->pid;
    //               $subcatid = DB::table('products')->where('product_id',$getdata->pid)->first();

    //               $buyprod['subtitle'] = $subcatid->subtitle;
    //               $buyprod['title'] = $getdata->title;
    //               $buyprod['amount'] = $getdata->amount;
    //               $buyprod['saleamount'] = $getdata->saleamount;
    //               $buyprod['image']  = $geturl . 'public/uploads/product_image/'. $getdata->image;
    //               $buyprod['quantity'] = $getdata->quantity;
    //               $buyprod['p_amt'] = $getdata->p_amt;  
    //               $buyprod['description'] = $getdata->description;
    //               $buyprod['prod_qty'] = $quantity;
    //               // $buyprod['prod_qty'] = $getdata->prod_qty; 
    //               $son = array($buyprod);
    //         }else{

    //             foreach ($cart_prod as $vall) {
    //                 $product_id=$cart_prod[$i]->pid;
    //                 $query  = DB::table('offers')->where('product_id',$product_id)->first();
    //                 $pp[$i]=$query;
    //                   if(!empty($query)){
    //                     $discount_type[$i] = $query->bonus_type;
    //                     $amount[$i] = $vall->amount;
    //                     $discount[$i] = $query->bonus;
    //                       if($discount_type[$i] == "per"){
    //                         $totaloffer=$discount[$i]/100*$amount[$i];
    //                         $data[$i]=$totaloffer;
    //                         $kk =$cart_prod[$i]->prod_qty;

                
    //                         $discounts+=$totaloffer*$kk;
    //                         $csum=collect($cart_prod)->sum('p_amt')-$discounts;
                       
    //                       }elseif($discount_type[$i] == "rs"){
                         
    //                         $totaloffer=$amount[$i]-$discount[$i];
    //                         //dd($discount[$i]);
    //                         $data[$i]=$discount[$i];
    //                         $kk =$cart_prod[$i]->prod_qty;
    //                         $discounts=$discounts+$discount[$i]*$kk;
    //                         $csum=collect($cart_prod)->sum('p_amt')-$discounts;
                             
    //                       }
    //                   }else{
    //                     $csum=collect($cart_prod)->sum('p_amt')-$discounts;
    //                     // dump($cart_prod[$i]);
    //                     $rksum+= $cart_prod[$i]->p_amt;
                      
    //                   }
    //                 $i++;
    //             }

    //             $i = 0;
    //             $son =[];
               
    //             foreach ($cart_prod as $vall) {
    //                 if(!empty($pp[$i]->bonus_type)){
    //                   $kk =$cart_prod[$i]->prod_qty;
    //                   $amount= $cart_prod[$i]->p_amt;
    //                   $dis=$data[$i]*$kk;
    //                   $son[$i]['d_amt'] = $dis;
    //                 }else{
    //                   $son[$i]['d_amt'] = "";
    //                 }
    //                 $son[$i]['id'] = $vall->id;
    //                 $son[$i]['pid'] = $vall->pid;
    //                 $subcatid = DB::table('products')->where('product_id',$vall->pid)->first();

    //                 $son[$i]['subtitle'] = $subcatid->subtitle;
    //                 $son[$i]['title'] = $vall->title;
    //                 $son[$i]['amount'] = $vall->amount;
    //                 $son[$i]['saleamount'] = $vall->saleamount;
    //                 // $son[$i]['image'] = $vall->image;
    //                 $son[$i]['image']  = $geturl . 'public/uploads/product_image/'. $vall->image;
    //                 $son[$i]['quantity'] = $vall->quantity;
    //                 $son[$i]['p_amt'] = $vall->p_amt;  
    //                 $son[$i]['description'] = $vall->description;
    //                 $son[$i]['prod_qty'] = $vall->prod_qty;
    //               $i++;
    //             }
    //         }
    //             $last=0;
    //             $maxrange=0;
    //             $minrange=0;
    //               if(!empty($rksum)){
    //                 $ranoff=DB::table('offers')->where('type','Range')->whereRaw('(now()between start_date and expire_date)')->first();
    //                 $maxrange =$ranoff->maxamount;
    //                 $minrange =$ranoff->minamount;
    //                 if(!empty($ranoff)){
    //                   $product_id=$ranoff->id;
    //                   $rantype=$ranoff->bonus_type;
    //                   $minran =$ranoff->minamount;
    //                   $maxran =$ranoff->maxamount;
    //                   $extbonus=$ranoff->bonus;
    //                   if($rksum>=$minran && $rksum<=$maxran){
    //                     if($rantype == "rs"){
    //                       if ($rksum>=$minran && $rksum<=$maxran) {
    //                           $last = $extbonus;
    //                           $lastTotal = $csum-$last;
    //                       }
    //                     }elseif($rantype == "per"){
    //                       if ($rksum>=$minran && $rksum<=$maxran) {
    //                         $last = $extbonus/100*$csum;
    //                         $lastTotal = $csum-$last;
    //                       }
    //                     }
    //                     // $json['lastTotal']=$lastTotal;
    //                     // $json['rdis'] = $last;
    //                   }
    //                 }else{
    //                       $json['plane']="plane expire";
    //                 }

    //               }
             
 
    //             $json['success'] = true;
    //             $json['message'] = 'view_cart';
    //             $json['discount'] = $discounts;
    //             $json['Rangediscount'] = $last;
    //             $json['Ramount'] =$rksum;
    //             $json['subtotal'] =$csum;
    //             $json['Total'] =$csum-$last;
    //             $json['minrange'] =$minrange;
    //             $json['maxrange'] =$maxrange;
    //             $json['data'] =$son;
    //             //    if(!empty($rksum)){
    //             //   $json['Ramount'] =$rksum;
    //             //   $ranoff=DB::table('offers')->where('type','Range')->whereRaw('(now()between start_date and expire_date)')->first();
    //             //      if(!empty($ranoff)){
    //             //      $product_id=$ranoff->id;
    //             //      $rantype=$ranoff->bonus_type;
    //             //      $minran =$ranoff->minamount;
    //             //      $maxran =$ranoff->maxamount;
    //             //      $extbonus=$ranoff->bonus;
    //             //      if($rksum>=$minran && $rksum<=$maxran){
    //             //      if($rantype == "rs"){
    //             //           if ($rksum>=$minran && $rksum<=$maxran) {
    //             //               $last = $extbonus;
    //             //               $lastTotal = $csum-$last;
    //             //           }
    //             //       }elseif($rantype == "per"){
    //             //            if ($rksum>=$minran && $rksum<=$maxran) {
    //             //               $last = $extbonus/100*$csum;
    //             //               $lastTotal = $csum-$last;
    //             //             }
    //             //       }
    //             //          $json['lastTotal']=$lastTotal;
    //             //          $json['rdis'] = $last;
    //             //       }
    //             //   }else{
    //             //         $json['plane']="plane expire";
    //             //   }


    //             // }

    //           return response()->json(array($json,));
    //         }
    //       }
    // }

    public function view_cart(Request $request)
    {
        Helpers::setHeader(200);
        Helpers::timezone();
        $geturl = Helpers::geturl();
        $user = Helpers::isAuthorize($request);
        $productid = $request->get('product_id');
        $quantity = $request->get('prod_qty');
        $status = $request->get('status');
        $uid = $user->id;
        $catg = DB::table('category')->get();
        $cartitem = DB::table('cart')->where('user_id',$uid)->first();

        if($cartitem == ""){
            $json['success'] = true;
            $json['message'] = 'No Product Add in Cart  Add Some Product First';
            $json['data'] = [];
            return response()->json(array($json,));
        }else{
            $cartproduct=json_decode($cartitem->cart_product);
            $cart_prod="";
           
          if(!empty($cartitem)){
            
            $i = 0;
            $discounts = 0;
            $data= [];
            $pp=[];
            $rksum =0;
            $csum=0;
            // dd($cart_prod);

            if($status=="buynow"){
              $cart_prod = json_decode($cartitem->buy_porduct);
              foreach ($cart_prod as $vall) {
                $product_id=$cart_prod[$i]->pid;
                $query  = DB::table('offers')->where('product_id',$product_id)->first();
                $pp[$i]=$query;
                  if(!empty($query)){
                    $discount_type[$i] = $query->bonus_type;
                    $amount[$i] = $vall->amount;
                    $discount[$i] = $query->bonus;
                      if($discount_type[$i] == "per"){
                        $totaloffer=$discount[$i]/100*$amount[$i];
                        $data[$i]=$totaloffer;
                        $kk =$cart_prod[$i]->prod_qty;

            
                        $discounts+=$totaloffer*$kk;
                        $csum=collect($cart_prod)->sum('p_amt')-$discounts;
                   
                      }elseif($discount_type[$i] == "rs"){
                     
                        $totaloffer=$amount[$i]-$discount[$i];
                        //dd($discount[$i]);
                        $data[$i]=$discount[$i];
                        $kk =$cart_prod[$i]->prod_qty;
                        $discounts=$discounts+$discount[$i]*$kk;
                        $csum=collect($cart_prod)->sum('p_amt')-$discounts;
                         
                      }
                  }else{
                    $csum=collect($cart_prod)->sum('p_amt')-$discounts;
                    // dump($cart_prod[$i]);
                    $rksum+= $cart_prod[$i]->p_amt;
                  
                  }
                $i++;
            }

            $i = 0;
            $son =[];
           
            foreach ($cart_prod as $vall) {
                if(!empty($pp[$i]->bonus_type)){
                  $kk =$cart_prod[$i]->prod_qty;
                  $amount= $cart_prod[$i]->p_amt;
                  $dis=$data[$i]*$kk;
                  $son[$i]['d_amt'] = $dis;
                }else{
                  $son[$i]['d_amt'] = "";
                }
                $son[$i]['id'] = $vall->id;
                $son[$i]['pid'] = $vall->pid;
                $subcatid = DB::table('products')->where('product_id',$vall->pid)->first();

                $son[$i]['subtitle'] = $subcatid->subtitle;
                $son[$i]['title'] = $vall->title;
                $son[$i]['amount'] = $vall->amount;
                $son[$i]['saleamount'] = $vall->saleamount;
                // $son[$i]['image'] = $vall->image;
                $son[$i]['image']  = $geturl . 'public/uploads/product_image/'. $vall->image;
                $son[$i]['quantity'] = $vall->quantity;
                $son[$i]['p_amt'] = $vall->p_amt;  
                $son[$i]['description'] = $vall->description;
                $son[$i]['prod_qty'] = $vall->prod_qty;
              $i++;
            }
            }else{
                $cart_prod = json_decode($cartitem->cart_product);
                foreach ($cart_prod as $vall) {
                    $product_id=$cart_prod[$i]->pid;
                    $query  = DB::table('offers')->where('product_id',$product_id)->first();
                    $pp[$i]=$query;
                      if(!empty($query)){
                        $discount_type[$i] = $query->bonus_type;
                        $amount[$i] = $vall->amount;
                        $discount[$i] = $query->bonus;
                          if($discount_type[$i] == "per"){
                            $totaloffer=$discount[$i]/100*$amount[$i];
                            $data[$i]=$totaloffer;
                            $kk =$cart_prod[$i]->prod_qty;

                
                            $discounts+=$totaloffer*$kk;
                            $csum=collect($cart_prod)->sum('p_amt')-$discounts;
                       
                          }elseif($discount_type[$i] == "rs"){
                         
                            $totaloffer=$amount[$i]-$discount[$i];
                            //dd($discount[$i]);
                            $data[$i]=$discount[$i];
                            $kk =$cart_prod[$i]->prod_qty;
                            $discounts=$discounts+$discount[$i]*$kk;
                            $csum=collect($cart_prod)->sum('p_amt')-$discounts;
                             
                          }
                      }else{
                        $csum=collect($cart_prod)->sum('p_amt')-$discounts;
                        // dump($cart_prod[$i]);
                        $rksum+= $cart_prod[$i]->p_amt;
                      
                      }
                    $i++;
                }

                $i = 0;
                $son =[];
               
                foreach ($cart_prod as $vall) {
                    if(!empty($pp[$i]->bonus_type)){
                      $kk =$cart_prod[$i]->prod_qty;
                      $amount= $cart_prod[$i]->p_amt;
                      $dis=$data[$i]*$kk;
                      $son[$i]['d_amt'] = $dis;
                    }else{
                      $son[$i]['d_amt'] = "";
                    }
                    $son[$i]['id'] = $vall->id;
                    $son[$i]['pid'] = $vall->pid;
                    $subcatid = DB::table('products')->where('product_id',$vall->pid)->first();

                    $son[$i]['subtitle'] = $subcatid->subtitle;
                    $son[$i]['title'] = $vall->title;
                    $son[$i]['amount'] = $vall->amount;
                    $son[$i]['saleamount'] = $vall->saleamount;
                    // $son[$i]['image'] = $vall->image;
                    $son[$i]['image']  = $geturl . 'public/uploads/product_image/'. $vall->image;
                    $son[$i]['quantity'] = $vall->quantity;
                    $son[$i]['p_amt'] = $vall->p_amt;  
                    $son[$i]['description'] = $vall->description;
                    $son[$i]['prod_qty'] = $vall->prod_qty;
                  $i++;
                }
            }
                $last=0;
                $maxrange=0;
                $minrange=0;
                  if(!empty($rksum)){
                    $ranoff=DB::table('offers')->where('type','Range')->whereRaw('(now()between start_date and expire_date)')->first();
                    $maxrange =$ranoff->maxamount;
                    $minrange =$ranoff->minamount;
                    if(!empty($ranoff)){
                      $product_id=$ranoff->id;
                      $rantype=$ranoff->bonus_type;
                      $minran =$ranoff->minamount;
                      $maxran =$ranoff->maxamount;
                      $extbonus=$ranoff->bonus;
                      if($rksum>=$minran && $rksum<=$maxran){
                        if($rantype == "rs"){
                          if ($rksum>=$minran && $rksum<=$maxran) {
                              $last = $extbonus;
                              $lastTotal = $csum-$last;
                          }
                        }elseif($rantype == "per"){
                          if ($rksum>=$minran && $rksum<=$maxran) {
                            $last = $extbonus/100*$csum;
                            $lastTotal = $csum-$last;
                          }
                        }
                        // $json['lastTotal']=$lastTotal;
                        // $json['rdis'] = $last;
                      }
                    }else{
                          $json['plane']="plane expire";
                    }

                  }
             
 
                $json['success'] = true;
                $json['message'] = 'view_cart';
                $json['discount'] = $discounts;
                $json['Rangediscount'] = $last;
                $json['Ramount'] =$rksum;
                $json['subtotal'] =$csum;
                $json['Total'] =$csum-$last;
                $json['minrange'] =$minrange;
                $json['maxrange'] =$maxrange;
                $json['data'] =$son;
                //    if(!empty($rksum)){
                //   $json['Ramount'] =$rksum;
                //   $ranoff=DB::table('offers')->where('type','Range')->whereRaw('(now()between start_date and expire_date)')->first();
                //      if(!empty($ranoff)){
                //      $product_id=$ranoff->id;
                //      $rantype=$ranoff->bonus_type;
                //      $minran =$ranoff->minamount;
                //      $maxran =$ranoff->maxamount;
                //      $extbonus=$ranoff->bonus;
                //      if($rksum>=$minran && $rksum<=$maxran){
                //      if($rantype == "rs"){
                //           if ($rksum>=$minran && $rksum<=$maxran) {
                //               $last = $extbonus;
                //               $lastTotal = $csum-$last;
                //           }
                //       }elseif($rantype == "per"){
                //            if ($rksum>=$minran && $rksum<=$maxran) {
                //               $last = $extbonus/100*$csum;
                //               $lastTotal = $csum-$last;
                //             }
                //       }
                //          $json['lastTotal']=$lastTotal;
                //          $json['rdis'] = $last;
                //       }
                //   }else{
                //         $json['plane']="plane expire";
                //   }


                // }

              return response()->json(array($json,));
            }
          }
    }

    public function removeitem_product(Request $request){
        Helpers::setHeader(200);
        Helpers::timezone();
        $geturl = Helpers::geturl();
        $user = Helpers::isAuthorize($request);
        $user_id = $user->id;
        $pid = $request->get('product_id');
        $cartdata = DB::table('cart')->where('user_id',$user_id)->first();
        if(!empty($cartdata) && $cartdata->cart_product!=null){
           
            $cartsss = json_decode($cartdata->cart_product);
            $test=array_column($cartsss,'pid'); 
            $keys = strval(array_search($pid, $test));
              
         
           //  dd($cartsss);
            // dd($data);
           
           if($keys!=""){
            //    dd('bhj');
                $itemdata = collect($cartsss)->forget($keys);
                $dddd=[];
               
                foreach($itemdata as $cartss){
                    $dddd[] = $cartss;
                
                }
               //  dd(json_encode($dddd));
                DB::table('cart')->where('user_id',$user_id)->update(['cart_product'=>json_encode($dddd)]);
                return response()->json(array(['status'=>true,'msg'=>'remove product']));
           }else{
            //    dd('p');
                return response()->json(array(['status'=>true,'msg'=>'No such product  id data']));
           }
     
            
        
           
        }
    }
    


    public function getversion()
    {
     
        $version = DB::table('androidversion')->select('version','updation_points','ios')->first();
        if (!empty($version)) {
            $msgg['AndroidVersion'] = $version->version;
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







    public function place_order(Request $request){
       
        Helpers::setHeader(200);
        Helpers::timezone();
        $geturl = Helpers::geturl();
        $user = Helpers::isAuthorize($request);
          $username = $user->fullname;
        $user_id = $user->id;
        $cartitem = DB::table('cart')->where('user_id',$user_id)->first();
      //  dd($cartitem);
        $encart =$cartitem->cart_product;
        $getadd = DB::table('registerusers')->where('id',$user_id)->first();
        $enadd = $getadd->default_address;
        $addr = json_decode($getadd->default_address);
        $data = $request->all();
      //  dd($data);
         $demo =json_encode($data);
        $type=$data['type'];
      //  dd($type);
        // $payment_id=$data['payment_id'];

       //  dd($payment_id);
         $validator = Validator::make($data, [
            'type' => 'required',
           
        ]);
    // //  condision for online payment 
    //     if($type == 'online'){
       
    //         $valid = Validator::make($data, [
    //             'type' => 'required',
    //             'payment_id' => 'required', 
    //         ]);
    //         if ($valid->fails()) {
    //             $error = $this->validationHandle($valid->messages());
    //             return response()->json(array(['success' => false, 'message' => $error]));
    //         }
          
            
                    
    //     }
        if ($validator->fails()) {
            $error = $this->validationHandle($validator->messages());
            return response()->json(array(['status' => false, 'message' => $error]));
          
        }
        else{
            
           if(!empty($cartitem)){
            $cart_prod = json_decode($cartitem->cart_product); 
           $amount=[];
             foreach($cart_prod as $key =>  $value){
                    $amount=$value->amount;
                    }
                    
                    $csum=collect($cart_prod)->sum('p_amt');
        }
        $orderId = 'TK'.$user_id.rand(1000,9999);
        $api = new Api('rzp_test_BfM0EtSIgMKyuT', 'LuDTkQehZjmTmqk0EOKRrTbd');
                $payorder = $api->order->create(array('receipt' => '123', 'amount' => $csum*100, 'currency' => 'INR' ,//'order_id'=> $orderid
            )); 
              
          // dump($order['Razerpayorder_id'] =$payorder->id);
        if(!empty($addr))
        {
          //  $orderId = 'Order_TK'.$user_id.$username.rand(9000,1000);
          
         
            $order['user_id']=$payment['userid']=$transaction['userid']= $user_id;
          //  $order['order_id'] = $orderId;
            $order['order_id']= $payment['orderid']=$transaction['transaction_id']=$payorder->id;
            $order['price']=$payment['amount'] =$transaction['amount']= $csum;
            $order['payment_status']=$payment['status']=$transaction['paymentstatus']='pending';
            $payment['paymentmethod'] =$transaction['transaction_by']= 'razorpay';
            $order['type'] =$transaction['type']= $type;
            $order['order_product'] = $encart;
            $order['delivery_address'] = $enadd;
            // if($type == 'online'){
            // $order['payment_id'] = $data['payment_id'];
            // }
           // dd($order);
           //for paymentprocess

            DB::table('orders')->insert($order);
            DB::table('paymentprocess')->insert($payment);
            DB::table('transactions')->insert($transaction);
            
            return response()->json(array(['status'=>true,'msg'=>'order place successfully', 'data'=>$order]));
        
        }else{
            
            return response()->json(array(['status'=>true,'msg'=>'order Not place successfully']));
            
        }
        
    }   
    
}
    

   public function order_details(Request $request){
    Helpers::setHeader(200);
    Helpers::timezone();
    $geturl = Helpers::geturl();
    $user = Helpers::isAuthorize($request);
    $user_id =  $user->id;
    $data = $request->all();
    $datas=$data['razorpay_order_id'];

    $validator = Validator::make($data, [
        'razorpay_order_id' => 'required',
    ]);
     
    if ($validator->fails()) {
        $error = $this->validationHandle($validator->messages());
        return response()->json(array(['status' => false, 'msg' => $error]));
    }else
    {

      $details= DB::table('orders')->where('order_id',$datas)->first();
      $transaction= DB::table('transactions')->where('transaction_id',$datas)->first();

   //  $demo= $details->toArray();
        if($details == ""){
            $json['success'] = false;
            $json['message'] = 'NO Order Details Found';
            return response()->json(array($json,));

        }else{

            $kk = [0=>'pending',1=>'Accepted',2=>'Ready',-1=>'cancle'];

            $order['user_id'] = $details->user_id;
            $order['order_id'] = $details->order_id;
            $order['coupon_code'] = $details->coupon_code;
            $order['price'] = $details->price;
            if(!empty($transaction)){
              $order['fromwallet'] = $transaction->fromwallet;
              $order['fromonline'] = $transaction->fromonline;
              $order['payment_status'] = $details->payment_status;
              $order['status'] = $kk[$details->status];
            }else{
              $order['fromwallet'] = 0;
              $order['fromonline'] = 0;
              $order['payment_status'] = 'Failed';
              $order['status'] = 'Failed';
            }
          
          
          $order['payment_id'] = $details->payment_id;
          
          $order['created_at'] = $details->created_at;

          $pro =$details->order_product;
          $ord =$details->delivery_address;
          $ordp =json_decode($ord);
          $orderpro =json_decode($pro);
          
          // $query  = DB::table('offers')->where('product_id',$product_id)->first();


            $i=0;
            $j=0;
            $discounts = 0;
            $data= [];
            $pp=[];
            $rksum =0;
            $csum=0;
            foreach ($orderpro as $orders) { 
             
              $product_id=   $orderpro[$j]->pid; 
              $query  = DB::table('offers')->where('product_id',$product_id)->first();
                  if(!empty($query)){
                    $discount_type[$j] = $query->bonus_type;
                    $amount[$j] = $orders->amount;
                    $discount[$j] = $query->bonus;
                    if($discount_type[$j] == "per"){
                        $totaloffer=$discount[$j]/100*$amount[$j];
                        $data[$j]=$totaloffer;
                        $kk =$orderpro[$j]->prod_qty;

            
                        $discounts+=$totaloffer*$kk;
                        $csum=collect($orders)->sum('p_amt')-$discounts;
                    
                    }elseif($discount_type[$j] == "rs"){                         
                        $totaloffer=$amount[$j]-$discount[$j];
                        $data[$j]=$discount[$j];
                        $kk =$orderpro[$j]->prod_qty;
                        $discounts=$discounts+$discount[$j]*$kk;
                        $csum=collect($orderpro)->sum('p_amt')-$discounts;                            
                      }
                  }else{
                    //  $csum=collect($cart_prod)->sum('p_amt')-$discounts;
                    // // dump($cart_prod[$i]);
                    //  $rksum+= $cart_prod[$i]->p_amt;
                  
                  }
                  $query  = DB::table('offers')->where('product_id',$product_id)->first();
                  $pp[$j]=$query;
                  
                  if(!empty($pp[$j]->bonus_type)){
                    $kk =$orderpro[$j]->prod_qty;
                    $amount= $orderpro[$j]->p_amt;
                    $dis=$data[$j]*$kk;
                    $demo[$j]['d_amt'] = $dis;
                  }else{
                    $demo[$j]['d_amt'] = "";
                  }
        
                  $details->discount_detail;
                  $demo[$j]['id']=$orders->id;
                  $demo[$j]['pid']=$orders->pid;
                  $demo[$j]['title']=$orders->title;
                  // $demo[$j]['discounts']=$query->amount;
                  $demo[$j]['amount']=$orders->amount;
                  $demo[$j]['image']=$geturl . 'public/uploads/product_image/' . $orders->image;
                  $demo[$j]['quantity']=$orders->quantity;
                  $demo[$j]['p_amt']=$orders->p_amt;
                  $demo[$j]['prod_qty']=$orders->prod_qty;
                  $j++;
            }
                
              $discart =$details->discount_detail;
              $diss =json_decode($discart);
          return response()->json(array(['status'=>true,'msg'=>'All Order details','detail'=>$order,'order_product'=>$demo,'delivery_address'=>$ordp,'All_discounts'=>$diss]));        
        }

    }
    

   }
   
   public function my_orders(Request $request){
    Helpers::setHeader(200);
    Helpers::timezone();
    $geturl = Helpers::geturl();
    $user = Helpers::isAuthorize($request);
    $user_id =  $user->id;
      $orders = DB::table('orders')->where('user_id',$user_id)->orderByDesc('id')->get();
    
    //  $ff=array_column($orders,'user_id');
//     $ff= json_encode($orders);
//    // dd($ff,'status');
//        dd($orders[0]->user_id);
  // dump($orders);
  $kk = [0=>'pending',1=>'Accepted',2=>'Ready',-1=>'cancle'];
  //dd($kk[1]);
 
     if($orders->isNotEmpty()){
        // $ord =$orders->delivery_address;

         // $ordp =json_decode($orders);

        // dd($ordp[0]->id);
        $i = 0;
        foreach($orders as $ord){
         
            $addr= $orders[$i]->delivery_address;
            $discounts= $orders[$i]->discount_detail;

             $diss =json_decode($discounts);
            $ordp =json_decode($addr);
                  // $add = $ordp[$i]->delivery_address;
         $order[$i]['user_id'] = $ord->user_id;
         $order[$i]['order_id'] = $ord->order_id;
         $order[$i]['coupon_code'] = $ord->coupon_code;
         $order[$i]['price'] = $ord->price;
        
         $order[$i]['payment_id'] = $ord->payment_id;
         $order[$i]['delivery_address'] = $ordp;
         $order[$i]['discount_detail'] = $diss;
         $transaction= DB::table('transactions')->where('transaction_id',$ord->order_id)->first();
         if(!empty($transaction)){
          $order[$i]['payment_status'] = $ord->payment_status;
          $order[$i]['status'] = $kk[$ord->status];
         }else{
          $order[$i]['payment_status'] = 'Failed';
          $order[$i]['status'] = 'Failed';
         }
         
         $order[$i]['created_at'] = $ord->created_at;
         $i++;
        

        }
      return response()->json(array(['status'=>true,'msg'=>'Order History found','data'=>$order]));
     }else{

        return response()->json(array(['status'=>false,'msg'=>'Order History not found']));

     }

   }

}



