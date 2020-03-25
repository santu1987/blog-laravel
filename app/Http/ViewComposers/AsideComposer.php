<?php

namespace App\Http\ViewComposers;

//use Iluminate\Contracts\View\View;
use Illuminate\View\View;

use App\Category;

use App\Tag;

class AsideComposer  {

	/*public function compose(View $view){
		$categories = Category::all();
		$view->with('categories',$categories);
	}*/
	public function compose(View $view){
		$categories = Category::orderBy('name','desc')->get();
		$tags = Tag::orderBy('name','desc')->get();

		$view->with('categories',$categories)->with('tags',$tags);
	}

}