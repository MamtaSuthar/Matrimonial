<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class BasicDetails extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('basic_details', function (Blueprint $table) {
            $table->increments('id');
          
            $table->integer('age')->nullable();
            $table->string('marital_status')->nullable();
            $table->string('height')->nullable();
            $table->string('religion');
            $table->string('mother_tongue');
            $table->string('location');
            $table->string('cast');
            $table->string('profile_managed_by');
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
        Schema::dropIfExists('basic_details');
    }
}
