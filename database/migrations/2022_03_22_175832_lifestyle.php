<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class Lifestyle extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('lifestyle', function (Blueprint $table) {
            $table->increments('id');
            $table->string('habits')->nullable();
            $table->string('assets')->nullable();
            $table->string('languages_known')->nullable();
            $table->string('blood_group')->nullable();
            $table->string('special_cases')->nullable();
           
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
        Schema::dropIfExists('lifestyle');

    }
}
