<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class EducationModel extends Model
{
    protected $table='education_career';

    protected $fillable=[
        'highest_education',
        'school_name',
        'ug_college',
        'pg_college',
        'other_ug_degree',
        'other_pg_degree',
        'employed_in',
        'occupation',
        'organisation_name',
        'user_id',
    ];

}
