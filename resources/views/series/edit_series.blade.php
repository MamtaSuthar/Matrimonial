@extends('main')

@section('heading')
    Registeruser Manager
@endsection('heading')

@section('sub-heading')
    Edit user
@endsection('sub-heading')

@section('content')
    <link rel="stylesheet" href="{{ asset('public/css/from.css') }}">
    <link rel="stylesheet" href="{{ asset('public/css/radio.css') }}">

    <div class="card">
      
    <details class="warning" open>
        <summary>User Details</summary>
        <div class="card">
            @if (!empty($basicdata))
                <form class="form-horizontal multipart/form-data" enctype="multipart/form-data" method="post"
                    action="{{ route('register.update', $basicdata->id) }} ">
                    @csrf
                    @method('PUT')
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <input type="hidden" class="id" name="id" id="id" value="{{$basicdata->id}}"/>
                                <label for="inputEmail3" class="control-label ">First Name</label>
                                <input type="text" class="form-control name" id="first_name" placeholder="Name"
                                    value="{{ $basicdata->first_name }}" autocomplete="off" name="first_name">
                                @error('first_name')
                                    <span class="text-danger">{{ $message }}</span>
                                @enderror
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="inputEmail3" class="control-label ">Last Name</label>
                                <input type="text" class="form-control name" id="last_name" placeholder="Last Name"
                                    value="{{ $basicdata->last_name }}" autocomplete="off" name="last_name">
                                @error('last_name')
                                    <span class="text-danger">{{ $message }}</span>
                                @enderror
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="inputEmail3" class="control-label">Email</label>
                                <input type="email" class="form-control" id="email" placeholder="Email"
                                    value="{{ $basicdata->email }}" name="email" autocomplete="nope" />
                                @error('email')
                                    <span class="text-danger">{{ $message }}</span>
                                @enderror
                            </div>
                        </div>

                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="inputEmail3" class="control-label">Marital Status </label>
                                <select class="form-control select2 selectpicker   col-12" name="marital_status"
                                    style="width: 100%;" data-live-search="true" data-container="body">
                                    @forelse ($marital_status as $item)
                                        <option value="{{ $item->id }}"
                                            {{ $item->marital_status == $basicdata->marital_status ? 'selected' : '' }}>
                                            {{ $item->marital_status }}</option>
                                    @empty
                                    @endforelse
                                </select>
                                @error('marital_status')
                                    <span class="text-danger">{{ $message }}</span>
                                @enderror
                            </div>
                        </div>

                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="inputEmail3" class="control-label">Date Of Birth </label>
                                <input type="date" class="form-control" id="inputEmail3"
                                    placeholder="Start Project Date" value="{{ $basicdata->dob }}" name="dob" />
                                @error('dob')
                                    <span class="text-danger">{{ $message }}</span>
                                @enderror
                            </div>
                        </div>

                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="inputEmail3" class="control-label">Height</label>
                                <select class="form-control select2 selectpicker col-12" name="Height" style="width: 100%;"
                                    data-live-search="true" data-container="body">
                                    {{-- <option >{{$basicdata->height}}</option> --}}
                                    @forelse ($height as $item)
                                        <option value="{{ $item->id }}"
                                            {{ $item->userheight == $basicdata->height ? 'selected' : '' }}>
                                            {{ $item->userheight }}
                                        </option>
                                    @empty
                                    @endforelse

                                </select>
                                @error('Height')
                                    <span class="text-danger">{{ $message }}</span>
                                @enderror
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="inputEmail3" class="control-label">Religion</label>
                                <select class="form-control select2 selectpicker col-12" name="Religion"
                                    style="width: 100%;" data-live-search="true" data-container="body">
                                    {{-- <option value="">{{$basicdata->Religion}}</option> --}}
                                    @forelse ($Religion as $item)
                                        <option value="{{ $item->id }}"
                                            {{ $item->Religion == $basicdata->Religion ? 'selected' : '' }}>
                                            {{ $item->religion }}
                                        </option>
                                    @empty
                                    @endforelse
                                </select>
                                @error('Religion')
                                    <span class="text-danger">{{ $message }}</span>
                                @enderror
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="inputEmail3" class="control-label">Mother Tongue</label>
                                <select class="form-control select2 selectpicker col-12" name="Mother_Tongue"
                                    style="width: 100%;" data-live-search="true" data-container="body">
                                    {{-- <option value="" >{{$basicdata->mother_tongue}}</option> --}}
                                    @forelse ($Mother_Tongue as $item)
                                        <option value="{{ $item->id }}"
                                            {{ $item->mother_tongue == $basicdata->mother_tongue ? 'selected' : '' }}>
                                            {{ $item->mother_tongue }}
                                        </option>
                                    @empty
                                    @endforelse
                                </select>
                                @error('Mother_Tongue')
                                    <span class="text-danger">{{ $message }}</span>
                                @enderror
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="inputEmail3" class="control-label">Annual Income</label>
                                <input type="text" class="form-control Annual_Income" id="Annual_Income"
                                    placeholder="Annual Income" value="{{ $basicdata->Annual_Income }}"
                                    autocomplete="off" name="Annual_Income">
                                @error('Annual_Income')
                                    <span class="text-danger">{{ $message }}</span>
                                @enderror
                            </div>
                        </div>
                        {{-- @dd($Profile_Managed_by) --}}
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="inputEmail3" class="control-label">Profile Managed by </label>
                                <select class="form-control select2 selectpicker col-12" name="Profile_Managed_by"
                                    style="width: 100%;" data-live-search="true" data-container="body">
                                    {{-- <option>{{$basicdata->profile_managed_by}}</option> --}}

                                    @forelse ($Profile_Managed_by as $item)
                                        <option value="{{ $item->id }}"
                                            {{ $item->profile_Managed_by == $basicdata->profile_Managed_by ? 'selected' : '' }}>
                                            {{ $item->profile_managed_by }}</option>
                                    @empty
                                    @endforelse

                                </select>
                                @error('Profile_Managed_by')
                                    <span class="text-danger">{{ $message }}</span>
                                @enderror
                            </div>
                        </div>

                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="inputEmail3" class="control-label">Cast </label>
                                <select class="form-control select2 selectpickercol-12 " name="Cast" style="width: 100%;"
                                    data-live-search="true" data-container="body">
                                    {{-- <option>{{$basicdata->cast}}</option> --}}
                                    @forelse ($Cast as $item)
                                        <option value="{{ $item->id }}"
                                            {{ $item->cast == $basicdata->cast ? 'selected' : '' }}>
                                            {{ $item->cast }}
                                        </option>
                                    @empty
                                    @endforelse

                                </select>
                                @error('Cast')
                                    <span class="text-danger">{{ $message }}</span>
                                @enderror
                            </div>
                        </div>

                        <div class="col-md-6">
                            <div class="form-group">
                                    <label>Image</label>
                            <input type="file" name="image"  id="image1" class="form-control fs-12" style="line-height: 1;">
                            <img src="{{ asset('public/uploads/user-profile/' . $basicdata->image) }}"
                            width="80" class="img-circle elevation-2" />
                            <div>
                                <span class="text-danger fs-12" id="image"></span>
                            </div>
                            </div>
                        </div>

                        <div class="col-sm-10">
                            <div class="form-group">
                                <div class="col-sm-offset-2 col-sm-10">
                                    <button type="submit" class="btn btn-info">Submit</button>
                                    
                                </div>
                            </div>
                        </div>
                </form>
                @else
                <h1>No Data Available</h1>
                @endif
        </div>
    </details>
    <details class="info">
            <summary>About Me</summary>
       
            <div class="card">
        @if (!empty($about_me))        
                   
                    <form class="form-horizontal multipart/form-data" method="post"
                        action="{{ route('about_me.update', $about_me->id) }}">
                        @csrf
                        @method('PUT')
                        <div class="row">
                            <input type="hidden" class="user_id" name="user_id" id="user_id" value="" />
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="inputEmail3" class="col-sm control-label">Describe Your Self </label>
                                    <textarea class="form-control" id="describe_yourself1" placeholder="Describe Yourself" autocomplete="off"
                                        name="describe_yourself" rows="4" cols="70"
                                        value="{{ $about_me->describe_yourself }}">{{ $about_me->describe_yourself }}</textarea>
                                    <div>
                                        <span class="text-danger" id="describe_yourself"></span>

                                    </div>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="inputEmail3" class="col-sm control-label">Your Family </label>
                                    <textarea class="form-control" id="about_my_family1" placeholder="About_my_family" autocomplete="off"
                                        name="about_my_family" rows="4" cols="50"
                                        value="{{ $about_me->about_my_family }}">{{ $about_me->about_my_family }}</textarea>
                                    <div>
                                        <span class="text-danger" id="about_my_family"></span>

                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="inputEmail3" class="control-label">Educataion </label>
                                    <select class="form-control select2 selectpicker col-12 " name="education"
                                        style="width: 100%;" data-live-search="true" data-container="body">
                                        {{-- <option>{{$basicdata->cast}}</option> --}}
                                        @forelse ($Education as $item)
                                            <option value="{{ $item->id }}"
                                                {{ $item->id == $about_me->education ? 'selected' : '' }}>
                                                {{ $item->education }}
                                            </option>
                                        @empty
                                        @endforelse

                                    </select>
                                    @error('education')
                                        <span class="text-danger">{{ $message }}</span>
                                    @enderror
                                </div>
                            </div>


                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="inputEmail3" class="control-label">Occupation </label>
                                    <select class="form-control select2 selectpicker col-12" name="occupation"
                                        style="width: 100%;" data-live-search="true" data-container="body">
                                        {{-- <option>{{$basicdata->cast}}</option> --}}
                                        @forelse ($Occupation as $item)
                                            <option value="{{ $item->id }}"
                                                {{ $item->id == $about_me->occupation ? 'selected' : '' }}>
                                                {{ $item->occupation }}
                                            </option>
                                        @empty
                                        @endforelse

                                    </select>
                                    @error('occupation')
                                        <span class="text-danger">{{ $message }}</span>
                                    @enderror
                                </div>
                            </div>

                        </div>
                        <div class="col-md-6">
                            <div class="form-group ">
                                <button type="submit" class="btn btn-info">Submit</button>
                            </div>
                        </div>

                    </form>
        @else
        <h1>No Data Available</h1>
        @endif
            </div>
        
    </details>
     <details class="info" id="test1" >  
            <summary>Lifestyle</summary>
        
            <div class="card">
        @if (!empty($lifestyle))       
                <form class="form-horizontal multipart/form-data" method="post"   action="{{ route('lifestyle.update', $lifestyle->id) }} ">
                    @csrf
                    @method('PUT')
                    <div style="zoom:0.8">
                        <input type="hidden" class="user_id" name="user_id" id="user_id" value=""/>
                        <div class="toggle">
                            <legend col-sm-3>Dietary Habits :</legend>
                            <input type="radio" name="Dietary_Habits" value="" id="test" checked="checked" />
                            <label for="">Please select</label>
                            <input type="radio" name="Dietary_Habits" value="Vegetarian"  id="sizeWeight"  {{ $lifestyle->dietary_habits == 'Vegetarian' ? 'checked' : '' }}/>
                            <label for="sizeWeight">Vegetarian</label>
                            <input type="radio" name="Dietary_Habits" value=" Non Vegetarian" id="sizeDimensions"  {{ $lifestyle->dietary_habits == 'Non Vegetarian' ? 'checked' : '' }}  />
                            <label for="sizeDimensions">Non Vegetarian </label>
                            <input type="radio" name="Dietary_Habits" value="Jain" id="sizetest"  {{ $lifestyle->dietary_habits == 'Jain' ? 'checked' : '' }} />
                            <label for="sizetest">Jain</label>
                            <input type="radio" name="Dietary_Habits" value="Eggetarian" id="sizedemo"  {{ $lifestyle->dietary_habits == 'Eggetarian' ? 'checked' : '' }} />
                            <label for="sizedemo">Eggetarian</label>
                        </div>
                        <div>
                            <span class="text-danger fs-14" id="Dietary_Habits"></span>
                          
                        </div>

                        <div class="toggle">
                            <legend col-sm-3>Drinking Habits:</legend>
                            <input type="radio" name="Drinking_Habits" value="" id="test" checked="checked"/>
                            <label for="">Please select</label>
                            <input type="radio" name="Drinking_Habits" value="Yes" id="size1"  {{ $lifestyle->drinking_habits == 'Yes' ? 'checked' : '' }}>
                            <label for="size1">Yes</label>
                            <input type="radio" name="Drinking_Habits" value="No" id="size2"  {{ $lifestyle->drinking_habits == 'No' ? 'checked' : '' }}/>
                            <label for="size2">No</label>
                            <input type="radio" name="Drinking_Habits" value="Occasionally" id="size3"  {{ $lifestyle->drinking_habits == 'Occasionally' ? 'checked' : '' }} />
                            <label for="size3">Occasionally</label>
                        </div>
                        <div>
                            <span class="text-danger fs-14" id="Drinking_Habits"></span>
                            
                        </div>

                        <div class="toggle">
                            <legend col-sm-3>Smoking Habits:</legend>
                            <input type="radio" name="Smoking_Habits" value="" id="test" checked="checked" />
                            <label for="">Please select</label>
                            <input type="radio" name="Smoking_Habits" value="Yes" id="size4"  {{ $lifestyle->Smoking_habits == 'Yes' ? 'checked' : '' }}/>
                            <label for="size4">Yes</label>
                            <input type="radio" name="Smoking_Habits" value="No" id="size5" {{ $lifestyle->Smoking_habits == 'No' ? 'checked' : '' }} />
                            <label for="size5">No</label>
                            <input type="radio" name="Smoking_Habits" value="Occasionally" id="size6" {{ $lifestyle->Smoking_habits == 'Occasionally' ? 'checked' : '' }} />
                            <label for="size6">Occasionally</label>
                        </div>
                        <div>
                            <span class="text-danger fs-14" id="Smoking_Habits"></span>
                        </div>


                        <div class="toggle">
                            <legend col-sm-3>Own a House?:</legend>
                            <input type="radio" name="House" value="" id="test" checked="checked" />
                            <label for="">Please select</label>
                            <input type="radio" name="House" value="Yes" id="size7"  {{ $lifestyle->House == 'Yes' ? 'checked' : '' }}/>
                            <label for="size7">Yes</label>
                            <input type="radio" name="House" value="No" id="size8" {{ $lifestyle->House  == 'No' ? 'checked' : '' }} />
                            <label for="size8">No</label>
                        </div>
                        <div>
                            <span class="text-danger fs-14" id="House"></span>
                       
                        </div>

                        <div class="toggle">
                            <legend col-sm-3>Own a Car?:</legend>
                            <input type="radio" name="Car" value="" id="test" checked="checked" />
                            <label for="">Please select</label>
                            <input type="radio" name="Car" value="Yes" id="size9"
                            {{ $lifestyle->Car == 'Yes' ? 'checked' : '' }} />
                            <label for="size9">Yes</label>
                            <input type="radio" name="Car" value="No" id="size10" 
                            {{ $lifestyle->Car == 'No' ? 'checked' : '' }}/>
                            <label for="size10">No</label>

                        </div>
                        <div>
                            <span class="text-danger fs-14" id="Car"></span>
                            
                        </div>

                        <div class="toggle">
                            <legend col-sm-3>HIV+?:</legend>
                            <input type="radio" name="HIV" value="" id="test" checked="checked" />
                            <label for="">Please select</label>
                            <input type="radio" name="HIV" value="Yes" id="size11"
                            {{ $lifestyle->hiv  == 'Yes' ? 'checked' : '' }} />
                            <label for="size11">Yes</label>
                            <input type="radio" name="HIV" value="No" id="size12"
                            {{ $lifestyle->hiv  == 'No' ? 'checked' : '' }} />
                            <label for="size12">No</label>
                        </div>
                        <div>
                            <span class="text-danger fs-14" id="HIV"></span>
                            
                        </div>



                        <div class="toggle">
                            <legend col-sm-3>Thalassemia :</legend>
                            <input type="radio" name="Thalassemia" value="" id="test" checked="checked" />
                            <label for="">Please select</label>
                            <input type="radio" name="Thalassemia" value="Major" id="size13" {{ $lifestyle->thalassemia  == 'Major' ? 'checked' : '' }} />
                            <label for="size13">Major</label>
                            <input type="radio" name="Thalassemia" value="Minor" id="size14" 
                            {{ $lifestyle->thalassemia == 'Minor' ? 'checked' : '' }}/>
                            <label for="size14">Minor</label>
                            <input type="radio" name="Thalassemia" value="No" id="size15"
                            {{ $lifestyle->thalassemia == 'No' ? 'checked' : '' }} />
                            <label for="size15">No</label>

                        </div>
                        <div>
                            <span class="text-danger fs-14" id="Thalassemia"></span>
                      
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="inputEmail3" class="control-label">Blood Group</label>
                                <select class="form-control select2 selectpicker col-12"  id="blood_group1" name="blood_group" style="width: 100%;"
                                    data-live-search="true" data-container="body">
                                    <option value="" selected="selected">Please Select</option>
                                    @forelse ($blood_group as $item)
                                        <option value="{{ $item->id }}"
                                            {{ $lifestyle->blood_group == $item->id ? 'selected' : '' }}>
                                            {{ $item->blood_groop }}</option>
                                    @empty
                                    @endforelse

                                </select>
                                <div>
                                    <span class="text-danger fs-12" id="blood_group"></span>
                                 
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                    <label for="inputEmail3" class="control-label">Languages I Speak </label>
                                    <select class="form-control select2 selectpicker col-12 " id="languages1"        name="languages[]" style="width: 100%;"
                                        data-live-search="true" data-container="body" multiple data-actions-box="true">
                                        <option value="" disabled>Please Select</option>
                                        @forelse ($langwage as $item)
                                                @foreach(explode(',', $lifestyle->languages) as $info) 
                                                <option value="{{ $item->id }}"
                                                {{ $info== $item->id ? 'selected' : '' }}>{{ $item->language }}
                                            </option>
                                                @endforeach
                                           
                                        @empty
                                        @endforelse

                                    </select>
                                    <div>
                                        <span class="text-danger fs-12" id="languages"></span>
                                       
                                    </div>
                            </div>
                        </div>
                               
                        <div class="col-sm-12">
                            <div class="form-group">
                                <label for="inputEmail3" class="control-label">Challenged</label>
                                <select class="form-control select2 selectpicker col-12" id="Challenged1" name="Challenged" style="width: 100%;"
                                    data-live-search="true" data-container="body" onchange="Challengeds(this)">
                                    <option value="" selected="selected" disabled>Please Select</option>
                                    <option value="None"  {{ $lifestyle->challenged == "None" ? 'selected' : '' }}>None</option>
                                    <option value="Physically - From birth"  {{ $lifestyle->challenged == "Physically - From birth" ? 'selected' : '' }}>Physically - From birth</option>
                                    <option value="Physically - Due to accident"  {{ $lifestyle->challenged == "Physically - Due to accident" ? 'selected' : '' }}>Physically - Due to accident</option>
                                    <option value="Mentally - From birth"  {{ $lifestyle->challenged == "Mentally - From birth" ? 'selected' : '' }}>Mentally - From birth</option>
                                    <option value="Mentally - Due to accident"  {{ $lifestyle->challenged == "Mentally - Due to accident" ? 'selected' : '' }}>Mentally - Due to accident</option>
                                </select>
                                <div>
                                    <span class="text-danger fs-14" id="Challenged"></span>
                                </div>
                               
                            </div>
                        </div>
                         @if($lifestyle->challenged == "Physically - From birth" || $lifestyle->challenged == "Physically - Due to accident" )
                            {{-- @dd('yes') --}} 
                         <div class="col-sm-12"  id="kk" >
                            <div class="form-group">
                                <label for="inputEmail3" class="control-label">Nature of Handicap</label>
                                <select class="form-control select2 selectpicker col-12 " name="handicap_nature" style="width: 100%;"
                                    data-live-search="true" data-container="body" >
                                    <option value="" selected="selected" disabled>Please Select</option>
                                    <option value="Cripple" {{ $lifestyle->handicap_nature == "Cripple" ? 'selected' : '' }}>Cripple</option>
                                    <option value="Hearing Impaired" {{ $lifestyle->handicap_nature == "Hearing Impaired" ? 'selected' : '' }} >Hearing Impaired</option>
                                    <option value="Visually Impaired" {{ $lifestyle->handicap_nature == "Visually Impaired" ? 'selected' : '' }}>Visually Impaired</option>
                                    <option value="Speed Impaired" {{ $lifestyle->handicap_nature == "Speed Impaired" ? 'selected' : '' }}>Speed Impaired</option>
                                    <option value="Other" {{ $lifestyle->handicap_nature == "Other" ? 'selected' : '' }}>Other</option>
                                </select>
                            </div>
                        </div>
                        @endif
                        <div class="col-sm-10">
                            <div class="form-group">
                                <div class="col-sm-offset-2 col-sm-10">
                                    <button type="submit" class="btn btn-info">Submit</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </form>
        @else
        <h1>NO DATA Available</h1>
        @endif        
            </div>
         
    </details>
     <details class="test" id="test4" >
            <summary>Education Career:</summary>
       
            <div class="card">
                @if (!empty($educationcareer))
                <form class="form-horizontal multipart/form-data" method="post"  action="{{ route('education.update', $educationcareer->id) }} ">
                    @csrf
                    @method('PUT')
                    <div class="row">
                        <input type="hidden" class="user_id" name="user_id" id="user_id" value="{{$educationcareer->user_id}}"/>
                            {{-- @dd($educationcareer) --}}
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="inputEmail3" class="control-label">School Name</label>
                                <input type="school_name" class="form-control" id="school_name1" placeholder="School Name"
                                    value="{{ $educationcareer->school_name}}" name="school_name" autocomplete="nope" />
                                    <div>
                                        <span class="text-danger" id="school_name"></span>
                                        
                                    </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="inputEmail3" class="control-label">UG College</label>
                                <input type="text" class="form-control" id="ug_college1" name="ug_college"
                                    placeholder="UG College" value="{{ $educationcareer->ug_college }}" autocomplete="off">
                                    <div>
                                        <span class="text-danger" id="ug_college"></span>
                                        
                                    </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="inputEmail3" class="control-label">PG College</label>
                                <input type="text" class="form-control" id="pg_college1" placeholder="PG College"
                                    value="{{ $educationcareer->pg_college}}" autocomplete="off" name="pg_college">
                                    <div>
                                        <span class="text-danger" id="pg_college"></span>
                                        
                                    </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="inputEmail3" class="col-sm control-label">Highest Educataion </label>
                                <select class="selectpicker col-12" id="highest_education1" name="highest_education" autocomplete="off"
                                    value="{{ old('highest_education') }}" data-live-search="true"
                                    data-container="body">
                                    <option class="textTru chosenDropWid" value="" disabled selected>
                                    <option value=""></option>
                                    @forelse ($Education as $item)
                                        <option value="{{ $item->id}}"
                                            {{ $educationcareer->highest_education == $item->id ? 'selected' : '' }}>
                                                {{ $item->education }}</option>
                                    @empty
                                    @endforelse
                                </select>
                                <div>
                                    <span class="text-danger" id="highest_education"></span>
                                    
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="inputEmail3" class="control-label">Other UG Degree</label>
                                <input type="text" class="form-control" id="other_ug_degree1"
                                    placeholder="Other UG Degree" value="{{$educationcareer->other_ug_degree}}"
                                    autocomplete="off" name="other_ug_degree">
                                    <div>
                                        <span class="text-danger" id="other_ug_degree"></span>
                                        
                                    </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="inputEmail3" class="control-label">Other PG Degree</label>
                                <input type="text" class="form-control" id="other_pg_degree1"
                                    placeholder="Other PG Degree" value="{{$educationcareer->other_pg_degree }}"
                                    autocomplete="off" name="other_pg_degree">
                                    <div>
                                        <span class="text-danger" id="other_pg_degree"></span>
                                        
                                    </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="inputEmail3" class="control-label">Employeed In</label>
                                <input type="text" class="form-control" id="employed_in1" placeholder="Employeed In"
                                    value="{{ $educationcareer->employed_in}}" autocomplete="off" name="employed_in">
                                    <div>
                                        <span class="text-danger" id="employed_in"></span>
                                        
                                    </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="inputEmail3" class="control-label">Occupation</label>
                                <input type="text" class="form-control" id="occupations1" placeholder="Occupation"
                                    value="{{ $educationcareer->occupation}}" autocomplete="off" name="occupation">
                                    <div>
                                        <span class="text-danger" id="occupation"></span>
                                        
                                    </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="inputEmail3" class="control-label">Organisation Name</label>
                                <input type="text" class="form-control" id="organisation_name1"
                                    placeholder="Organisation Name" value="{{ $educationcareer->organisation_name}}"
                                    autocomplete="off" name="organisation_name">
                                    <div>
                                        <span class="text-danger" id="organisation_name"></span>
                                        
                                    </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-offset-2 col-sm-10 mt-4">
                                <button type="submit" class="btn btn-info">Submit</button>
                            </div>
                        </div>
                </form>
                @else
                <h1>NO DATA Available</h1>
            @endif 
            </div>
          
     </details>
    <details class="warning" >
        <summary>Family Details</summary>
        <div class="card">
            @if(!empty($family_details))
            <form class="form-horizontal multipart/form-data" method="post"
            action="{{ route('family_details.update', $family_details->id) }}">
                @csrf
                @method('PUT')

                <div class="row">
                    <input type="hidden" class="user_id" name="user_id" id="user_id" value=""/>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="inputEmail3" name="mothers_occupation" class="col-sm control-label">Mother’s
                                Occupation
                            </label>
                            <select class="selectpicker col-12" id="mothers_occupation1" name="mothers_occupation" autocomplete="off"
                                value="{{ old('mothers_occupation') }}" data-live-search="true"
                                data-container="body">

                                    @forelse ($Occupation as $item)
                                    <option value="{{ $item->id }}"
                                        {{ $item->id == $family_details->mothers_occupation ? 'selected' : '' }}>
                                        {{ $item->occupation }}
                                    </option>
                                @empty
                                @endforelse
                                
                            
                            </select>
                            <div>
                                <span class="text-danger" id="mothers_occupation"></span>
                            
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="inputEmail3" name="fathers_occupation" class="col-sm control-label">Father’s
                                Occupation</label>
                            <select class="selectpicker col-12" id="fathers_occupation1" name="fathers_occupation" autocomplete="off"
                        data-live-search="true"
                                data-container="body">
                            
                                    @forelse ($Occupation as $item)
                                    <option value="{{ $item->id }}"
                                        {{ $item->id == $family_details->fathers_occupation ? 'selected' : '' }}>
                                        {{ $item->occupation }}
                                    </option>
                                @empty
                                @endforelse
                                </option>
                            </select>
                            <div>
                                <span class="text-danger" id="fathers_occupation"></span>
                            
                            </div>
                        </div>
                    </div>
                </div>
               
                
