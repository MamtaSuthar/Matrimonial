<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddPaidToUsersTable extends Migration
{
    
    public function up()
    {
        Schema::table('basic_details', function($table) {
            $table->string('country');
        });
    }

   
    public function down()
    {
        Schema::table('basic_details', function (Blueprint $table) {
            $table->dropColumn('country');
        });
    }
}
