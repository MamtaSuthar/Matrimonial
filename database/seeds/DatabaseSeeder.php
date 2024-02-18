<?php

use App\Models\Education;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        $this->call([
            SettingsSeeder::class,
            AboutMeSeeder::class,
            UserSeeder::class,
            EducationSeeders::class,
            CastsSeeder::class,
            ReligionSeeder::class,
            MotherToungeSeeder::class,
            FamilyIncomeSeeder::class,
            HeightSeeder::class,
            BasicDetailsSeeder::class,
            EducationSeeders::class,
            MaritalStatusSeeder::class,
            ProfileManagedSeeder::class,
        ]);
    }
}
