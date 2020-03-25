<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the controller to call when that URI is requested.
|
*/
#Admin/autenticacion
Route::get('/admin', function () {
    return view('admin.auth.login');
});

//-- RUTAS DE FRONTEND

#Ruta de index...
/*Route::get('/',
	[
		'as'=>'front.index', function(){
			return view('front.index');
		}
	]		
);*/

#Admin/Frontend
Route::get('/',[
		'as' 	=> 'front.index',
		'uses' 	=> 'FrontController@index'
	]);
#Admin/Frontend categories
Route::get('categories/{name}',[
	'uses' => 'FrontController@searchCategory',
	'as'   => 'front.search.category'
]);

Route::get('tags/{name}',[
	'uses' => 'FrontController@searchTag',
	'as'   => 'front.search.tag'
]);

#Para el slug de los articulos
Route::get('articles/{slug}',[
	'uses' => 'FrontController@viewArticle',
	'as'   => 'front.view.article'
]);

//----  Ejemplo 1 de rutas ---
/*Route::get('articles/{nombre}',function($nombre){
	echo "El nombre que has colocado es :".$nombre;
});*/

//Ejemplo 2 de rutas
/*Route::get('articles',[
	'as'=>'articles',
	'uses'=>'UserController@index' //userController:controlador
	//index: el metodo o accion
	]);*/

//Ejemplo 3 de rutas
/*Route::group(['prefix'=>'articles'],function(){
		Route::get('view/{article?}',function($article = "Vacio"){
			echo $article;
		});
});	*/

/*Route::group(['prefix'=>'articles'],function(){
	Route::get('view/{id}',[
		'uses'=> 'TestController@view',
		'as'=>'articlesView'
		]);
});*/

# RUTAS DE BACKEND
Route::group(['prefix'=>'admin','middleware'=>'auth'], function(){
	#Rutas usuarios
	Route::resource('users','UsersController');
	Route::get('users/{id}/destroy',[
		'uses' => 'UsersController@destroy',
		'as'   => 'admin.users.destroy'	
	]);
	#Rutas categorias
	Route::resource('categories','CategoriesController');
	Route::get('categories/{id}/destroy',[
		'uses'=>'CategoriesController@destroy',
		'as'=>'admin.categories.destroy']);
	#Rutas tags
	Route::resource('tags','TagsController');
	Route::get('tags/{id}/destroy',[
		'uses'=>'TagsController@destroy',
		'as'=>'admin.tags.destroy']);
	#Ruta entorno inicial
	Route::get('home', function () {
    	return view('admin.home.index');
	});
	#Rutas articulos
	Route::resource('articles','ArticlesController');
	Route::get('articles/{id}/destroy',[
		'uses'=>'ArticlesController@destroy',
		'as'=>'admin.articles.destroy']);
	#Rutas imagenes
	Route::get('images',[
		'uses'=>'ImagesController@index',
		'as'  =>'admin.images.index'
		]);
	
});

# RUTAS DE LOGIN
Route::get('admin/auth/login',[
	'uses'=> 'Auth\AuthController@getLogin',
	'as'  => 'admin.auth.login']);

Route::post('admin/auth/login',[
	'uses'=> 'Auth\AuthController@postLogin',
	'as'  => 'admin.auth.login']);

Route::get('admin/auth/logout',[
	'uses'=> 'Auth\AuthController@logout',
	'as'  => 'admin.auth.logout']);
#