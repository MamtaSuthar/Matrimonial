<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;

class AboutMeSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        for ($i=0; $i < 6; $i++) { 
            DB::table('about_me')->insert([
                'describe_tourself' => Str::random(35),
                'about_my_family' => Str::random(30),
                'education' => Str::random(30),
                'occupation' => Str::random(30),
            ]);
        }
    }
}