<div class="row">
    <div class="col-md-6">
        <div class="form-group">
            <?php $sis=explode(',',$family_details->sisters); ?>
            <label for="inputEmail3" class="col-sm control-label">Sister(s) </label>   
            <select class="selectpicker col-12" id="sisters1" name="sisters" autocomplete="off"
                data-live-search="true" data-container="body" multiple
                data-max-options="4">
            
        
                <option class="textTru chosenDropWid" value="" disabled selected>Select Sister
                </option>
                <option class="option_0" value="0" style="width:97px"
                    {{ $sis[0] == '0' ? 'selected' : '' }}>None</option>
                <option class="option_1 activeopt" value="1" style="width:97px"
                    {{ $sis[0] == '1' ? 'selected' : '' }}>1</option>
                <option class="option_2" value="2" style="width:97px"
                    {{ $sis[0] == '2' ? 'selected' : '' }}>2</option>
                <option class="option_3" value="3" style="width:97px"
                    {{ $sis[0] == '3' ? 'selected' : '' }}>3</option>
                <option class="option_4" value="4" style="width:98px"
                    {{ $sis[0] == '4' ? 'selected' : '' }}>3+</option>
                <option value="-1" value="" disabled selected>
                    How many married? </option>
                <option class="sub_option_0" value="0" style="width:97px"
                    {{ $sis[1] == '0' ? 'selected' : '' }}>None</option>
                <option class="sub_option_1 activeopt" value="1" style="width:97px"
                    {{ $sis[1] == '1' ? 'selected' : '' }}>1</option>
                <option class="sub_option_2 disp-none" value="2" style="width:97px"
                    {{ $sis[1] == '2' ? 'selected' : '' }}>2</option>
                <option class="sub_option_3 disp-none" value="3" style="width:97px"
                    {{ $sis[1] == '3' ? 'selected' : '' }}>3</option>
                <option class="sub_option_4 disp-none" value="4" style="width:98px"
                    {{ $sis[1] == '4' ? 'selected' : '' }}>3+</option>
                </option>
         
            </select>
            <div>
                <span class="text-danger" id="sisters"></span>
            
            </div>
        </div>
    </div>
    <div class="col-md-6">
        <div class="form-group">
            <?php $bro=explode(',',$family_details->brothers); ?>
            
            <label for="inputEmail3" class="col-sm control-label"> Brother(s) </label>
            <select class="selectpicker col-12" id="brothers1" name="brothers" autocomplete="off"
                data-live-search="true" data-container="body" multiple
                data-max-options="4">
                <option class="textTru chosenDropWid" value="" disabled selected>Select Brother
                    <option class="option_0" value="0" style="width:97px"
    {{ $bro[0]== '0' ? 'selected' : '' }}>None</option>
