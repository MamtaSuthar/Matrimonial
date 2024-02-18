<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateYourLikesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::dropIfExists('your_likes');
        Schema::create('your_likes', function (Blueprint $table) {
            $table->id();
            $table->string('hobbies')->nullable();
            $table->string('interests')->nullable();
            $table->string('music')->nullable();
            $table->string('book')->nullable();  
            $table->string('read')->nullable();  
            $table->string('movies')->nullable(); 
            $table->string('fav_movies')->nullable(); 
            
            $table->string('dress_style')->nullable();
            $table->string('sports')->nullable();  
            $table->string('tv_show')->nullable();  
            $table->string('destination')->nullable(); 
            $table->string('food')->nullable();
            $table->string('cuisine')->nullable();
            
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
        Schema::dropIfExists('your_likes');
    }
}
