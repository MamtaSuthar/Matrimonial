<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Models\About;
use App\Models\Book;
use App\Models\Cuisine;
use App\Models\DressStyle;
use App\Models\Education;
use App\Models\FamilyBased;
use App\Models\FamilyIncome;
use App\Models\FavMovie;
use App\Models\Hobbie;
use App\Models\Occupation;
use App\Models\Interest;
use App\Models\Music;
use App\Models\Sport;
use Redirect;
use App\Models\EducationModel;
use Carbon\Carbon; 
use Yajra\Datatables\Datatables;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Input;
use Session;
use DB;

use App\Models\BasicDetailsModel;
use App\Models\cast;
use App\Models\height;
use App\Models\mother_tongue;
use App\Models\Religion;
use App\Models\profile_managed;
use App\Models\marital_statu;
use App\Models\language;
use App\Models\lifestyle;
use App\Models\blood_group;
use App\Models\FamlyDetails;
use App\YourLike;
use Egulias\EmailValidator\Validation\Error\SpoofEmail;
use PhpParser\Node\Expr\Cast\Bool_;

class RegisterController extends Controller
{

    public function index()
    {
        $data=BasicDetailsModel::leftjoin('heights', 'basic_details.height', '=', 'heights.id')
            ->leftjoin('marital_status', 'basic_details.marital_status', '=', 'marital_status.id')
            ->leftjoin('mother_tongues', 'basic_details.mother_tongue', '=', 'mother_tongues.id')
            ->leftjoin('religions', 'basic_details.religion', '=', 'religions.id')
            ->leftjoin('casts', 'basic_details.cast', '=', 'casts.id')
            ->select('basic_details.*','heights.userheight','marital_status.marital_status','mother_tongues.mother_tongue','religions.religion','casts.cast')
            ->get()->toArray();
        
        return view('series.view_series',compact('data'));
    }


    public function create()
    {
        
        $userheight = height::get();
        $religion = Religion::get();
        $Mother_Tongue = Mother_Tongue::get();
        $Profile_Managed_by = profile_managed::get();
        $Cast = Cast::get();
        $marital_status = marital_statu::get();
        $langwage = language::get();
        $blood_group = blood_group::get();
        $adout = Occupation::get();
        $educt = Education::get();
        $income= FamilyIncome::get();
        $based=FamilyBased::get();
        $hobbie=Hobbie::get();
        $interest=Interest::get();
        $musics=Music::get();
        $books=Book::get();
        $cuisines=Cuisine::get();
        $fav_moviess=FavMovie::get();
        $dress_styles=DressStyle::get();
        $sport=Sport::get();
        //   dd($height);
        return view('series.create_series',compact('blood_group','langwage','userheight','Mother_Tongue',
        'religion','Profile_Managed_by','Cast','marital_status','adout','educt','income','based','hobbie',
        'interest','musics','books','cuisines',
        'fav_moviess','dress_styles','sport'));
    }


    public function store(Request $request)
    {
       
            $data =$request->all();
       
        $validation =$request->validate([
		 	'first_name'=>['required'],
             'last_name'=>['required'],
             'Height'=>['required'],
			 'email'=>['required','email','unique:basic_details,email'],
             'Religion'=>['required'],
             'Annual_Income'=>['required'],
             'Profile_Managed_by'=>['required'],
			 'cast'=>['required'],
             'Mother_Tongue'=>['required'],
             'dob' => 'required|date|before:-18 years|before:today',
             'marital_status'=>['required'],
            //  'image'=>['required']

		],[
			 'first_name.required'=>'First Name field is required ',
			 'last_name.required'=>'Last Name field is required',
			 'email.required'=>'Email  is required',
             'email.unique'=>' This Email is all ready used',
			 'Height.required'=>'Height field is Required',
             'Religion.required'=>'Religion field is required ',
			 'Annual_Income.required'=>'Annual Income field is required',
			 'Profile_Managed_by.required'=>'Profile Managed Send is required',
			 'cast.required'=>'Cast field is Required',
             'Mother_Tongue.required'=>'Mother Tongue field is Required',
             'dob.required'=>'Date Of Birth field is Required',
             'marital_status.required'=>'Marital Status field is Required',
            //  'image.required'=>'image  field is Required',
             'dob.before'=>'Your DOB must be greater then 18 years',

		]);
        if($request->file('image')){
            $file= $request->file('image');
            $filename= time().'.'.$file->getClientOriginalName();
            $file-> move(public_path('/uploads/user-profile/'), $filename);
            $data['image']= $filename;
            $validation['image'] = $data['image']; 
        }
        $age=$request->all('dob');
        $ag=explode(",",$age['dob']);
        $age1 = Carbon::parse($ag[0])->diff(Carbon::now())->y;
        $validation['age'] = $age1;
        // dd($validation);
        BasicDetailsModel::create($validation);
      
        $data = BasicDetailsModel::where('email', $request->email)->select('id')->get();
        
        return response()->json($data);
    
    }


