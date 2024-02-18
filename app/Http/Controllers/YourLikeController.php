<?php

namespace App\Http\Controllers;

use App\Book;
use App\Cuisine;
use App\DressStyle;
use App\FavMovie;
use App\Hobbie;
use App\Interest;

use App\Music;
use App\Sport;
use App\YourLike;
use Illuminate\Http\Request;


class YourLikeController extends Controller
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
        // dd('bhgj');
        $validation= $request->validate([
            'hobbies' => ['required'],
            'interests' => ['required'],
            'music' => ['required'],
             'book'=>['required'],
            //  'read' => ['required'],
            // 'movies' => ['required'],
            'fav_movies'=> ['required'],
            'dress_style' => ['required'],
             'sports'=>['required'],
            //  'tv_show' => ['required'],
            //  'destination'=>['required'],
            //  'food' => ['required'],
             'cuisine'=>['required'],
             'user_id'=>['required']
        ],[
            'hobbies.required'=>'Select Your Hobbies !',
            'interests.required'=>'Select Your Interests !',
            'music.required'=>'Select Your Favourite Music !',
            'book.required'=>'Select Your Favourite Book !',
            'read.required'=>'Select Your Favourite read ',
            'movies.required'=>'Enter Your Favourite Movie Name!',
            'fav_movies.required'=>'Select Your Favourite Movies!',
            'dress_style.required'=>'Select Your Dressing Style !',
            'sports.required'=>'Select Your Favourite Sports ! ',
            'tv_show.required'=>'Enter Your Favourite Tv Show ! ',
            'destination.required'=>'Enter Your Favourite  Destination!',
            'food.required'=>'Enter Food You Cook ! ',
            'cuisine.required'=>'Select Your Cuisine!',
            ]);
            // dd('yes');
            $validatedddd = $request->sports;
            $validation['sports'] = implode(',',$validatedddd);
            $validatedddd = $request->dress_style;
            $validation['dress_style'] = implode(',',$validatedddd);
            $validatedddd = $request->fav_movies;
            $validation['fav_movies'] = implode(',',$validatedddd);
            $validatedddd = $request->cuisine;
            $validation['cuisine'] = implode(',',$validatedddd);
            $validatedddd = $request->book;
            $validation['book'] = implode(',',$validatedddd);
            $validatedddd = $request->music;
            $validation['music'] = implode(',',$validatedddd);
            $validatedddd = $request->interests;
            $validation['interests'] = implode(',',$validatedddd);
            $validatedddd = $request->hobbies;
            $validation['hobbies'] = implode(',',$validatedddd);
            $validation['read'] = $request->read;
            $validation['movies'] = $request->movies;
            $validation['tv_show'] = $request->tv_show;
            $validation['destination'] = $request->destination;
            $validation['food'] = $request->food;
            YourLike::create($validation);
            return back()->with('success','send user register Successfully')->with('data');
            // return redirect('register/create')->with('success',' has been created successfully.');
       
    }

  
    public function show($id)
    {

    }
    public function edit($id)
    {
        // $edit_data=EducationModel::where('id',$id)->first();
        // return view('series.edit_education',compact('edit_data'));
    }

  
    public function update(Request $request, $id)
    {
        $validation= $request->validate([
            'hobbies' => ['required'],
            'interests' => ['required'],
            'music' => ['required'],
             'book'=>['required'],
            //  'read' => ['required'],
            // 'movies' => ['required'],
            'fav_movies'=> ['required'],
            'dress_style' => ['required'],
             'sports'=>['required'],
            //  'tv_show' => ['required'],
            //  'destination'=>['required'],
            //  'food' => ['required'],
             'cuisine'=>['required']
        ],[
            'hobbies.required'=>'Select Your Hobbies !',
            'interests.required'=>'Select Your Interests !',
            'music.required'=>'Select Your Favourite Music !',
            'book.required'=>'Select Your Favourite Book !',
            'read.required'=>'Select Your Favourite read ',
            'movies.required'=>'Enter Your Favourite Movie Name!',
            'fav_movies.required'=>'Select Your Favourite Movies!',
            'dress_style.required'=>'Select Your Dressing Style !',
            'sports.required'=>'Select Your Favourite Sports ! ',
            'tv_show.required'=>'Enter Your Favourite Tv Show ! ',
            'destination.required'=>'Enter Your Favourite  Destination!',
            'food.required'=>'Enter Food You Cook ! ',
            'cuisine.required'=>'Select Your Cuisine!',
            ]);
            $validation['read'] = $request->read;
            $validation['movies'] = $request->movies;
            $validation['tv_show'] = $request->tv_show;
            $validation['destination'] = $request->destination;
            $validation['food'] = $request->food;
            // dd($validation);
            YourLike::where('id', $id)->update($validation);
            return redirect()->back()->with('success', ' user update  Successfully');
    }

    public function destroy($id)
    {
        // EducationModel::where('id', $id)->delete();
        // return redirect()->back()->with('success', 'Success! Data deleted');
    }
}
