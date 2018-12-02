<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Carrera extends Model
{
    //
   public function precios()
   {
   		return $this->belongsToMany('App\Precio', 'id_car', 'id_prec', 'id_doc');

   		$carrera = App\Carrera::find(1);

   		foreach ($carrera => precios as $precio) {
   			# code...
   		}
   }
}
