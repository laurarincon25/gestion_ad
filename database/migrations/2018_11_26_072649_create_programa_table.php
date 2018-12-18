<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateProgramaTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
      //metodo para crear tabla
       Schema::create('programas', function (Blueprint $table) {
            $table->increments('id');
            $table->string('carrera');
            $table->string('pensum');
            $table->string('descripcion');
            $table->string('nrotelefono');
            $table->string('email');
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
        Schema::dropIfExists('programa');
    }
}
