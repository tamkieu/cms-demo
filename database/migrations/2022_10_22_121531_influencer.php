<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class Influencer extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
      Schema::create('influencers', function (Blueprint $table) {
          $table->increments('id');
          $table->integer('user_id')->unsigned();
          $table->string('name');
          $table->enum('status', ['PENDING', 'WAIT', 'ACTIVE'])->nullable();
          $table->string('phone')->nullable();
          $table->string('email');
          $table->enum('maritalStatus', ['MARRIED', 'SINGLE'])->nullable();
          $table->enum('gender', ['MALE', 'FEMALE', 'OTHER'])->nullable();
          $table->date('birthday')->nullable();
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
        Schema::dropIfExists('influencers');
    }
}
