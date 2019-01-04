<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ItemServicio extends Model
{
	public function servicios(){
		return belongsToMany('App\Servicio');
	}
    
}
