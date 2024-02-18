<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class CountryTableModel extends Model
{
    protected $table="basic_details";
    protected $guarded = [];
    
    protected $fillable=[
        'country',
    ];
}
