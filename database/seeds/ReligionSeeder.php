<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;

class ReligionSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
       
                DB::table('religions')->insert(array (
                    0 => 
                      array (
                             'religion' => 'Hindu',
                     ),
                    1 => 
                      array (
                             'religion' => 'Muslim',
                         
                     ),
                     2 => 
                      array (
                             'religion' => 'sikh',
                         
                     ),
                 ));
                
            }
        }