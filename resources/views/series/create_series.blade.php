@extends('main')

@section('heading')
    Registeruser Manager
@endsection('heading')

@section('sub-heading')
    Create New user
@endsection('sub-heading')



@section('content')
    <link rel="stylesheet" href="{{ asset('public/css/from.css') }}">
    <link rel="stylesheet" href="{{ asset('public/css/radio.css') }}">

    <div class="card">
    
        <details class="warning" id="test" open>
            <summary>User Details</summary>
            <div class="card">
                <form id="form1" class="form-horizontal multipart/form-data" method="post" 
                    enctype="multipart/form-data" onsubmit= "return form1(this)">
                    @csrf
                    @method('Get|Post')
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="inputEmail3" class="control-label ">First Name</label>
                                <input type="text" class="form-control name" id="name" placeholder="Name"
                                    value="{{ old('first_name') }}" autocomplete="off" name="first_name">
                                    <div>
                                        <span class="text-danger fs-12" id="first_name"></span>
                                        
                                    </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="inputEmail3" class="control-label ">Last Name</label>
                                <input type="text" class="form-control name" placeholder="Last Name"
                                    value="{{ old('last_name') }}" autocomplete="off" id="last_name" name="last_name">
                                    <div>
                                        <span class="text-danger fs-12" id="last_name"></span>
                                        {{-- <p id="cast"></p> --}} 
                                    </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="inputEmail3" class="control-label">Email</label>
                                <input type="email" class="form-control" placeholder="Email"
                                    value="{{ old('email') }}" name="email" autocomplete="nope" />
                                    <div>
                                        <span class="text-danger fs-12" id="email"></span>
                                        {{-- <p id="cast"></p> --}} 
                                    </div>
                            </div>
                        </div>

                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="inputEmail3" class="control-label">Marital Status </label>
                                <select class="form-control select2 selectpicker col-12" id="marital_status1"
                                    name="marital_status" style="width: 100%;" data-live-search="true"
                                    data-container="body">
                                    <option value="" selected="selected">Please Select</option>
                                    @forelse ($marital_status as $item)
                                        <option value="{{ $item->id }}"
                                            {{ old('marital_status') == $item->id ? 'selected' : '' }}>
                                            {{ $item->marital_status }}</option>
                                    @empty
                                    @endforelse
                                </select>
                                <div>
                                    <span class="text-danger fs-12" id="marital_status"></span>
                                
                                </div>
                            </div>
                        </div>

                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="inputEmail3" class="control-label">Date Of Birth </label>
                                <input type="date" class="form-control" id="dob1" placeholder="Start Project Date"
                                    value="{{ old('dob') }}" name="dob" value="" />
                                    <div>
                                        <span class="text-danger fs-12" id="dob"></span>
                                        {{-- <p id="cast"></p> --}} 
                                    </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="inputEmail3" class="control-label">Height</label>
                                <select class="form-control select2 selectpicker col-12" name="Height" style="width: 100%;"
                                    data-live-search="true" data-container="body" id="Height1">
                                    <option selected="selected" disabled>Please Select</option>
                                    @forelse ($userheight as $item)
                                        <option value="{{ $item->id }}"
                                            {{ old('Height') == $item->id ? 'selected' : '' }}>{{ $item->userheight }}
                                        </option>
                                    @empty
                                    @endforelse
                                </select>
                                <div>
                                    <span class="text-danger fs-12" id="Height"></span>
                                    {{-- <p id="cast"></p> --}} 
                                </div>
                            </div>
                        </div>
                        {{-- @dd($Religion) --}}
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="inputEmail3" class="control-label">Religion</label>
                                <select class="form-control select2 selectpicker col-12" id="religion1" name="religion" style="width: 100%;"
                                    data-live-search="true" data-container="body">
                                    <option value="" disabled selected>Chosse Your Religion</option>
                                    @forelse ($religion as $item)
                                        <option value="{{ $item->id }}"
                                            {{ old('religion') == $item->id ? 'selected' : '' }}>{{ $item->religion }}
                                        </option>
                                    @empty
                                    @endforelse
                                </select>
                                <div>
                                    <span class="text-danger fs-12" id="Religion"></span>
        
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="inputEmail3" class="control-label">Mother Tongue</label>
                                <select class="form-control select2 selectpicker col-12" name="Mother_Tongue" style="width: 100%;"
                                    data-live-search="true" data-container="body" id="Mother_Tongue1">
                                    <option value="" selected="selected">Please Select</option>
                                    @forelse ($Mother_Tongue as $item)
                                        <option value="{{ $item->id }}"
                                            {{ old('Mother_Tongue') == $item->id ? 'selected' : '' }}>
                                            {{ $item->mother_tongue }}</option>
                                    @empty
                                    @endforelse
                                </select>
                                <div>
                                    <span class="text-danger fs-12" id="Mother_Tongue"></span>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="inputEmail3" class="control-label">Annual Income</label>
                                <input type="text" class="form-control Annual_Income" 
                                    placeholder="Annual Income" value="{{ old('Annual_Income') }}" autocomplete="off"
                                    name="Annual_Income" id="Annual_Income1">
                                    <div>
                                        <span class="text-danger fs-12" id="Annual_Income"></span>
                                        {{-- <p id="cast"></p> --}} 
                                    </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="inputEmail3" class="control-label">Profile Managed by </label>
                                <select class="form-control select2 selectpicker col-12 " id="Profile_Managed_by1"
                                    name="Profile_Managed_by" style="width: 100%;" data-live-search="true"
                                    data-container="body">
                                    <option value="" selected="selected">Please Select</option>
                                    @forelse ($Profile_Managed_by as $item)
                                        <option value="{{ $item->id }}"
                                            {{ old('Profile_Managed_by') == $item->id ? 'selected' : '' }}>
                                            {{ $item->profile_managed_by }}</option>
                                    @empty
                                    @endforelse

                                </select>
                                <div>
                                    <span class="text-danger fs-12" id="Profile_Managed_by"></span>
                                    {{-- <p id="cast"></p> --}}
                                </div>

                            </div>

                        </div>

                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="inputEmail3" class="control-label">Cast </label>
                                <select class="form-control select2 selectpicker col-12 " id="cast1" name="Cast"
                                    style="width: 100%;" data-live-search="true" data-container="body">
                                    <option value="" selected="selected">Please Select</option>
                                    @forelse ($Cast as $item)
                                        <option value="{{ $item->id }}"
                                            {{ old('Cast') == $item->id ? 'selected' : '' }}>{{ $item->cast }}
                                        </option>
                                    @empty
                                    @endforelse
                                </select>
                                <div>
                                    <span class="text-danger fs-12" id="cast"></span>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            {{-- <div class="form-group">
                                <label>Image</label>
                                    <input type="file" name="image"  id="image1" class="form-control fs-12" style="line-height: 1;">
                                    <div>
                                        <span class="text-danger fs-12" id="image"></span>
                                    </div>
                            </div> --}}

                    </div>
                    <div class="col-sm-12">
                        <div class="form-group">
                            <button type="submit" class="btn btn-info">Submit</button>
                        </div>
                    </div>
            </form>
        </details>
        <details class="info d-none " id="test1" open >
            <summary>Lifestyle</summary>
            <div class="card">
                <form class="form-horizontal multipart/form-data" method="post"   onsubmit= "return form2()">
                    @csrf
                    @method('Get|Post')
                    <div style="zoom:0.8">
                        <input type="hidden" class="user_id" name="user_id" id="user_id" value=""/>
                        <div class="toggle">
                            <legend col-sm-3>Dietary Habits :</legend>
                            <input type="radio" name="Dietary_Habits" value="" id="test" checked="checked" />
                            <label for="">Please select</label>
                            <input type="radio" name="Dietary_Habits" value="Vegetarian" id="sizeWeight"
                                {{ old('Dietary_Habits') == 'Vegetarian' ? 'checked' : '' }} />
                            <label for="sizeWeight">Vegetarian</label>
                            <input type="radio" name="Dietary_Habits" value=" Non Vegetarian" id="sizeDimensions"
                                {{ old('Dietary_Habits') == 'Non Vegetarian' ? 'checked' : '' }} />
                            <label for="sizeDimensions">Non Vegetarian </label>
                            <input type="radio" name="Dietary_Habits" value="Jain" id="sizetest"
                                {{ old('Dietary_Habits') == 'Jain' ? 'checked' : '' }} />
                            <label for="sizetest">Jain</label>
                            <input type="radio" name="Dietary_Habits" value="Eggetarian" id="sizedemo"
                                {{ old('Dietary_Habits') == 'Eggetarian' ? 'checked' : '' }} />
                            <label for="sizedemo">Eggetarian</label>
                        </div>
                        <div>
                            <span class="text-danger fs-14" id="Dietary_Habits"></span>
                          
                        </div>

                        <div class="toggle">
                            <legend col-sm-3>Drinking Habits:</legend>
                            <input type="radio" name="Drinking_Habits" value="" id="test" checked="checked"/>
                            <label for="">Please select</label>
                            <input type="radio" name="Drinking_Habits" value="Yes" id="size1"
                                {{ old('Drinking_Habits') == 'Yes' ? 'checked' : '' }}>
                            <label for="size1">Yes</label>
                            <input type="radio" name="Drinking_Habits" value="No" id="size2"
                                {{ old('Drinking_Habits') == 'No' ? 'checked' : '' }} />
                            <label for="size2">No</label>
                            <input type="radio" name="Drinking_Habits" value="Occasionally" id="size3"
                                {{ old('Drinking_Habits') == 'Occasionally' ? 'checked' : '' }} />
                            <label for="size3">Occasionally</label>
                        </div>
                        <div>
                            <span class="text-danger fs-14" id="Drinking_Habits"></span>
                            
                        </div>

                        <div class="toggle">
                            <legend col-sm-3>Smoking Habits:</legend>
                            <input type="radio" name="Smoking_Habits" value="" id="test" checked="checked" />
                            <label for="">Please select</label>
                            <input type="radio" name="Smoking_Habits" value="Yes" id="size4"
                                {{ old('Smoking_Habits') == 'Yes' ? 'checked' : '' }} />
                            <label for="size4">Yes</label>
                            <input type="radio" name="Smoking_Habits" value="No" id="size5"
                                {{ old('Smoking_Habits') == 'No' ? 'checked' : '' }} />
                            <label for="size5">No</label>
                            <input type="radio" name="Smoking_Habits" value="Occasionally" id="size6"
                                {{ old('Smoking_Habits') == 'Occasionally' ? 'checked' : '' }} />
                            <label for="size6">Occasionally</label>
                        </div>
                        <div>
                            <span class="text-danger fs-14" id="Smoking_Habits"></span>
                        </div>


                        <div class="toggle">
                            <legend col-sm-3>Own a House?:</legend>
                            <input type="radio" name="House" value="" id="test" checked="checked" />
                            <label for="">Please select</label>
                            <input type="radio" name="House" value="Yes" id="size7"
                                {{ old('House') == 'Yes' ? 'checked' : '' }} />
                            <label for="size7">Yes</label>
                            <input type="radio" name="House" value="No" id="size8"
                                {{ old('House') == 'No' ? 'checked' : '' }} />
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
                                {{ old('Car') == 'Yes' ? 'checked' : '' }} />
                            <label for="size9">Yes</label>
                            <input type="radio" name="Car" value="No" id="size10"
                                {{ old('Car') == 'No' ? 'checked' : '' }} />
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
                                {{ old('HIV') == 'Yes' ? 'checked' : '' }} />
                            <label for="size11">Yes</label>
                            <input type="radio" name="HIV" value="No" id="size12"
                                {{ old('HIV') == 'No' ? 'checked' : '' }} />
                            <label for="size12">No</label>
                        </div>
                        <div>
                            <span class="text-danger fs-14" id="HIV"></span>
                            
                        </div>



                        <div class="toggle">
                            <legend col-sm-3>Thalassemia :</legend>
                            <input type="radio" name="Thalassemia" value="" id="test" checked="checked" />
                            <label for="">Please select</label>
                            <input type="radio" name="Thalassemia" value="Major" id="size13"
                                {{ old('Thalassemia') == 'Major' ? 'checked' : '' }} />
                            <label for="size13">Major</label>
                            <input type="radio" name="Thalassemia" value="Minor" id="size14"
                                {{ old('Thalassemia') == 'Minor' ? 'checked' : '' }} />
                            <label for="size14">Minor</label>
                            <input type="radio" name="Thalassemia" value="No" id="size15"
                                {{ old('Thalassemia') == 'Minor' ? 'checked' : '' }} />
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
                                <select class="form-control select2 selectpicker col-12 "  id="blood_group1" name="blood_group" style="width: 100%;"
                                    data-live-search="true" data-container="body">
                                    <option value="" selected="selected">Please Select</option>
                                    @forelse ($blood_group as $item)
                                        <option value="{{ $item->id }}"
                                            {{ old('blood_groop') == $item->id ? 'selected' : '' }}>
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
                                            <option value="{{ $item->id }}"
                                                {{ old('languages') == $item->id ? 'selected' : '' }}>{{ $item->language }}
                                            </option>
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
                                <select class="form-control select2 selectpicker col-12 " id="Challenged1" name="Challenged" style="width: 100%;"
                                    data-live-search="true" data-container="body" onchange="Challengeds(this)">
                                    <option value="" selected="selected" disabled>Please Select</option>
                                    <option value="None">None</option>
                                    <option value="Physically - From birth">Physically - From birth</option>
                                    <option value="Physically - Due to accident">Physically - Due to accident</option>
                                    <option value="Mentally - From birth">Mentally - From birth</option>
                                    <option value="Mentally - Due to accident">Mentally - Due to accident</option>
                                </select>
                                <div>
                                    <span class="text-danger fs-12" id="Challenged"></span>
                                </div>
                               
                            </div>
                        </div>

                        <div class="col-sm-12  d-none" id="kk">
                            <div class="form-group">
                                <label for="inputEmail3" class="control-label">Nature of Handicap</label>
                                <select class="form-control select2 selectpicker col-12 " name="handicap_nature"
                                    style="width: 100%;" data-live-search="true" data-container="body">
                                    <option value="" selected="selected" disabled>Please Select</option>
                                    <option value="Cripple">Cripple</option>
                                    <option value="Hearing Impaired">Hearing Impaired</option>
                                    <option value="Visually Impaired">Visually Impaired</option>
                                    <option value="Speed Impaired">Speed Impaired</option>
                                    <option value="Other">Other</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-sm-12">
                            <div class="form-group">
                                <button type="submit" class="btn btn-info">Submit</button>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </details>
        <details class="info d-none" id="test2" open>
            <summary>About Me</summary>
            <div class="card">
                <form class="form-horizontal multipart/form-data" method="post" onsubmit= "return form3()" >
                    @csrf
                    @method('Get|Post')
                    <div class="row">
                        <input type="hidden" class="user_id" name="user_id" id="user_id" value=""/>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="inputEmail3" class="col-sm control-label">Describe Your Self </label>
                                <textarea class="form-control" id="describe_yourself1" placeholder="Describe Yourself" autocomplete="off"
                                    name="describe_tourself" rows="4" cols="70"
                                    value="{{ old('describe_tourself') }}"></textarea>
                                    <div>
                                        <span class="text-danger fs-12" id="describe_yourself"></span>
                                      
                                    </div>
                            </div>
                        </div>

                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="inputEmail3" class="col-sm control-label">Your Family </label>
                                <textarea class="form-control" id="about_my_family1" placeholder="About My Family" autocomplete="off"
                                    name="about_my_family" rows="4" cols="50"
                                    value="{{ old('about_my_family') }}"></textarea>
                                    <div>
                                        <span class="text-danger fs-12" id="about_my_family"></span>
                                      
                                    </div>
                            </div>
                        </div>
                    

                    
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="inputEmail3" class="col-sm control-label">Educataion </label>
                                <select class="selectpicker col-12"  id ="education1" name="education" autocomplete="off"
                                    value="{{ old('education') }}" data-live-search="true" data-container="body">
                                    <option class="textTru chosenDropWid" value="" disabled selected>
                                    <option value=""></option>
                                    @forelse ($educt as $item)
                                        <option value="{{ $item->id }}">{{ $item->education }}</option>
                                    @empty
                                    @endforelse
                                </select>
                                <div>
                                    <span class="text-danger fs-12" id="education"></span>
                                  
                                </div>
                            </div>
                        </div>

                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="inputEmail3" class="col-sm control-label">Occupation </label>
                                <select class="selectpicker col-12" id="occupation1" name="occupation" autocomplete="off"
                                    value="{{ old('occupation') }}" data-live-search="true" data-container="body">
                                    <option class="textTru chosenDropWid" value="" disabled selected>
                                        @forelse ($adout as $item)
                                    <option value="{{ $item->id }}">{{ $item->occupation }}</option>
                                @empty
                                    @endforelse
                                </select>
                                <div>
                                    <span class="text-danger fs-12" id="occupation"></span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-12">
                        <div class="form-group">
                            <button type="submit" class="btn btn-info">Submit</button>
                        </div>
                    </div>

                </form>
            </div>
        </details>
        <details class="warning d-none " id="test3" open>
            <summary>Family Details</summary>
            <div class="card">
                <form class="form-horizontal multipart/form-data" method="post" onsubmit= "return form4()" >
                    @csrf
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
                                    <option class="textTru chosenDropWid" disabled selected>Select Mother's Occupation

                                        @forelse ($adout as $item)
                                    <option value="{{ $item->id }}">{{ $item->occupation }}</option>
                                @empty
                                    @endforelse
                                </select>
                                <div>
                                    <span class="text-danger fs-12" id="mothers_occupation"></span>
                                  
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="inputEmail3" name="fathers_occupation" class="col-sm control-label">Father’s
                                    Occupation</label>
                                <select class="selectpicker col-12" id="fathers_occupation1" name="fathers_occupation" autocomplete="off"
                                    value="{{ old('fathers_occupation') }}" data-live-search="true"
                                    data-container="body">
                                    <option class="textTru chosenDropWid" value="" disabled selected>Select Father's
                                        @forelse ($adout as $item)
                                    <option value="{{ $item->id }}">{{ $item->occupation }}</option>
                                @empty
                                    @endforelse
                                    </option>
                                </select>
                                <div>
                                    <span class="text-danger fs-12" id="fathers_occupation"></span>
                                  
                                </div>
                            </div>
                        </div>
                    
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="inputEmail3" class="col-sm control-label">Sister(s) </label>
                                <select class="selectpicker col-12" id="sisters1" name="sisters" autocomplete="off"
                                    value="{{ old('sisters') }}" data-live-search="true" data-container="body" multiple
                                    data-max-options="4">
                                    <optgroup  data-max-options="2">
                                    <option class="textTru chosenDropWid"  value="" disabled selected >Select Sister
                                    </option>
                                    <option class="option_0" value="0" style="width:97px">None</option>
                                    <option class="option_1 activeopt" value="1" style="width:97px">1</option>
                                    <option class="option_2" value="2" style="width:97px">2</option>
                                    <option class="option_3" value="3" style="width:97px">3</option>
                                    <option class="option_4" value="4" style="width:98px">3+</option>
                                    </optgroup>
                                    <optgroup data-max-options="2">
                                     <option class="textTru chosenDropWid"  value="-1" value="" disabled selected>How many married? 
                                        </option>
                                    <option class="sub_option_0" value="0" style="width:97px">None</option>
                                    <option class="sub_option_1 activeopt" value="1" style="width:97px">1</option>
                                    <option class="sub_option_2 disp-none" value="2" style="width:97px">2</option>
                                    <option class="sub_option_3 disp-none" value="3" style="width:97px">3</option>
                                    <option class="sub_option_4 disp-none" value="4" style="width:98px">3+</option>
                                    </option>
                                    </optgroup>
                                </select>
                                <div>
                                    <span class="text-danger fs-12" id="sisters"></span>
                                  
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="inputEmail3" class="col-sm control-label"> Brother(s) </label>
                                <select class="selectpicker col-12" id="brothers1" name="brothers" autocomplete="off"
                                    value="{{ old('brothers') }}" data-live-search="true" data-container="body" multiple
                                    data-max-options="4">
                                    <optgroup data-max-options="2">
                                    <option class="textTru chosenDropWid" value="" disabled selected>Select Brother
                                    <option class="option_0" value="0" style="width:97px">None</option>
                                    <option class="option_1 activeopt" value="1" style="width:97px">1</option>
                                    <option class="option_2" value="2" style="width:97px">2</option>
                                    <option class="option_3" value="3" style="width:97px">3</option>
                                    <option class="option_4" value="4" style="width:98px">3+</option>
                                    </optgroup>
                                    <optgroup data-max-options="2">
                                    <option value="-1"
                                        class="textTru chosenDropWid" value="" disabled selected>
                                        How many married? </option>
                                    <option class="sub_option_0" value="0" style="width:97px">None</option>
                                    <option class="sub_option_1 activeopt" value="1" style="width:97px">1</option>
                                    <option class="sub_option_2 disp-none" value="2" style="width:97px">2</option>
                                    <option class="sub_option_3 disp-none" value="3" style="width:97px">3</option>
                                    <option class="sub_option_4 disp-none" value="4" style="width:98px">3+</option>
                                    </option>
                                    </optgroup>
                                </select>
                                <div>
                                    <span class="text-danger fs-12" id="brothers"></span>
                                  
                                </div>
                            </div>
                        </div>
                    
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="inputEmail3" class="col-sm control-label">Family Status </label>
                                <select class="selectpicker col-12" id="family_status1" name="family_status" autocomplete="off"
                                    value="{{ old('family_status') }}" data-live-search="true" data-container="body">
                                    <option class="textTru chosenDropWid" value="" disabled selected>Select Family Status
                                    <option class="option_1" value="3" style="width:121.5px">Rich/Affluent</option>
                                    <option class="option_2" value="2" style="width:121.5px">Upper Middle</option>
                                    <option class="option_3" value="1" style="width:122.5px">Middle Class</option>
                                    </option>
                                </select>
                                <div>
                                    <span class="text-danger fs-12" id="family_status"></span>
                                  
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="inputEmail3"  class="col-sm control-label"> Family Income </label>
                                <select class="selectpicker col-12"  id="family_income1" name="family_income" autocomplete="off"
                                    value="{{ old('family_income') }}" data-live-search="true" data-container="body">
                                    <option class="textTru chosenDropWid" value="" disabled selected>Select Your Family
                                        Income
                                        @forelse ($income as $item)
                                    <option value="{{ $item->id }}">{{ $item->family_income }}</option>
                                @empty
                                    @endforelse
                                    </option>
                                </select>
                                <div>
                                    <span class="text-danger fs-12" id="family_income"></span>
                                  
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="inputEmail3" class="col-sm control-label"> Family Type </label>
                                <select class="selectpicker col-12" id="family_type1" name="family_type" autocomplete="off"
                                    value="{{ old('family_type') }}" data-live-search="true" data-container="body">
                                    <option class="textTru chosenDropWid" value="" disabled selected>Select Your Family
                                        Type
                                    <option class="option_1" value="1" style="width:121.5px">Joint Family</option>
                                    <option class="option_2 activeopt" value="2" style="width:121.5px">Nuclear Family
                                    </option>
                                    <option class="option_3" value="3" style="width:122.5px">Others</option>
                                    </option>
                                </select>
                                <div>
                                    <span class="text-danger fs-12" id="family_type"></span>
                                  
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="inputEmail3" class="col-sm control-label"> Family Based Out Of </label>
                                {{-- <select class="selectpicker form-control" name="family_based_out_of[]" data-style="btn-outline-warning" 
                            data-container="body" multiple data-actions-box="true"> --}}
                                <select class="selectpicker col-12" id="family_based_out_of1" name="family_based_out_of" autocomplete="off"
                                    value="{{ old('family_based_out_of') }}" data-live-search="true"
                                    data-container="body">
                                    <option class="textTru chosenDropWid" value="" disabled selected>Select Family Based
                                        Out Of
                                        @forelse ($based as $item)
                                    <option value="{{ $item->id }}">{{ $item->family_based_out_of }}</option>
                                @empty
                                    @endforelse
                                    </option>
                                </select>
                                <div>
                                    <span class="text-danger fs-12" id="family_based_out_of"></span>
                                  
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="inputEmail3" class="col-sm control-label"> Gothra </label>
                                <input class="form-control" id="gothra1" placeholder="Gothra" autocomplete="off"
                                    name="gothra" rows="4" cols="50" value="{{ old('gothra') }}">
                                    <div>
                                        <span class="text-danger fs-12" id="gothra"></span>
                                      
                                    </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="inputEmail3" class="col-sm control-label"> Gothra(Maternal) </label>
                                <input class="form-control" id="gothra_maternal1" placeholder="Gothra_maternal"
                                    autocomplete="off" name="gothra_maternal" rows="4" cols="50"
                                    value="{{ old('gothra_maternal') }}">
                                    <div>
                                        <span class="text-danger fs-12" id="gothra_maternal"></span>
                                      
                                    </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-12">
                        <div class="form-group">
                            <button type="submit" class="btn btn-info">Submit</button>
                        </div>
                    </div>
                </form>
            </div>
        </details>
        <details class="test d-none" id="test4" open>
            <summary>Education Career:</summary>
            <div class="card">
                <form class="form-horizontal multipart/form-data" method="post" onsubmit= "return form5()">
                    @csrf
                    @method('POST|GET')
                    <div class="row">
                        <input type="hidden" class="user_id" name="user_id" id="user_id" value=""/>

                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="inputEmail3" class="control-label">School Name</label>
                                <input type="school_name" class="form-control" id="school_name1" placeholder="School Name"
                                    value="{{ old('school_name') }}" name="school_name" autocomplete="nope" />
                                    <div>
                                        <span class="text-danger fs-12" id="school_name"></span>
                                      
                                    </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="inputEmail3" class="control-label">UG College</label>
                                <input type="text" class="form-control" id="ug_college1" name="ug_college"
                                    placeholder="UG College" value="{{ old('ug_college') }}" autocomplete="off">
                                    <div>
                                        <span class="text-danger fs-12" id="ug_college"></span>
                                      
                                    </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="inputEmail3" class="control-label">PG College</label>
                                <input type="text" class="form-control" id="pg_college1" placeholder="PG College"
                                    value="{{ old('pg_college') }}" autocomplete="off" name="pg_college">
                                    <div>
                                        <span class="text-danger fs-12" id="pg_college"></span>
                                      
                                    </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="inputEmail3" class="col-sm control-label">Highest Educataion </label>
                                <select class="selectpicker col-12 " id="highest_education1" name="highest_education" autocomplete="off"
                                    value="{{ old('highest_education') }}" data-live-search="true"
                                    data-container="body">
                                    <option class="textTru chosenDropWid" value="" disabled selected>
                                    <option value=""></option>
                                    @forelse ($educt as $item)
                                        <option value="{{ $item->id }}">{{ $item->education }}</option>
                                    @empty
                                    @endforelse
                                </select>
                                <div>
                                    <span class="text-danger fs-12" id="highest_education"></span>
                                  
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="inputEmail3" class="control-label">Other UG Degree</label>
                                <input type="text" class="form-control" id="other_ug_degree1"
                                    placeholder="Other UG Degree" value="{{ old('other_ug_degree') }}"
                                    autocomplete="off" name="other_ug_degree">
                                    <div>
                                        <span class="text-danger fs-12" id="other_ug_degree"></span>
                                      
                                    </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="inputEmail3" class="control-label">Other PG Degree</label>
                                <input type="text" class="form-control" id="other_pg_degree1"
                                    placeholder="Other PG Degree" value="{{ old('other_pg_degree') }}"
                                    autocomplete="off" name="other_pg_degree">
                                    <div>
                                        <span class="text-danger fs-12" id="other_pg_degree"></span>
                                      
                                    </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="inputEmail3" class="control-label">Employeed In</label>
                                <input type="text" class="form-control" id="employed_in1" placeholder="Employeed In"
                                    value="{{ old('employed_in') }}" autocomplete="off" name="employed_in">
                                    <div>
                                        <span class="text-danger fs-12" id="employed_in"></span>
                                      
                                    </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="inputEmail3" class="control-label">Occupation</label>
                                <input type="text" class="form-control" id="occupations1" placeholder="Occupation"
                                    value="{{ old('occupation') }}" autocomplete="off" name="occupation">
                                    <div>
                                        <span class="text-danger fs-12" id="occupation"></span>
                                      
                                    </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="inputEmail3" class="control-label">Organisation Name</label>
                                <input type="text" class="form-control" id="organisation_name1"
                                    placeholder="Organisation Name" value="{{ old('organisation_name') }}"
                                    autocomplete="off" name="organisation_name">
                                    <div>
                                        <span class="text-danger fs-12" id="organisation_name"></span>
                                      
                                    </div>
                            </div>
                        </div>
                        <div class="col-sm-12">
                            <div class="form-group">
                                <button type="submit" class="btn btn-info">Submit</button>
                            </div>
                        </div>
                </form>
            </div>
        </details>
        <details class="info d-none  " id="test5" open>
            <summary>
                <div class="fl colr5 pl8 f17 pt3">Your Likes</div>
            </summary>
            <form class="form-horizontal multipart/form-data" method="post"     onsubmit= "return form6()" >
                @csrf
                {{-- @method('POST|GET') --}}
             
                <div class="row">
                    <input type="hidden" class="user_id" name="user_id" id="user_id" value=""/>

                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="inputEmail3" name="hobbies" class="col-sm control-label"> Hobbies
                            </label>
                            <select class="selectpicker col-12" id="hobbies1" name="hobbies" autocomplete="off" multiple="multiple"
                                style="display: none;" value="{{ old('hobbies') }}" data-live-search="true"
                                data-container="body">
                                <option class="textTru chosenDropWid" value="" disabled >Select Your Hobbies

                                    @forelse ($hobbie as $item)
                                <option value="{{ $item->id }}">{{ $item->hobbies }}</option>
                            @empty
                                @endforelse
                                </option>
                            </select>
                            <div>
                                <span class="text-danger fs-12" id="hobbies"></span>
                              
                            </div>
                        </div>
                    </div>

                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="inputEmail3" name="interests" class="col-sm control-label"> Interests</label>
                            <select class="selectpicker col-12" id="interests1" name="interests" autocomplete="off" multiple="multiple"
                                style="display: none;" value="{{ old('interests') }}" data-live-search="true"
                                data-container="body">
                                <option class="textTru chosenDropWid" value="" disabled >Select Your Interests
                                    @forelse ($interest as $item)
                                <option value="{{ $item->id }}">{{ $item->interests }}</option>
                            @empty
                                @endforelse
                                </option>
                            </select>
                            <div>
                                <span class="text-danger fs-12" id="interests"></span>
                              
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="inputEmail3" name="music" class="col-sm control-label">Favourite Music
                            </label>

                            <select class="selectpicker col-12" id="music1" name="music" autocomplete="off" value="{{ old('music') }}"
                                multiple="multiple" style="display: none;" data-live-search="true" data-container="body">
                                <option class="textTru chosenDropWid" value="" disabled >Select Your Favourite
                                    Music
                                    @forelse ($musics as $item)
                                <option value="{{ $item->id }}">{{ $item->music }}</option>
                            @empty
                                @endforelse
                                </option>
                            </select>
                            <div>
                                <span class="text-danger fs-12" id="music"></span>
                              
                            </div>
                        </div>
                    </div>

                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="inputEmail3" name="book" class="col-sm control-label">Favourite Book</label>
                            <select class="selectpicker col-12"  id="book1" name="book" autocomplete="off" multiple="multiple"
                                style="display: none;" value="{{ old('book') }}" data-live-search="true"
                                data-container="body">
                                <option class="textTru chosenDropWid" value="" disabled >Select You Favourite Book
                                    @forelse ($books as $item)
                                <option value="{{ $item->id }}">{{ $item->book }}</option>
                            @empty
                                @endforelse

                                </option>

                            </select>
                            <div>
                                <span class="text-danger fs-12" id="book"></span>
                              
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="inputEmail3" name="cuisine" class="col-sm control-label">Cuisine
                            </label>
                            {{-- <select class="selectpicker form-control" name="cuisine[]" data-style="btn-outline-warning" 
                        data-container="body" multiple data-actions-box="true"> --}}
                            <select class="selectpicker col-12" id="cuisine1" name="cuisine" autocomplete="off" multiple="multiple"
                                style="display: none;" value="{{ old('cuisine') }}" data-live-search="true"
                                data-container="body">
                                <option class="textTru chosenDropWid" value="" disabled >Select Your Cuisine

                                    @forelse ($cuisines as $item)
                                <option value="{{ $item->id }}">{{ $item->cuisine }}</option>
                            @empty
                                @endforelse

                                </option>

                            </select>
                            <div>
                                <span class="text-danger fs-12" id="cuisine"></span>
                              
                            </div>
                        </div>
                    </div>


                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="inputEmail3" name="fav_movies" class="col-sm control-label">Favourite
                                Movies</label>

                            <select class="selectpicker col-12"  id="fav_movies1" name="fav_movies" autocomplete="off" multiple="multiple"
                                style="display: none;" value="{{ old('fav_movies') }}" data-live-search="true"
                                data-container="body">
                                <option class="textTru chosenDropWid" value="" disabled >Select Your Favourite
                                    Movies
                                    @forelse ($fav_moviess as $item)
                                <option value="{{ $item->id }}">{{ $item->fav_movies }}</option>
                            @empty
                                @endforelse
                                </option>

                            </select>
                            <div>
                                <span class="text-danger fs-12" id="fav_movies"></span>
                              
                            </div>
                        </div>
                    </div>
                </div>


                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="inputEmail3" name="dress_style" class="col-sm control-label">Dress Style</label>

                            <select class="selectpicker col-12" id="dress_style1" name="dress_style" autocomplete="off" multiple="multiple"
                                style="display: none;" value="{{ old('dress_style') }}" data-live-search="true"
                                data-container="body">
                                <option class="textTru chosenDropWid" value="" disabled >Select Your Dressing Style
                                    @forelse ($dress_styles as $item)
                                <option value="{{ $item->id }}">{{ $item->dress_style }}</option>
                            @empty
                                @endforelse
                                </option>
                            </select>
                            <div>
                                <span class="text-danger fs-12" id="dress_style"></span>
                              
                            </div>
                        </div>
                    </div>

                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="inputEmail3" name="sports" class="col-sm control-label">Sports</label>
                            <select class="selectpicker col-12" id="sports1" name="sports" autocomplete="off" multiple="multiple"
                                style="display: none;" value="{{ old('sports') }}" data-live-search="true"
                                data-container="body">
                                <option class="textTru chosenDropWid" value="" disabled >Select Your Favourite
                                    Sports
                                    @forelse ($sport as $item)
                                <option value="{{ $item->id }}">{{ $item->sports }}</option>
                            @empty
                                @endforelse
                                </option>
                            </select>
                            <div>
                                <span class="text-danger fs-12" id="sports"></span>
                              
                            </div>
                        </div>
                    </div>
                </div>


                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="inputEmail3" name="tv_show" class="col-sm control-label">TV Shows
                            </label>
                            <input class="form-control"  id="tv_show1" placeholder="tv_show" autocomplete="off"
                                name="tv_show" rows="4" cols="50" value="{{ old('tv_show') }}">
                                <div>
                                    <span class="text-danger fs-12" id="tv_show"></span>
                                  
                                </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="inputEmail3" name="movies" class="col-sm control-label">Movies
                            </label>
                            <input class="form-control" id="movies1" placeholder="movies" autocomplete="off" name="movies"
                                rows="4" cols="50" value="{{ old('movies') }}">
                                <div>
                                    <span class="text-danger fs-12" id="movies"></span>
                                  
                                </div>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="inputEmail3" class="col-sm control-label"> Vacation Destination</label>
                            <input class="form-control" id="destination1" placeholder="destination" autocomplete="off"
                                name="destination" rows="4" cols="50" value="{{ old('destination') }}">
                                <div>
                                    <span class="text-danger fs-12" id="destination"></span>
                                  
                                </div>
                        </div>
                    </div>

                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="inputEmail3" name="food" class="col-sm control-label">Food I Cook</label>
                            <input class="form-control" id="food1" placeholder="food" autocomplete="off" name="food"
                                rows="4" cols="50" value="{{ old('food') }}">
                                <div>
                                    <span class="text-danger fs-12" id="food"></span>
                                  
                                </div>
                        </div>
                    </div>
                </div>


                <div class="row">

                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="inputEmail3" name="read" class="col-sm control-label">Favourite Read
                            </label>
                            <input class="form-control" id="read1" placeholder="read" autocomplete="off" name="read"
                                rows="4" cols="50" value="{{ old('read') }}">
                                <div>
                                    <span class="text-danger fs-12" id="read"></span>
                                  
                                </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-12">
                    <div class="form-group">
                        <button type="submit" class="btn btn-info">Submit</button>
                    </div>
                </div>

            </form>
        </details>
    </div>

    <script>
        document.querySelector(".Annual_Income").addEventListener("keypress", function(evt) {
            if (evt.which != 8 && evt.which != 0 && evt.which < 48 || evt.which > 57) {
                evt.preventDefault();
            }
        });
        $("#name").keypress(function(event){
        var inputValue = event.charCode;
        if(!(inputValue >= 65 && inputValue <= 120) && (inputValue != 32 && inputValue != 0)){
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
                }
            });
        }

                   
    </script>