<option class="option_1 activeopt" value="1" style="width:97px"
    {{ $bro[0]== '1' ? 'selected' : '' }}>1</option>
<option class="option_2" value="2" style="width:97px"
    {{ $bro[0]== '2' ? 'selected' : '' }}>2</option>
<option class="option_3" value="3" style="width:97px"
    {{ $bro[0]== '3' ? 'selected' : '' }}>3</option>
<option class="option_4" value="4" style="width:98px"
    {{ $bro[0]== '4' ? 'selected' : '' }}>3+</option>

<option value="-1" style="width:160px;cursor:default !important"
    class="textTru chosenDropWid" value="" disabled selected>
    How many married? </option>
<option class="sub_option_0" value="0" style="width:97px"
    {{ $bro[1]== '0' ? 'selected' : '' }}>None</option>
<option class="sub_option_1 activeopt" value="1" style="width:97px"
    {{ $bro[1]== '1' ? 'selected' : '' }}>1</option>
<option class="sub_option_2 disp-none" value="2" style="width:97px"
    {{ $bro[1]== '2' ? 'selected' : '' }}>2</option>
<option class="sub_option_3 disp-none" value="3" style="width:97px"
    {{ $bro[1]== '3' ? 'selected' : '' }}>3</option>
<option class="sub_option_4 disp-none" value="4" style="width:98px"
    {{ $bro[1]== '4' ? 'selected' : '' }}>3+</option>
                </option>
            </select>
            <div>
                <span class="text-danger" id="brothers"></span>
            
            </div>
        </div>
    </div>
