<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;

class SettingsSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('settings')->insert(array (
            0 => 
              array (
                     'type' => 'null',
             ),
            1 => 
              array (
                     'name' => 'project_name',
                 
             ),
             2 => 
              array (
                     'value' => 'Matrimony',
                 
             ),
         ));
    }
}
