<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Obra extends Model
{
    protected $table = 'obras';

    public function clasificaciones()
    {
       return $this->belongsTo('App\Models\Clasificacion', 'id_clasificacion', 'id_clasificacion');
       				// hasMany('App\Models\Clasificacion', 'id_clasificacion', 'id_clasificacion');
    }
}