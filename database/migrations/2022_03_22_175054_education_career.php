<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class EducationCareer extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('education_career', function (Blueprint $table) {
            $table->increments('id');
            $table->string('highest_education')->nullable();
            $table->string('school_name')->nullable();
            $table->string('ug_college')->nullable();
            $table->string('pg_college')->nullable();
            $table->string('other_ug_degree')->nullable();
            $table->string('other_pg_degree')->nullable();
            $table->string('employed_in')->nullable();
            $table->string('occupation')->nullable();
            $table->string('organisation_name')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('education_career');
    }
}
