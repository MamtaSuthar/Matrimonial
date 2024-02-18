<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateLifestylesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('lifestyles', function (Blueprint $table) {
            $table->id();
            $table->string('dietary_habits');
            $table->string('drinking_habits');
            $table->string('Smoking_habits');
            $table->string('House');
            $table->string('Car');
            $table->string('hiv');
            $table->string('thalassemia');
            $table->string('blood_group');
            $table->string('languages');
            $table->string('challenged');
            $table->string('handicap_nature');
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
        Schema::dropIfExists('lifestyles');
    }
}
