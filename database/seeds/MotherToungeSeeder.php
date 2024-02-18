<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;

class MotherToungeSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {

        
        DB::table('mother_tongues')->insert(array (
            0 => 
              array (
                     'mother_tongue' => 'panjabi',
             ),
            1 => 
              array (
                     'mother_tongue' => 'hindi',
                 
             ),
             2 => 
              array (
                     'mother_tongue' => 'all',
                 
             ),
         ));
        
    }
}