<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class DetalleIngreso extends Model
{
    protected $table = 'detalles_ingresos';
    protected $fillable = [
            'idingreso',
            'idarticulo',
            'cantidad',     
            'precio'
        ];
    public $timestamps = false;
}
