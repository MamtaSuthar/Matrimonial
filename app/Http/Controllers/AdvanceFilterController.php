<?php
namespace App\Http\Controllers;

use App\Models\BasicDetailsModel;
use App\Models\Occupation;
use App\Models\Education;
use App\Models\cast;
use App\Models\height;
use App\Models\mother_tongue;
use App\Models\Religion;
use App\Models\profile_managed;
use App\Models\marital_statu;
use App\Models\CountryTableModel;
use App\Models\EducationModel;
use App\Models\lifestyle;
use BasicDetailsSeeder;
use Illuminate\Http\Request;
use Carbon\Carbon;
class AdvanceFilterController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
       

        $height = height::get();
        $religion = Religion::get();
        $mother_tongue = Mother_Tongue::get();
        $cast = Cast::get();
        $marital_status = marital_statu::get();
        $eduction = Education::get();

        $data = BasicDetailsModel::all();

        $id = BasicDetailsModel::select(
            'marital_status',
            'height',
            'religion',
            'mother_tongue',
            'cast'
        )->get()->toArray();
        $data = BasicDetailsModel::wherein('marital_status.id', $id)
            ->wherein('heights.id', $id)
            ->wherein('religions.id', $id)
            ->wherein('mother_tongues.id', $id)
            ->wherein('casts.id', $id)

            ->join('marital_status', 'basic_details.marital_status', '=', 'marital_status.id')
            ->join('heights', 'basic_details.height', '=', 'heights.id')
            ->join('mother_tongues', 'basic_details.mother_tongue', '=', 'mother_tongues.id')
            ->join('casts', 'basic_details.cast', '=', 'casts.id')
            ->join('religions', 'basic_details.religion', '=', 'religions.id')

            ->select(
                'basic_details.id as id',
                'basic_details.*',
                'heights.userheight as height',
                'religions.religion as religion',
                'mother_tongues.mother_tongue as mother_tongue',
                'casts.cast as cast',
                'marital_status.marital_status as marital_status',

            )
            ->get([
                'basic_details.*', 'marital_status.marital_status',
                'heights.height', 'mother_tongues.mother_tongue',
                'casts.cast', 'religions.religion'
            ]);

        return view('advance_filter.index', compact(
            'data',
            'height',
            'mother_tongue',
            'religion',
            'cast',
            'marital_status',
            'eduction'
        ));
    }

    public function all_data(Request $request){
        $data = BasicDetailsModel::
            leftjoin('heights', 'basic_details.height', '=', 'heights.id')
        ->leftjoin('marital_status', 'basic_details.marital_status', '=', 'marital_status.id')
        ->leftjoin('mother_tongues', 'basic_details.mother_tongue', '=', 'mother_tongues.id')
        ->leftjoin('religions', 'basic_details.religion', '=', 'religions.id')
        ->leftjoin('casts', 'basic_details.cast', '=', 'casts.id')
        ->select('basic_details.*','heights.userheight','marital_status.marital_status','mother_tongues.mother_tongue','religions.religion','casts.cast')
        ->get()->toArray();
              
        if($data){
            return response(json_encode(['status' => 'success', 'data' => $data]));
        }else{
            return response(json_encode(['status' => 'errrr']));
        }
    }
    public function create()
    {
        //
    }

    public function store(Request $request)
    {


        $fdata = $request['fdata'];
        $min_age = $fdata[0];
        $max_age = $fdata[1];
        $request->all('age');
      
        $data = BasicDetailsModel::whereBetween('age', [$min_age, $max_age])
            ->leftjoin('heights', 'basic_details.height', '=', 'heights.id')
            ->leftjoin('marital_status', 'basic_details.marital_status', '=', 'marital_status.id')
            ->leftjoin('mother_tongues', 'basic_details.mother_tongue', '=', 'mother_tongues.id')
            ->leftjoin('religions', 'basic_details.religion', '=', 'religions.id')
            ->leftjoin('casts', 'basic_details.cast', '=', 'casts.id')
            ->select('basic_details.*','heights.userheight','marital_status.marital_status','mother_tongues.mother_tongue','religions.religion','casts.cast')
            ->get()->toArray();
        if(!empty($data)){
            return response(json_encode(['status' => 'success','user created  Successfully!', 'data' => $data]));
        }else{
            return response(json_encode(['status' => 'errrr']));
        }
    }
    

    public function show($id)
    {
        //
    }

    public function users_height(Request $request)
    {

        $fdata = $request['fdata'];
        $start = $fdata[0];
        $end = $fdata[1];
        if (!empty($fdata[0]) && !empty($fdata[1])) {
            $height = height::whereBetween('userheight', [$start, $end])->get('id')->toArray();
        } 

        if(!empty($height)){
            $data = BasicDetailsModel::whereBetween('height',$height )
            ->leftjoin('heights', 'basic_details.height', '=', 'heights.id')
            ->leftjoin('marital_status', 'basic_details.marital_status', '=', 'marital_status.id')
            ->leftjoin('mother_tongues', 'basic_details.mother_tongue', '=', 'mother_tongues.id')
            ->leftjoin('religions', 'basic_details.religion', '=', 'religions.id')
            ->leftjoin('casts', 'basic_details.cast', '=', 'casts.id')
            ->select('basic_details.*','heights.userheight','marital_status.marital_status','mother_tongues.mother_tongue','religions.religion','casts.cast')
            ->get()->toArray();
    
            if(!empty($data)){
                return response(json_encode(['status' => 'success', 'data' => $data]));
            }else{
                return response(json_encode(['status' => 'errrr']));
            }
        }else{
            return response(json_encode(['status' => 'errrr']));
        }
        
    }

    public function users_income(Request $request)
    {
        $fdata = $request['fdata'];
        $start = $fdata[0];
        $end = $fdata[1];

        $data = BasicDetailsModel::whereBetween('Annual_Income', [$start, $end])
        ->leftjoin('heights', 'basic_details.height', '=', 'heights.id')
        ->leftjoin('marital_status', 'basic_details.marital_status', '=', 'marital_status.id')
        ->leftjoin('mother_tongues', 'basic_details.mother_tongue', '=', 'mother_tongues.id')
        ->leftjoin('religions', 'basic_details.religion', '=', 'religions.id')
        ->leftjoin('casts', 'basic_details.cast', '=', 'casts.id')
        ->select('basic_details.*','heights.userheight','marital_status.marital_status','mother_tongues.mother_tongue','religions.religion','casts.cast')
        ->get()->toArray();
        if(!empty($data)){
            return response(json_encode(['status' => 'success', 'data' => $data]));
        }else{
            return response(json_encode(['status' => 'errrr']));
        }
    }


    public function manglik(Request $request)
    {
        $fdata = $request['fdata'];
        if (!empty($fdata[0]) && $fdata[0] == "manglik_no") {
            $manglik = BasicDetailsModel::where('manglik', 'like', '%' . 'no' . '%')->get('id')->toArray();
            
        } else if (!empty($fdata[0]) && $fdata[0] == 'manglik_yes') {
            $manglik = BasicDetailsModel::where('manglik', 'like', '%' . 'yes' . '%')->get('id')->toArray();
        }
        
        if (!empty($manglik)) {
            $data = BasicDetailsModel::wherein('basic_details.id', $manglik)
            ->leftjoin('heights', 'basic_details.height', '=', 'heights.id')
            ->leftjoin('marital_status', 'basic_details.marital_status', '=', 'marital_status.id')
            ->leftjoin('mother_tongues', 'basic_details.mother_tongue', '=', 'mother_tongues.id')
            ->leftjoin('religions', 'basic_details.religion', '=', 'religions.id')
            ->leftjoin('casts', 'basic_details.cast', '=', 'casts.id')
            ->select('basic_details.*','heights.userheight','marital_status.marital_status','mother_tongues.mother_tongue','religions.religion','casts.cast')
            ->get()->toArray();
          
            if(!empty($data)){
                return response(json_encode(['status' => 'success', 'data' => $data]));
            }
            return response(json_encode(['status' => 'errr', 'data' => $data]));
        }else{
            return response(json_encode(['status' => 'error']));
        }
    }

    public function users_religion(Request $request)
    {
        $fdata = $request['fdata'];
        if (!empty($fdata[1]) && !empty($fdata[0])) {
            $all_religion = Religion::get('id')->toArray();
        } else if (!empty($fdata[1]) && $fdata[1] == 'hindu') {
            $all_religion = Religion::where('religion', 'like', '%' . 'Hindu' . '%')->get('id')->toArray();
        } else if (!empty($fdata[0])) {
            $all_religion = Religion::get('id')->toArray();
        }
        if (!empty($all_religion)) {
            $data = BasicDetailsModel::wherein('basic_details.religion', $all_religion)
            ->leftjoin('heights', 'basic_details.height', '=', 'heights.id')
            ->leftjoin('marital_status', 'basic_details.marital_status', '=', 'marital_status.id')
            ->leftjoin('mother_tongues', 'basic_details.mother_tongue', '=', 'mother_tongues.id')
            ->leftjoin('religions', 'basic_details.religion', '=', 'religions.id')
            ->leftjoin('casts', 'basic_details.cast', '=', 'casts.id')
            ->select('basic_details.*','heights.userheight','marital_status.marital_status','mother_tongues.mother_tongue','religions.religion','casts.cast')
            ->get()->toArray();
           
            if(!empty($data)){
                return response(json_encode(['status' => 'success', 'data' => $data]));
            }
            return response(json_encode(['status' => 'errr', 'data' => $data]));
        }else{
            return response(json_encode(['status' => 'error']));
        }
    }
    public function mother_tongue(Request $request)
    {
        $fdata = $request['fdata'];
        // dd($fdata);
        if (!empty($fdata) && $fdata[0] == 'all_tongue') {
           
            $mother_tongue = mother_tongue::get('id')->toArray();
        } else if (!empty($fdata[1]) && $fdata[1] == 'hindi_tongue') {
            $mother_tongue = mother_tongue::where('mother_tongue', 'like', '%' . 'Hindi' . '%')->get('id')->toArray();
        } else if (!empty($fdata[2]) && $fdata[2] == 'punjabi') {
           $mother_tongue = mother_tongue::where('mother_tongue', 'like', '%' . 'Punjabi' . '%')->get('id')->toArray();
        }
        
        if (!empty($mother_tongue)) {
            $data = BasicDetailsModel::wherein('basic_details.mother_tongue', $mother_tongue)
            ->leftjoin('heights', 'basic_details.height', '=', 'heights.id')
            ->leftjoin('marital_status', 'basic_details.marital_status', '=', 'marital_status.id')
            ->leftjoin('mother_tongues', 'basic_details.mother_tongue', '=', 'mother_tongues.id')
            ->leftjoin('religions', 'basic_details.religion', '=', 'religions.id')
            ->leftjoin('casts', 'basic_details.cast', '=', 'casts.id')
            ->select('basic_details.*','heights.userheight','marital_status.marital_status','mother_tongues.mother_tongue','religions.religion','casts.cast')
            ->get()->toArray();
           
            if(!empty($data)){
                return response(json_encode(['status' => 'success', 'data' => $data]));
            }
            return response(json_encode(['status' => 'errr', 'data' => $data]));
        }else{
            return response(json_encode(['status' => 'error']));
        }
    }

    public function challenged(Request $request)
    {
        $fdata = $request['fdata'];
       
        if(!empty($fdata[0])){
            if (!empty($fdata) && $fdata[0] == 'challenged_no') {
                $lifestyle = lifestyle::get('id')->toArray();
             } else if (!empty($fdata[0]) && $fdata[0] == 'challenged_yes') {
                 $lifestyle = lifestyle::where('challenged', 'like', '%' . 'yes' . '%')->get('id')->toArray();
             }
        }
       
        if (!empty($lifestyle)) {
            $data = BasicDetailsModel::wherein('basic_details.challenged', $lifestyle)
            ->leftjoin('heights', 'basic_details.height', '=', 'heights.id')
            ->leftjoin('marital_status', 'basic_details.marital_status', '=', 'marital_status.id')
            ->leftjoin('mother_tongues', 'basic_details.mother_tongue', '=', 'mother_tongues.id')
            ->leftjoin('religions', 'basic_details.religion', '=', 'religions.id')
            ->leftjoin('casts', 'basic_details.cast', '=', 'casts.id')
            ->select('basic_details.*','heights.userheight','marital_status.marital_status','mother_tongues.mother_tongue','religions.religion','casts.cast')
            ->get()->toArray();
           
            if(!empty($data)){
                return response(json_encode(['status' => 'success', 'data' => $data]));
            }
            return response(json_encode(['status' => 'errr', 'data' => $data]));
        }else{
            return response(json_encode(['status' => 'error']));
        }
    }

    public function marital_status(Request $request)
    {
        $fdata = $request['fdata'];
        // dd($fdata);
        if (!empty($fdata) && $fdata[0] == 'all_status') {
            $marital_statu = marital_statu::get('id')->toArray();
       }else if (!empty($fdata[1]) && $fdata[1] == 'never_married') {
            $marital_statu = marital_statu::where('marital_status', 'like', '%' . 'Never Married' . '%')->get('id')->toArray();
        }else if (!empty($fdata[2]) && $fdata[2] == 'awaiting_divorce') {
            $marital_statu = marital_statu::where('marital_status', 'like', '%' . 'Awaiting Divorce' . '%')->get('id')->toArray();
        }
        if (!empty($marital_statu)) {
            $data = BasicDetailsModel::wherein('basic_details.marital_status', $marital_statu)
            ->leftjoin('heights', 'basic_details.height', '=', 'heights.id')
            ->leftjoin('marital_status', 'basic_details.marital_status', '=', 'marital_status.id')
            ->leftjoin('mother_tongues', 'basic_details.mother_tongue', '=', 'mother_tongues.id')
            ->leftjoin('religions', 'basic_details.religion', '=', 'religions.id')
            ->leftjoin('casts', 'basic_details.cast', '=', 'casts.id')
            ->select('basic_details.*','heights.userheight','marital_status.marital_status','mother_tongues.mother_tongue','religions.religion','casts.cast')
            ->get()->toArray();
           
            if(!empty($data)){
                return response(json_encode(['status' => 'success', 'data' => $data]));
            }
            return response(json_encode(['status' => 'error', 'data' => $data]));
        }else{
            return response(json_encode(['status' => 'error']));
        }
    }
    public function country(Request $request)
    {
        $fdata = $request['fdata'];
       if (!empty($fdata) && $fdata[0] == 'all_country') {
                
          $country = CountryTableModel::get('id')->toArray();
        }else if (!empty($fdata[1]) && $fdata[1] == 'india') {
            $country = CountryTableModel::where('country', 'like', '%' . 'India' . '%')->get('id')->toArray();
        }
        if (!empty($country)) {
            $data = BasicDetailsModel::wherein('country', $country)->get()->toArray();
            if(!empty($data)){
                return response(json_encode(['status' => 'success', 'data' => $data]));
            }
            return response(json_encode(['status' => 'error', 'data' => $data]));
        }else{
            return response(json_encode(['status' => 'error']));
        }
    }
    public function education(Request $request)
    {
        $fdata = $request['fdata'];
        if (!empty($fdata) && $fdata[2] == 'other_all') {
            $education = EducationModel::get('id')->toArray();
        }else if (!empty($fdata[1]) && $fdata[0] == 'finance_banking') {
            $education = EducationModel::where('highest_education', 'like', '%' . 'B.Arch' . '%')->get('id')->toArray();
        }else if (!empty($fdata[1]) && $fdata[1] = 'medicine') {
            $education = EducationModel::where('highest_education', 'like', '%' . 'B.Des' . '%')->get('id')->toArray();
        }
        if (!empty($education)) {
            $data = BasicDetailsModel::wherein('basic_details.highest_education', $education)
            ->leftjoin('heights', 'basic_details.height', '=', 'heights.id')
            ->leftjoin('marital_status', 'basic_details.marital_status', '=', 'marital_status.id')
            ->leftjoin('mother_tongues', 'basic_details.mother_tongue', '=', 'mother_tongues.id')
            ->leftjoin('religions', 'basic_details.religion', '=', 'religions.id')
            ->leftjoin('casts', 'basic_details.cast', '=', 'casts.id')
            ->select('basic_details.*','heights.userheight','marital_status.marital_status','mother_tongues.mother_tongue','religions.religion','casts.cast')
            ->get()->toArray();

            if(!empty($data)){
                return response(json_encode(['status' => 'success', 'data' => $data]));
            }
            return response(json_encode(['status' => 'error', 'data' => $data]));
        }else{
            return response(json_encode(['status' => 'error']));
        }
    }
    public function occupation(Request $request)
    {
        $fdata = $request['fdata'];
    
        if (!empty($fdata) && $fdata[2] == 'all_occupation') {
            $occupation = Occupation::get('id')->toArray();
        }else if (!empty($fdata[1]) && $fdata[0] == 'banking_occupation') {
            $occupation = Occupation::where('occupation', 'like', '%' . 'Banking Professional' . '%')->get('id')->toArray();
        }else if (!empty($fdata[1]) && $fdata[1] == 'doctor_occupation') {
            $occupation = Occupation::where('occupation', 'like', '%' . 'Doctor' . '%')->get('id')->toArray();
        }
        
        if (!empty($occupation)) {
            $data = BasicDetailsModel::wherein('basic_details.occupation', $occupation)
            ->leftjoin('heights', 'basic_details.height', '=', 'heights.id')
            ->leftjoin('marital_status', 'basic_details.marital_status', '=', 'marital_status.id')
            ->leftjoin('mother_tongues', 'basic_details.mother_tongue', '=', 'mother_tongues.id')
            ->leftjoin('religions', 'basic_details.religion', '=', 'religions.id')
            ->leftjoin('casts', 'basic_details.cast', '=', 'casts.id')
            ->select('basic_details.*','heights.userheight','marital_status.marital_status','mother_tongues.mother_tongue','religions.religion','casts.cast')
            ->get()->toArray();

            if(!empty($data)){
                return response(json_encode(['status' => 'success', 'data' => $data]));
            }
            return response(json_encode(['status' => 'error', 'data' => $data]));
        }else{
            return response(json_encode(['status' => 'error']));
        }
    }

    public function dietary_habbit(Request $request)
    {
        $fdata = $request['fdata'];
        if (!empty($fdata) && $fdata[0] == 'all_dietary_habbit') {
            $dietary_habits = lifestyle::where('dietary_habits', 'like', '%' . 'all' . '%')->get('user_id')->toArray();
        }else if (!empty($fdata[1]) && $fdata[1] != 1) {
            $dietary_habits = lifestyle::where('dietary_habits', 'like', '%' . 'vegeterain' . '%')->get('user_id')->toArray();
        }
        if (!empty($country)) {
            $data = BasicDetailsModel::wherein('basic_details.id', $dietary_habits)
            ->leftjoin('heights', 'basic_details.height', '=', 'heights.id')
            ->leftjoin('marital_status', 'basic_details.marital_status', '=', 'marital_status.id')
            ->leftjoin('mother_tongues', 'basic_details.mother_tongue', '=', 'mother_tongues.id')
            ->leftjoin('religions', 'basic_details.religion', '=', 'religions.id')
            ->leftjoin('casts', 'basic_details.cast', '=', 'casts.id')
            ->select('basic_details.*','heights.userheight','marital_status.marital_status','mother_tongues.mother_tongue','religions.religion','casts.cast')
            ->get()->toArray();

            if(!empty($data)){
                return response(json_encode(['status' => 'success', 'data' => $data]));
            }
            return response(json_encode(['status' => 'error', 'data' => $data]));
        }else{
            return response(json_encode(['status' => 'error']));
        }
    }
    public function smoking_habbit(Request $request)
    {
        $fdata = $request['fdata'];
        
        if (!empty($fdata) && $fdata[0] == 'smoking_yes') {
            $smoking_habits = lifestyle::where('smoking_habits', 'like', '%' . 'yes' . '%')->get('user_id')->toArray();
        }else if (!empty($fdata[1]) && $fdata[1] == 'smoking_no') {
            $smoking_habits = lifestyle::where('smoking_habits', 'like', '%' . 'no' . '%')->get('user_id')->toArray();
        }
        if (!empty($smoking_habits)) {
            $data = BasicDetailsModel::wherein('basic_details.id', $smoking_habits)
            ->leftjoin('heights', 'basic_details.height', '=', 'heights.id')
            ->leftjoin('marital_status', 'basic_details.marital_status', '=', 'marital_status.id')
            ->leftjoin('mother_tongues', 'basic_details.mother_tongue', '=', 'mother_tongues.id')
            ->leftjoin('religions', 'basic_details.religion', '=', 'religions.id')
            ->leftjoin('casts', 'basic_details.cast', '=', 'casts.id')
            ->select('basic_details.*','heights.userheight','marital_status.marital_status','mother_tongues.mother_tongue','religions.religion','casts.cast')
            ->get()->toArray();
            if(!empty($data)){
                return response(json_encode(['status' => 'success', 'data' => $data]));
            }
            return response(json_encode(['status' => 'error', 'data' => $data]));
        }else{
            return response(json_encode(['status' => 'error']));
        }
    }
    public function drinking_habbit(Request $request)
    {
        $fdata = $request['fdata'];
        
        if (!empty($fdata) && $fdata[0] == 'drinking_yes') {
            $drinking_habits = lifestyle::where('drinking_habits', 'like', '%' . 'yes' . '%')->get('user_id')->toArray();
        }else if (!empty($fdata[1]) && $fdata[1] == 'drinking_no') {
            $drinking_habits= lifestyle::where('drinking_habits', 'like', '%' . 'no' . '%')->get('user_id')->toArray();
        }
        if (!empty($drinking_habits)) {
            $data = BasicDetailsModel::wherein('basic_details.id', $drinking_habits)
            ->leftjoin('heights', 'basic_details.height', '=', 'heights.id')
            ->leftjoin('marital_status', 'basic_details.marital_status', '=', 'marital_status.id')
            ->leftjoin('mother_tongues', 'basic_details.mother_tongue', '=', 'mother_tongues.id')
            ->leftjoin('religions', 'basic_details.religion', '=', 'religions.id')
            ->leftjoin('casts', 'basic_details.cast', '=', 'casts.id')
            ->select('basic_details.*','heights.userheight','marital_status.marital_status','mother_tongues.mother_tongue','religions.religion','casts.cast')
            ->get()->toArray();

            if(!empty($data)){
                return response(json_encode(['status' => 'success', 'data' => $data]));
            }
            return response(json_encode(['status' => 'error', 'data' => $data]));
        }else{
            return response(json_encode(['status' => 'error']));
        }
    }

    public function edit($id)
    {
        //
    }


    public function update(Request $request, $id)
    {
        //
    }


    public function destroy($id)
    {
        //
    }
}