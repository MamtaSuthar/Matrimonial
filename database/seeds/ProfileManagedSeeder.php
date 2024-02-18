<?php

use Illuminate\Database\Seeder;

class ProfileManagedSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('profile_manageds')->insert(array (
            0 => 
              array (
                     'profile_managed_by' => 'parents',
             ),
            1 => 
              array (
                     'profile_managed_by' => 'me',
                 
             ),
             2 => 
              array (
                     'profile_managed_by' => 'friends',
                 
             ),
             3=> 
             array (
                    'marital_status' => 'relatives',
                
            ),
         ));
    
    }
}
