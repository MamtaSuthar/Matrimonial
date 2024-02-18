<?php

namespace App\Http\Controllers;

use App\FamilyIncome;
use App\Models\FamilyBased;
use  App\Models\FamlyDetails;
use App\Occupation;
use Illuminate\Http\Request;

class FamilyController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        
        // dd($request->all());
             $validation = $request->validate([
            'mothers_occupation' => 'required',
            'fathers_occupation' => 'required',
            'sisters' => 'required',
             'brothers'=>'required',
             'gothra' => 'required',
            'gothra_maternal' => 'required',
            'family_status' => 'required',
             'family_income'=>'required',
             'family_type' => 'required',
             'family_based_out_of'=>'required',
             'user_id'=>['required']
        ],[
            'mothers_occupation.required'=>'Please Enter Your Mothers Occupation !',
            'fathers_occupation.required'=>'Please Enter Your Father Occupation  !',
            'sisters.required'=>'Select Your Sister Details !',
            'brothers.required'=>'Select Your Brother Details !',
            'gothra.required'=>'Enter Your Gothra ',
            'gothra_maternal.required'=>'Gothra Maternal field is required',
            'family_status.required'=>'Select Your Family Status ',
            'family_income.required'=>'Select Your Family Income  ',
            'family_type.required'=>'Select Your Family Type  ',
            'family_based_out_of.required'=>'Select Your Family Based Out OF',
            ]);
            
           
            $req=$request->all('sisters');
            $b=implode(',',$req['sisters']);
            $validation['sisters'] = $b;

            $req1=$request->all('brothers');
            $b1=implode(',',$req1['brothers']);
            $validation['brothers'] = $b1;
             
            //  dd($validation);
            // $validation['brothers'] = implode(',',$validate);
            // $validatedddd = $request->sisters;
            // $validation['sisters'] = implode(',',$validatedddd);
            FamlyDetails::create($validation);
            return back()->with($b,$b1,'success','send user register Successfully')->with('data');
            // return redirect('register/create')->with($b1,$b,'success',' has been created successfully.');

    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $validation = $request->validate([
            'mothers_occupation' => 'required',
            'fathers_occupation' => 'required',
            'sisters' =>'required',
             'brothers'=>'required',
             'gothra' => 'required',
            'gothra_maternal' => 'required',
            'family_status' => 'required',
             'family_income'=>'required',
             'family_type' => 'required',
             'family_based_out_of'=>'required',
            //  'user_id'=>'required'
        ],[
            'mothers_occupation.required'=>'Please Enter Your Mothers Occupation !',
            'fathers_occupation.required'=>'Please Enter Your Father Occupation  !',
            'sisters.required'=>'Select Your Sister Details !',
            'brothers.required'=>'Select Your Brother Details !',
            'gothra.required'=>'Enter Your Gothra ',
            'gothra_maternal.required'=>'Gothra Maternal field is required',
            'family_status.required'=>'Select Your Family Status ',
            'family_income.required'=>'Select Your Family Income  ',
            'family_type.required'=>'Select Your Family Type  ',
            'family_based_out_of.required'=>'Select Your Family Based Out OF',
            ]);

            $req=$request->all('sisters');
            $b=implode(',',$req['sisters']);
            $validation['sisters'] = $b;
        


            $req1=$request->all('brothers');
            $b1=implode(',',$req1['brothers']);
            $validation['brothers'] = $b1;
             

             FamlyDetails::where('id', $id)->update($validation);
        return redirect()->back()->with( $b,$b1,'success', ' user update  Successfully');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
