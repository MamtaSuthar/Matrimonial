<?php

namespace App\Http\Controllers;

// use App\Models\About;
use App\Models\About;
use App\Models\Education;
use App\Models\Occupation;
use Illuminate\Http\Request;
class AboutController extends Controller
{

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {

    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {

    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $validation = $request->validate([
            'describe_yourself' => ['required'],
            'about_my_family' => ['required'],
            'education' => ['required'],
            'occupation'=>['required'],
            'user_id'=>['required']
        ],[
            'describe_yourself.required'=>'Describe Your Self !',
            'about_my_family.required'=>'Describe Your Family !',
            'education.required'=>'Education  field is required',
            'occupation.required'=>'Occupation  field is required',
            ]);
            About::create($validation);
            return back()->with('success','send user register Successfully')->with('data');
            // return redirect('register/create')->with('success','About Details has been created successfully.');
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
            'describe_yourself' => ['required'],
            'about_my_family' => ['required'],
            'education' => ['required'],
            'occupation' => ['required'],
        ],[
            'describe_yourself.required'=>'Describe Your Self !',
            'about_my_family.required'=>'Describe Your Family !',
            'education.required'=>'Education  field is required',
            'occupation.required'=>'Occupation  field is required',
            ]);

        About::where('id', $id)->update($validation);
        return redirect()->back()->with('success', ' user update  Successfully');
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
