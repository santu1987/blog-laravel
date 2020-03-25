<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Tag extends Model
{
    protected $table = "tags";
    protected $fillable = ['name'];

    public function articles(){
    	return $this->belongsToMany('App\Article')->withTimestamps();
    }
    public function scopeSearch($query, $name){
    	return $query->where('name', 'LIKE', "%$name%");

    }
    //-Scope search creado para busqueda de tags al dar click al enlace del tag
    public function scopeSearchTag($query, $name){
    	return $query->where('name', '=', "$name");

    }  
}