    public function show($id)
    {
     
    }


    public function edit($id)
    {
        $sports=Sport::get();
        $dress_style=DressStyle::get();
        $fav_movies=FavMovie::get();
        $cuisine=Cuisine::get();
        $book=Book::get();
        $music=Music::get();
        $interests=Interest::get();
        $hobbies = Hobbie::get();
        $family_income = FamilyIncome::get();
        $family_based_out_of = FamilyBased::get();
        $Education = Education::get();
        $Occupation = Occupation::get();
        $Religion = Religion::get();
        $height = height::get();
        $Mother_Tongue = Mother_Tongue::get();
        $Profile_Managed_by = profile_managed::get();
        $Cast = Cast::get();
        $marital_status = marital_statu::get();
        $blood_group = blood_group::get();
        $langwage = language::get();
        $basicdata = BasicDetailsModel::where('basic_details.id', $id)
            ->Leftjoin('marital_status', 'basic_details.marital_status', '=', 'marital_status.id')
            ->Leftjoin('heights', 'basic_details.height', '=', 'heights.id')
            ->Leftjoin('religions', 'basic_details.religion', '=', 'religions.id')
            ->Leftjoin('mother_tongues', 'basic_details.mother_tongue', '=', 'mother_tongues.id')
            ->Leftjoin('casts', 'basic_details.cast', '=', 'casts.id')
            ->Leftjoin('profile_manageds', 'basic_details.profile_managed_by', '=', 'profile_manageds.id')
            ->select(
                'basic_details.id as id',
                'basic_details.*',
                'heights.userheight as height',
                'religions.religion as religion',
                'mother_tongues.mother_tongue as mother_tongue',
                'basic_details.Annual_Income as Annual_Income',
                'casts.cast as cast',
                'profile_manageds.profile_managed_by as profile_managed_by',
                'marital_status.marital_status as marital_status'
            )
            ->first();
        $lifestyle= lifestyle::where('user_id',$id)->first();
        $educationcareer = EducationModel::where('user_id',$id)->first();  
        $your_likes = YourLike::where('user_id', $id)->first();
        $about_me = About::where('user_id', $id)->first();
        $family_details = FamlyDetails::where('user_id', $id)->first();
        //    dd($id);


        return view('series.edit_series', compact(
            'family_details',
            'Education',
            'Occupation',
            'about_me',
            'langwage',
            'blood_group',
            'basicdata',
            'Religion',
            'Mother_Tongue',
            'Profile_Managed_by',
            'Cast',
            'marital_status',
            'height',
            'family_income',
            'family_based_out_of',
            'your_likes',
            'hobbies',
            'interests',
            'music',
            'book',
            'cuisine',
            'fav_movies',
            'dress_style',
            'sports'
        ));
    }


    public function update(Request $request, $id)
    {
        $validation = $request->validate([
            'first_name' => ['required'],
            'last_name' => ['required'],
            'Height' => ['required'],
            'email' => ['required'],
            'Religion' => ['required'],
            'Annual_Income' => ['required'],
            'Profile_Managed_by' => ['required'],
            'Cast' => ['required'],
            'Mother_Tongue' => ['required'],
            'dob' => 'required|date|before:-18 years|before:today',
            'marital_status' => ['required'],



        ], [
            'first_name.required' => 'First Name field is required ',
            'last_name.required' => 'Last Name field is required',
            'email.required' => 'Email  is required',
            'Height.required' => 'Height field is Required',
            'Religion.required' => 'Religion field is required ',
            'Annual_Income.required' => 'Annual Income field is required',
            'Profile_Managed_by.required' => 'Profile Managed Send is required',
            'Cast.required' => 'Cast field is Required',
            'Mother_Tongue.required' => 'Mother Tongue field is Required',
            'dob.required' => 'Date Of Birth field is Required',
            'marital_status.required' => 'Marital Status field is Required',

        ]);
        if ($request->file('image')) {
            $file = $request->file('image');
            $filename = time() . '.' . $file->getClientOriginalName();
            $file->move(public_path('/uploads/user-profile/'), $filename);
            $data['image'] = $filename;
            $validation['image'] = $data['image'];
        }
        $age=$request->all('dob');
        $ag=explode(",",$age['dob']);
        $age1 = Carbon::parse($ag[0])->diff(Carbon::now())->y;
        $validation['age'] = $age1;        
        BasicDetailsModel::where('id', $id)->update( $validation);
        return redirect()->route('register.index')->with('success', ' user update  Successfully');
    }


    public function destroy($id)
    {
        BasicDetailsModel::where('id', $id)->delete();
        return redirect()->back()->with('success', 'Success! User deleted');
    }
}
