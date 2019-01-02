<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Pago extends Model
{

protected $fillable = [
    'uuid'
];


    public function solicituds()
{
    return $this->belongsTo(Solicitud::class, 'uuid');
}
}