<script>
    $("#last_name").keypress(function(event){
   var inputValue = event.charCode;
   if(!(inputValue >= 65 && inputValue <= 120) && (inputValue != 32 && inputValue != 0)){
       event.preventDefault();
   }
});

     function form1 () {
            event.preventDefault();
            $('.text-danger').html('');
            
            var first_name = $("input[name='first_name']").val();
            var email = $("input[name='email']").val();
            var last_name = $("input[name='last_name']").val();
            // var age = $("#age1").val();
            var cast = $("#cast1").val();
            var marital_status = $("#marital_status1").val();
            var dob = $("#dob1").val();
            var Height = $("#Height1").val();
            var Religion = $("#religion1").val();
            var Mother_Tongue = $("#Mother_Tongue1").val();
            var Annual_Income = $("#Annual_Income1").val();
            var Profile_Managed_by = $("#Profile_Managed_by1").val();
            //  console.log(image);
            $.ajax({
                type: "POST",
                url: "{{ route('register.store') }}",
                data:{
                    "_token": "{{ csrf_token() }}",
                    first_name:first_name,email:email,last_name:last_name,cast:cast,marital_status:marital_status,
                    dob:dob,Height:Height,Religion:Religion,Mother_Tongue:Mother_Tongue,Annual_Income:Annual_Income,
                    Profile_Managed_by:Profile_Managed_by,
                    },
                // data:formData,
                // processData: false,
                // contentType: false,
                    success: function(response) {
                    console.log(`{{$errors}}`);
                    console.log(response[0]);
                    if(response != ''){
                        $( "#test1" ).removeClass( "d-none" )
                        $( "#test" ).removeAttr( "open" )
                        toastr.success('User Created Successfully');
                    }
                    $('.user_id').val(response[0].id);
                },
                error:function(data){
                    const obj = JSON.parse(data.responseText);
                    // console.log(obj.errors.first_name[0]);
                    $.each(obj.errors, function(index, value) {
                        document.getElementById( index ).innerHTML=  value[0];
                    });
                    // console.log(data.responseText);
                }
            });
        
    }
    
    function form2 () {
        event.preventDefault();
        $('.text-danger').html('');
        var Dietary_Habits = $("input[name='Dietary_Habits']:checked").val();
        var Drinking_Habits = $("input[name='Drinking_Habits']:checked").val();
        var Smoking_Habits = $("input[name='Smoking_Habits']:checked").val();
        var House = $("input[name='House']:checked").val();
        var Car = $("input[name='Car']:checked").val();
        var HIV = $("input[name='HIV']:checked").val();
        var Thalassemia = $("input[name='Thalassemia']:checked").val();
        var blood_group = $("#blood_group1").val();
        var languages = $("#languages1").val();
        var Challenged = $("#Challenged1").val();
        var user_id = $("input[name='user_id']").val();
        $.ajax({
                type: "POST",
                url: "{{ route('lifestyle.store') }}",
                data:{
                    "_token": "{{ csrf_token() }}",
                    Dietary_Habits:Dietary_Habits,Challenged:Challenged,languages:languages,blood_group:blood_group,
                    Thalassemia:Thalassemia,HIV:HIV,House:House,Smoking_Habits:Smoking_Habits,Drinking_Habits:Drinking_Habits,
                    user_id:user_id,Car:Car,
                },
                success: function(response){
                    console.log(`{{$errors}}`);
                    if(response != ''){
                                $( "#test2" ).removeClass( "d-none" )
                                $( "#test1" ).removeAttr( "open" )
                                toastr.success('Lifestyle Created Successfully');
                            }

                },
                error:function(data){
                                const obj = JSON.parse(data.responseText);
                                $.each(obj.errors, function(index, value) {
                                    document.getElementById( index ).innerHTML=  value[0];
                                });
                            }
                            
        });

    }

    function form3 (){
        event.preventDefault();
        $('.text-danger').html('');
        var about_my_family = $("#about_my_family1").val();
        var occupation = $("#occupation1").val();
        var education = $("#education1").val();
        var describe_yourself = $("#describe_yourself1").val();
        var user_id = $("input[name='user_id']").val();
        $.ajax({
                type: "POST",
                url: "{{ route('about_me.store') }}",
                data:{
                    "_token": "{{ csrf_token() }}",
                    about_my_family:about_my_family,describe_yourself:describe_yourself,
                    education:education,occupation:occupation,user_id:user_id,
                },
                success: function(response){
                    // console.log(`{{$errors}}`);
                    if(response != ''){
                                $( "#test3" ).removeClass( "d-none" )
                                $( "#test2" ).removeAttr( "open" )
                                toastr.success('About Me Created Successfully');
                            }

                },
                error:function(data){
                                const obj = JSON.parse(data.responseText);
                                $.each(obj.errors, function(index, value) {
                                    document.getElementById( index ).innerHTML=  value[0];
                                });
                            }
                            
        });


    }

    function form4(){
        event.preventDefault();
        $('.text-danger').html('');
        var mothers_occupation = $("#mothers_occupation1").val();
        var fathers_occupation = $("#fathers_occupation1").val();
        var sisters = $("#sisters1").val();
        var brothers = $("#brothers1").val();
        var family_status = $("#family_status1").val();
        var family_type = $("#family_type1").val();
        var family_income = $("#family_income1").val();
        var family_based_out_of = $("#family_based_out_of1").val();
        var gothra = $("#gothra1").val();
        var gothra_maternal = $("#gothra_maternal1").val();
        var user_id = $("input[name='user_id']").val();

        $.ajax({
                type: "POST",
                url: "{{ route('family_details.store') }}",
                data:{
                    "_token": "{{ csrf_token() }}",
                    gothra_maternal:gothra_maternal,gothra:gothra,family_based_out_of:family_based_out_of,
                    family_type:family_type,family_status:family_status,
                    brothers:brothers,family_income:family_income,
                    sisters:sisters,user_id:user_id,
                    fathers_occupation:fathers_occupation,mothers_occupation:mothers_occupation,
                    // mothers_occupation:mothers_occupation,
                },
                success: function(response){
                    // console.log(`{{$errors}}`);
                    if(response != ''){
                                $( "#test4" ).removeClass( "d-none" )
                                $( "#test3" ).removeAttr( "open" )
                                toastr.success('Family Details Created Successfully');
                            }

                },
                error:function(data){
                                const obj = JSON.parse(data.responseText);
                                $.each(obj.errors, function(index, value) {
                                    document.getElementById( index ).innerHTML=  value[0];
                                });
                            }
                            
        });
        
        

    }

    function form5(){
        event.preventDefault();
        $('.text-danger').html('');
        var organisation_name = $("#organisation_name1").val();
        var occupation = $("#occupations1").val();
        var employed_in = $("#employed_in1").val();
        var other_pg_degree = $("#other_pg_degree1").val();
        var other_ug_degree = $("#other_ug_degree1").val();
        var highest_education = $("#highest_education1").val();
        var pg_college = $("#pg_college1").val();
        var ug_college = $("#ug_college1").val();
        var school_name = $("#school_name1").val();
        var user_id = $("input[name='user_id']").val();


        $.ajax({
                type: "POST",
                url: "{{ route('education.store') }}",
                data:{
                    "_token": "{{ csrf_token() }}",
                    organisation_name:organisation_name,occupation:occupation,employed_in:employed_in,
                    other_pg_degree:other_pg_degree,other_ug_degree:other_ug_degree,highest_education:highest_education,
                    pg_college:pg_college,ug_college:ug_college,school_name:school_name,user_id:user_id,
                    
                },
                success: function(response){
                    // console.log(`{{$errors}}`);
                    if(response != ''){
                                $( "#test5" ).removeClass( "d-none" )
                                $( "#test4" ).removeAttr( "open" )
                                toastr.success('Education Career Created Successfully');
                            }

                },
                error:function(data){
                                const obj = JSON.parse(data.responseText);
                                $.each(obj.errors, function(index, value) {
                                    document.getElementById( index ).innerHTML=  value[0];
                                });
                            }
                            
        });

        

    }
     
    function form6(){
        event.preventDefault();
        $('.text-danger').html('');
        var read = $("#read1").val();
        var food = $("#food1").val();
        var destination = $("#destination1").val();
        var movies = $("#movies1").val();
        var tv_show = $("#tv_show1").val();
        var sports = $("#sports1").val();
        var dress_style = $("#dress_style1").val();
        var fav_movies = $("#fav_movies1").val();
        var cuisine = $("#cuisine1").val();
        var book = $("#book1").val();
        var music = $("#music1").val();
        var interests = $("#interests1").val();
        var hobbies = $("#hobbies1").val();
        var user_id = $("input[name='user_id']").val();

        $.ajax({
                type: "POST",
                url: "{{ route('your_likes.store') }}",
                data:{
                    "_token": "{{ csrf_token() }}",
                    read:read,food:food,destination:destination,movies:movies,tv_show:tv_show,
                    sports:sports,dress_style:dress_style,fav_movies:fav_movies,cuisine:cuisine,
                    book:book,music:music,interests:interests,hobbies:hobbies,user_id:user_id,
                    
                },
                success: function(response){
                    // console.log(`{{$errors}}`);
                    if(response != ''){
                                $( "#test6" ).removeClass( "d-none" )
                                $( "#test5" ).removeAttr( "open" )
                                toastr.success('Your Likes Created Successfully');
                            }

                },
                error:function(data){
                                const obj = JSON.parse(data.responseText);
                                $.each(obj.errors, function(index, value) {
                                    document.getElementById( index ).innerHTML=  value[0];
                                });
                            }
                            
        });
        


        
    }
    
</script>   
@endsection('content')