</div>

                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="inputEmail3" class="col-sm control-label">Family Status </label>
                            <select class="selectpicker col-12" id="family_status1" name="family_status" autocomplete="off"
                            data-live-search="true" data-container="body">
                        
                                <option class="textTru chosenDropWid" value="" disabled selected>Select Family Status
                                <option class="option_1" value="3" style="width:121.5px"
                                {{ $family_details->family_status == "3" ? 'selected' : '' }}>Rich/Affluent</option>
                                <option class="option_2" value="2" style="width:121.5px"
                                {{ $family_details->family_status == "2" ? 'selected' : '' }}>Upper Middle</option>
                                <option class="option_3" value="1" style="width:122.5px"
                                {{ $family_details->family_status == "1" ? 'selected' : '' }}>Middle Class</option>
                                </option>
                
                            </select>
                            <div>
                                <span class="text-danger" id="family_status"></span>
                            
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="inputEmail3"  class="col-sm control-label"> Family Income </label>
                            <select class="selectpicker col-12"  id="family_income1" name="family_income" autocomplete="off"
                                data-live-search="true" data-container="body">
                                
                                @forelse ($family_income as $item)
                                <option value="{{ $item->id }}"
                                    {{ $item->id == $family_details->family_income ? 'selected' : '' }}>
                                    {{ $item->family_income }}
                                </option>
                            @empty
                            @endforelse
                            </select>
                            <div>
                                <span class="text-danger" id="family_income"></span>
                            
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="inputEmail3" class="col-sm control-label"> Family Type </label>
                            <select class="selectpicker col-12" id="family_type1" name="family_type" autocomplete="off"
                        data-live-search="true" data-container="body">
                                <option class="textTru chosenDropWid" value="" disabled selected>Select Your Family
                                    Type
                                <option class="option_1" value="1" style="width:121.5px" {{ $family_details->family_type == "1" ? 'selected' : '' }}>Joint Family</option>
                                <option class="option_2 activeopt" value="2" style="width:121.5px" {{ $family_details->family_type == "2" ? 'selected' : '' }}>Nuclear Family
                                </option>
                                <option class="option_3" value="3" style="width:122.5px" {{ $family_details->family_type == "3" ? 'selected' : '' }}>Others</option>
                                </option>
                            </select>
                            <div>
                                <span class="text-danger" id="family_type"></span>
                            
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="inputEmail3" class="col-sm control-label"> Family Based Out Of </label>
                        
                            <select class="selectpicker col-12" id="family_based_out_of1" name="family_based_out_of" autocomplete="off"
                            data-live-search="true"
                                data-container="body">
                                @forelse ($family_based_out_of as $item)
                                    <option value="{{ $item->id }}"
                                        {{ $item->id == $family_details->family_based_out_of ? 'selected' : '' }}>
                                        {{ $item->family_based_out_of }}
                                    </option>
                            @empty
                            @endforelse
                            </select>
                            <div>
                                <span class="text-danger" id="family_based_out_of"></span>
                            
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="inputEmail3" class="col-sm control-label"> Gothra </label>
                            <input class="form-control" id="gothra1" placeholder="gothra" autocomplete="off"
                                name="gothra" rows="4" cols="50" value="{{ $family_details->gothra}}">
                                <div>
                                    <span class="text-danger" id="gothra"></span>
                                
                                </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="inputEmail3" class="col-sm control-label"> Gothra(Maternal) </label>
                            <input class="form-control" id="gothra_maternal1" placeholder="gothra_maternal"
                                autocomplete="off" name="gothra_maternal" rows="4" cols="50"
                                value="{{ $family_details->gothra_maternal}}">
                                <div>
                                    <span class="text-danger" id="gothra_maternal"></span>
                                
                                </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-10">
                    <div class="form-group ">
                        <button type="submit" class="btn btn-info">Submit</button>
                    </div>
                </div>
            </form>
            @else
            <h1>No Data Available</h1>
            @endif
        </div>
        
    </details>       
    <details class="info">
        <summary>
            <div class="fl colr5 pl8 f17 pt3">Your Likes</div>
        </summary>
        <div class="card">
            @if (!empty($your_likes))
                <form class="form-horizontal multipart/form-data" method="post"
                    action="{{ route('your_likes.update', $your_likes->id) }}">

                    @csrf
                    @method('PUT')

                    <div class="row">
                        <div class="col-sm-5">
                            <div class="form-group">
                                <label for="inputEmail3" name="hobbies" class="col-sm control-label"> Hobbies
                                </label>

                                <select class="selectpicker col-12" id="hobbies1" name="hobbies" autocomplete="off"
                                    multiple="multiple" style="display: none;" data-live-search="true"
                                    data-container="body">

                                    @forelse ($hobbies as $item)
                                        <option value="{{ $item->id }}"
                                            {{ $item->id == $your_likes->hobbies ? 'selected' : '' }}>
                                            {{ $item->hobbies }}
                                        </option>
                                    @empty
                                    @endforelse

                                </select>
                                <div>
                                    <span class="text-danger" id="hobbies"></span>

                                </div>
                            </div>
                        </div>

                        <div class="col-sm-5">
                            <div class="form-group">
                                <label for="inputEmail3" name="interests" class="col-sm control-label">
                                    Interests</label>
                                <select class="selectpicker col-12" id="interests1" name="interests" autocomplete="off"
                                    multiple="multiple" style="display: none;" data-live-search="true"
                                    data-container="body">

                                    @forelse ($interests as $item)
                                        <option value="{{ $item->id }}"
                                            {{ $item->id == $your_likes->interests ? 'selected' : '' }}>
                                            {{ $item->interests }}
                                        </option>
                                    @empty
                                    @endforelse
                                </select>
                                <div>
                                    <span class="text-danger" id="interests"></span>

                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-sm-5">
                            <div class="form-group">
                                <label for="inputEmail3" name="music" class="col-sm control-label">Favourite Music
                                </label>

                                <select class="selectpicker col-12" id="music1" name="music" autocomplete="off"
                                    multiple="multiple" style="display: none;" data-live-search="true"
                                    data-container="body">
                                    @forelse ($music as $item)
                                        <option value="{{ $item->id }}"
                                            {{ $item->id == $your_likes->music ? 'selected' : '' }}>
                                            {{ $item->music }}
                                        </option>
                                    @empty
                                    @endforelse
                                </select>
                                <div>
                                    <span class="text-danger" id="music"></span>

                                </div>
                            </div>
                        </div>

                        <div class="col-sm-5">
                            <div class="form-group">
                                <label for="inputEmail3" name="book" class="col-sm control-label">Favourite
                                    Book</label>
                                <select class="selectpicker col-12" id="book" name="book" autocomplete="off"
                                    multiple="multiple" style="display: none;" data-live-search="true"
                                    data-container="body">

                                    @forelse ($book as $item)
                                        <option value="{{ $item->id }}"
                                            {{ $item->id == $your_likes->book ? 'selected' : '' }}>
                                            {{ $item->book }}
                                        </option>
                                    @empty
                                    @endforelse


                                </select>
                                <div>
                                    <span class="text-danger" id="book"></span>

                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-sm-5">
                            <div class="form-group">
                                <label for="inputEmail3" name="cuisine" class="col-sm control-label">Cuisine
                                </label>
                                <select class="selectpicker col-12" id="cuisine" name="cuisine" autocomplete="off"
                                    multiple="multiple" style="display: none;" data-live-search="true"
                                    data-container="body">
                                    @forelse ($cuisine as $item)
                                        <option value="{{ $item->id }}"
                                            {{ $item->id == $your_likes->cuisine ? 'selected' : '' }}>
                                            {{ $item->cuisine }}
                                        </option>
                                    @empty
                                    @endforelse

                                </select>
                                <div>
                                    <span class="text-danger" id="cuisine"></span>

                                </div>
                            </div>
                        </div>


                        <div class="col-sm-5">
                            <div class="form-group">
                                <label for="inputEmail3" name="fav_movies" class="col-sm control-label">Favourite
                                    Movies</label>

                                <select class="selectpicker col-12" id="fav_movies" name="fav_movies" autocomplete="off"
                                    multiple="multiple" style="display: none;" data-live-search="true"
                                    data-container="body">
                                    @forelse ($fav_movies as $item)
                                        <option value="{{ $item->id }}"
                                            {{ $item->id == $your_likes->fav_movies ? 'selected' : '' }}>
                                            {{ $item->fav_movies }}
                                        </option>
                                    @empty
                                    @endforelse

                                </select>
                                <div>
                                    <span class="text-danger" id="fav_movies"></span>

                                </div>
                            </div>
                        </div>
                    </div>


                    <div class="row">
                        <div class="col-sm-5">
                            <div class="form-group">
                                <label for="inputEmail3" name="dress_style" class="col-sm control-label">Dress
                                    Style</label>

                                <select class="selectpicker col-12" id="dress_style" name="dress_style"
                                    autocomplete="off" multiple="multiple" style="display: none;"
                                    data-live-search="true" data-container="body">
                                    @forelse ($dress_style as $item)
                                        <option value="{{ $item->id }}"
                                            {{ $item->id == $your_likes->dress_style ? 'selected' : '' }}>
                                            {{ $item->dress_style }}
                                        </option>
                                    @empty
                                    @endforelse
                                </select>
                                <div>
                                    <span class="text-danger" id="dress_style"></span>

                                </div>
                            </div>
                        </div>

                        <div class="col-sm-5">
                            <div class="form-group">
                                <label for="inputEmail3" name="sports" class="col-sm control-label">Sports</label>
                                <select class="selectpicker col-12" id="sports" name="sports" autocomplete="off"
                                    multiple="multiple" style="display: none;" data-live-search="true"
                                    data-container="body">
                                    @forelse ($sports as $item)
                                        <option value="{{ $item->id }}"
                                            {{ $item->id == $your_likes->sports ? 'selected' : '' }}>
                                            {{ $item->sports }}
                                        </option>
                                    @empty
                                    @endforelse
                                </select>
                                <div>
                                    <span class="text-danger" id="sports"></span>

                                </div>
                            </div>
                        </div>
                    </div>

                     {{-- @dd($your_likes) --}}
                    <div class="row">
                        <div class="col-sm-5">
                            <div class="form-group">
                                <label for="inputEmail3" name="tv_show" class="col-sm control-label">TV Shows
                                </label>
                                <input class="form-control" id="tv_show1" placeholder="tv_show" autocomplete="off"
                                    name="tv_show" rows="4" cols="50"  value={{ $your_likes->tv_show }}>
                                <div>
                                    <span class="text-danger" id="tv_show"></span>

                                </div>
                            </div>
                        </div>
                        <div class="col-sm-5">
                            <div class="form-group">
                                <label for="inputEmail3" name="movies" class="col-sm control-label">Movies
                                </label>
                                <input class="form-control" id="movies" placeholder="movies" autocomplete="off"
                                    name="movies" rows="4" cols="50" value={{ $your_likes->movies }}>
                                <div>
                                    <span class="text-danger" id="movies"></span>

                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-sm-5">
                            <div class="form-group">
                                <label for="inputEmail3" class="col-sm control-label"> Vacation Destination</label>
                                <input class="form-control" id="destination" placeholder="destination"
                                    autocomplete="off" name="destination" rows="4" cols="50"
                                    value={{ $your_likes->destination }}>
                                <div>
                                    <span class="text-danger" id="destination"></span>

                                </div>
                            </div>
                        </div>

                        <div class="col-sm-5">
                            <div class="form-group">
                                <label for="inputEmail3" name="food" class="col-sm control-label">Food I
                                    Cook</label>
                                <input class="form-control" id="food" placeholder="food" autocomplete="off"
                                    name="food" rows="4" cols="50" value={{ $your_likes->food }}>
                                <div>
                                    <span class="text-danger" id="food"></span>

                                </div>
                            </div>
                        </div>
                    </div>


                    <div class="row">

                        <div class="col-sm-5">
                            <div class="form-group">
                                <label for="inputEmail3" name="read" class="col-sm control-label">Favourite Read
                                </label>
                                <input class="form-control" id="read" placeholder="read" autocomplete="off"
                                    name="read" rows="4" cols="50" value={{ $your_likes->read }}>
                                <div>
                                    <span class="text-danger" id="read"></span>

                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-10">
                        <div class="form-group ">
                            <button type="submit" class="btn btn-info">Submit</button>
                        </div>
                    </div>

                </form>
            @else
                <h1>NO DATA Available</h1>
            @endif
        </div>
    </details>


    <script>
        document.querySelector(".Annual_Income").addEventListener("keypress", function(evt) {
            if (evt.which != 8 && evt.which != 0 && evt.which < 48 || evt.which > 57) {
                evt.preventDefault();
            }
        });
        $(".name").keypress(function(event) {
            var inputValue = event.charCode;
            if (!(inputValue >= 65 && inputValue <= 120) && (inputValue != 32 && inputValue != 0)) {
                event.preventDefault();
            }
        });
        $(function() {
            $('.selectpicker').selectpicker('refresh');
        });
        $(document).ready(function() {
            $("#hide").click(function() {
                $("p").hide();
            });
            $("#Profile_Managed_by").click(function() {
                $("d-none").show();
            });
        });

        function Challengeds(element) {
            var value = element.value;

            $.ajax({
                type: "get",
                url: "{{ route('lifestyle.index') }}",
                data: {
                    post: value,
                },
                success: function(response) {
                    if (response == 'Physically - From birth') {
                        $("#kk").removeClass("d-none")
                    }
                    if (response == 'Physically - Due to accident') {
                        $("#kk").removeClass("d-none")
                    }
                    if (response == 'Mentally - From birth') {
                        $("#kk").addClass("d-none")
                    }
                    if (response == 'Mentally - Due to accident') {
                        $("#kk").addClass("d-none")
                    }
                    if (response == 'None') {
                        $("#kk").addClass("d-none")
                    }
                }
            });
        }
    </script>
@endsection
