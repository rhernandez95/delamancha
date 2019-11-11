<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Cartelera extends Model
{
    protected $table = 'carteleras';

    public function lugares()
    {
        return $this->hasMany('App\Models\Lugar', 'id_lugar', 'id_lugar');
    }

    public function fechas()
    {
        return $this->hasMany('App\Models\Fecha', 'id_fecha', 'id_fecha');
    }

    public function obras()
    {
        return $this->hasMany('App\Models\Obra', 'id_obra', 'id_obra');
    }

    public function getEstatus()
    {
        $estatus = (int) $this->attributes['estatus'];
        return $estatus;
    }
}