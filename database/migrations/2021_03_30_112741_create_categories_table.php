<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateCategoriesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('categories', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('name');
            $table->string('alias')->unique();
            $table->integer('parent_id')->default(0);
            $table->string('image')->nullable();
            $table->string('thumb')->nullable();
            $table->string('background')->nullable();
            $table->integer('user_id');
            $table->integer('user_edit')->nullable();
            $table->text('description')->nullable();
            $table->string('type')->nullable();
            $table->integer('position')->nullable();
            $table->integer('public')->default(0);
            $table->integer('status')->default(0);
            $table->integer('sort')->default(0);
            $table->string('title_seo')->nullable();
            $table->string('description_seo')->nullable();
            $table->string('keyword_seo')->nullable();
            $table->string('lang');
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
        Schema::dropIfExists('categories');
    }
}
