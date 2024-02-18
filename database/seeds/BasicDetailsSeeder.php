<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;
class BasicDetailsSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        for ($i=0; $i < 6; $i++) { 
            DB::table('basic_details')->insert([
                'age' => rand(1,50),
                'marital_status' => Str::random(3),
                'height' => Str::random(3),
                'religion' => Str::random(8),
                'mother_tongue' => Str::random(10),
                'location' => Str::random(30),
                'cast' => 'all',
                'profile_managed_by' => Str::random(10),
            ]);
        }
    }
}
