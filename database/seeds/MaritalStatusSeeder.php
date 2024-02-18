<?php

use Illuminate\Database\Seeder;

class MaritalStatusSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('marital_status')->insert(array (
            0 => 
              array (
                     'marital_status' => 'all',
             ),
            1 => 
              array (
                     'marital_status' => 'never_married',
                 
             ),
             2 => 
              array (
                     'marital_status' => 'widowed',
                 
             ),
             3=> 
             array (
                    'marital_status' => 'divorced',
                
            ),
         ));
    }
}
