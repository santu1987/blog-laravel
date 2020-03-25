<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
#use Cviebrock\EloquentSluggable\SluggableInterface;
#use Cviebrock\EloquentSluggable\SluggableTrait;
use Cviebrock\EloquentSluggable\Sluggable;
use Cviebrock\EloquentSluggable\SluggableScopeHelpers;
class Article extends Model
{
    //use Sluggable;
    use Sluggable, SluggableScopeHelpers;

    public function sluggable()
    {
        return [
            'slug' => [
            'source' => 'title'
            ]
        ];
    }
    protected $table = "articles";
    protected $fillable =['title','content','category_id','user_id'];

    public function category(){
    	return $this->belongsTo("App\Category");
    }

    public function user(){
    	return $this->belongsTo("App\User");
    }

    public function images(){
    	return $this->hasMany('App\Image');
    }

    public function tags(){
    	return $this->belongsToMany('App\Tag');
    }
    public function scopeSearch($query, $title){
        return $query->where('title', 'LIKE', "%$title%");
    }
    public function scopeOtherArticles($query, $id){
        return $query->where('id', '!=', "$id")  
                     ->offset(0)
                     ->limit(3);
    }
}