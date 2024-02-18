<?php
namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class About extends Model
{
    protected $table='about_me';

    protected $fillable = [
       'user_id','describe_yourself', 'about_my_family', 'education','occupation'
    ];
}
