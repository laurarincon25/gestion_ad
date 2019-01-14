<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Servicio extends Model
{
    public function items(){
    	return $this->hasMany('App\ItemServicio');
    }
}
