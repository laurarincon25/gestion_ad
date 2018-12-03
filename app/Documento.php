<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Documento extends Model
{
    //

    public function carreras()
    {
            return $this->belongsToMany('App\Carrera')->withPivot('precio');;
 
    }
}
