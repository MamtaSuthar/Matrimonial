<?php

namespace App\Http\Controllers;
use App\Models\EducationModel;

use Illuminate\Http\Request;

class EducationController extends Controller
{
   
    public function index()
    {
       $data=EducationModel::all();
    }

 
    public function create()
    {
      
    }

  
    public function store(Request $request)
    {
        
        $data=$request->input();
        // dd($data);
        // $validated=$request->validate([
        //     'school_name' => 'required',
        //     'ug_college' => 'required',
        //     'pg_college' => 'required',
        //     'highest_education' => 'required',
        //     'other_ug_degree' => 'required',
        //     'other_pg_degree' => 'required',
        //     'employed_in' => 'required',
        //     'occupation' =>'required',
        //     'organisation_name' =>'required'

        // ],[

           

        // ]);
        $obj=new EducationModel;
        $obj->school_name=ucfirst($data['school_name']);
        $obj->ug_college=ucfirst($data['ug_college']);
        $obj->pg_college=$data['pg_college'];
        $obj->highest_education=$data['highest_education'];
        $obj->other_ug_degree=$data['other_ug_degree'];
        $obj->other_pg_degree=$data['other_pg_degree'];
        $obj->employed_in=$data['employed_in'];
        $obj->occupation=$data['occupation'];
        $obj->organisation_name=$data['organisation_name'];
        $obj->user_id=$data['user_id'];
        $obj->save();
        return redirect()->back()->with('success', 'Data inserted');
    }

  
    public function show($id)
    {

    }
    public function edit($id)
    {
        $edit_data=EducationModel::where('id',$id)->first();
        return view('series.edit_education',compact('edit_data'));
    }

  
    public function update(Request $request, $id)
    {
        //   dd($request->all());
        // $validated=$request->validate([
        //     'school_name' => 'required',
        //     'ug_college' => 'required',
        //     'pg_college' => 'required',
        //     'highest_education' => 'required',
        //     'other_ug_degree' => 'required',
        //     'other_pg_degree' => 'required',
        //     'employed_in' => 'required',
        //     'occupation' =>'required',
        //     'organisation_name' =>'required',
        //     'user_id'=>'required'

        // ],[

           

        // ]);
          $validated = $request->except('_token','_method');
        //   dd($validated);
          EducationModel::where('id',$id)->update($validated);
          return redirect()->back()->with('success',' user update  Successfully');
    }

    public function destroy($id)
    {
        EducationModel::where('id', $id)->delete();
        return redirect()->back()->with('success', 'Success! Data deleted');
    }
}
