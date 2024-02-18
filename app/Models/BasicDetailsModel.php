<?php

namespace App\Models;

// use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class BasicDetailsModel extends Model
{
    // use HasFactory;
    protected $table="basic_details";
    protected $guarded = [];
    
    protected $fillable=[
        'first_name',
        'last_name',
        'email',
        'age',
        'dob',
        'marital_status',
        'Height',
        'Religion',
        'Mother_Tongue',
        'Annual_Income',
        'location',
        'cast',
        'Profile_Managed_by',
        'image',
        'dob'
        
    ];
}
