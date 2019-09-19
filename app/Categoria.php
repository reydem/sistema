<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Categoria extends Model
{
   // protected $table = 'categorias';
   // protected $primaryKey  = 'id';
   protected $fillable = ['nombre', 'descripcion', 'condicion'];

   /**
     * Get the comments for the blog post.
     */
    public function articulos()
    {
        return $this->hasMany('App\Articulo');
    }
   
}
