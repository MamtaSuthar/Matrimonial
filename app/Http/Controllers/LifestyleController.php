<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\language;
use App\Models\lifestyle;

class LifestyleController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        // dd($request->all());
        $data = $request->post;
     
        return response()->json([$data]);
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
        //    dd($request->all());
        $validation = $request->validate([
          'Dietary_Habits'=>['required'],
          'Drinking_Habits'=>['required'],
          'Smoking_Habits'=>['required'],
          'House'=>['required'],
          'Car'=>['required'],
          'HIV'=>['required'],
          'Thalassemia'=>['required'],
          'blood_group'=>['required'],
          'languages'=>['required'],
          'Challenged'=>['required'],
          'user_id'=>['required']
     ],[
          'Dietary Habits.required'=>'Dietary_Habits  field is required ',
          'Drinking Habits.required'=>'Drinking_Habits field is required',
          'Smoking Habits.required'=>'Smoking_Habits  is required',
          'House.required'=>'House field is Required',
          'Car.required'=>'Car field is required ',
          'HIV.required'=>'HIV field is required',
          'Thalassemia.required'=>'Thalassemia field is Required',
          'blood group.required'=>'Blood Group Tongue field is Required',
          'languages.required'=>'language field is Required',
          'Challenged.required'=>'Challenged field is Required',

     ]);
            $validatedddd = $request->languages;
            $validation['languages'] = implode(',',$validatedddd);
            $validation['handicap_nature'] = $request->handicap_nature;        
            lifestyle::create($validation);
            return back()->with('success','send user register Successfully')->with('data');
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
        //   dd($request->all());
        $validation = $request->except('_token','_method');
        $validation = $request->validate([
            'Dietary_Habits'=>['required'],
            'Drinking_Habits'=>['required'],
            'Smoking_Habits'=>['required'],
            'House'=>['required'],
            'Car'=>['required'],
            'HIV'=>['required'],
            'Thalassemia'=>['required'],
            'blood_group'=>['required'],
            'languages'=>['required'],
            'Challenged'=>['required'],
            // 'user_id'=>['required']
       ],[
            'Dietary Habits.required'=>'Dietary_Habits  field is required ',
            'Drinking Habits.required'=>'Drinking_Habits field is required',
            'Smoking Habits.required'=>'Smoking_Habits  is required',
            'House.required'=>'House field is Required',
            'Car.required'=>'Car field is required ',
            'HIV.required'=>'HIV field is required',
            'Thalassemia.required'=>'Thalassemia field is Required',
            'blood_group.required'=>'Blood Group Tongue field is Required',
            'languages.required'=>'language field is Required',
            'Challenged.required'=>'Challenged field is Required',
  
       ]);
                $validatedddd = $request->languages;
                $validation['languages'] = implode(',',$validatedddd);
                $validation['handicap_nature'] = $request->handicap_nature;
                // dd($validation);
                lifestyle::where('id',$id)->update($validation);
                return redirect()->back()->with('success',' user update  Successfully');
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
