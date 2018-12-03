<?php

namespace App;
use App\Documento;
use Illuminate\Database\Eloquent\Model;

class Carrera extends Model
{
    //
   public function documentos()
   {
   		return $this->belongsToMany('App\Documento')->withPivot('precio');

   }
}
