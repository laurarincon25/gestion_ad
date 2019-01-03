<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Solicitud extends Model
{
	protected $fillable = [
		'uuid',
	];
    //


    public function pagos()
{
    return $this->hasMany(Pago::class, 'uuidSoli','uuid');
}
}
