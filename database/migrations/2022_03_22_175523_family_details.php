<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class FamilyDetails extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('family_details', function (Blueprint $table) {
            $table->increments('id');
            $table->string('mothers_occupation')->nullable();
            $table->string('fathers_occupation')->nullable();
            $table->string('sisters')->nullable();
            $table->string('brothers')->nullable();
            $table->string('gothra')->nullable();
            $table->string('gothra_maternal')->nullable();
            $table->string('family_status')->nullable();
            $table->string('family_income')->nullable();
            $table->string('family_type')->nullable();
            $table->string('family_based_out_of')->nullable();
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
        Schema::dropIfExists('family_details');

    }
}
