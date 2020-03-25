<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;

use App\Category;

use App\Tag;

use App\Article;

use App\Image;

use Illuminate\Suport\Facades\Redirect;

use Laracasts\Flash\Flash;

use App\Http\Requests\ArticleRequest;


class ArticlesController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $articles =Article::Search($request->title)->orderBy('id','DESC')->paginate(2);
        #Llamando relaciones
        $articles->each(function($articles){
            $articles->category;
            $articles->user;
        });        
        return view('admin.articles.index')->with('articles',$articles);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        #Para generar una variable de lista...
        $categories = Category::orderBy('name','ASC')->lists('name','id');
        $tags = Tag::orderBy('name','ASC')->lists('name','id');
        
        return view('admin.articles.create')
        ->with('categories',$categories)
        ->with('tags',$tags);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(ArticleRequest $request)
    {
        #Para verificar los valores de los tags de  articulos:
        #dd($request->tags);
        //Manipulacion de imagenes
        if($request->file('image')){
	 		$file = $request->file('image');
	        $name = 'blog_'.time().'.'.$file->getClientOriginalExtension();
	        $path = public_path().'/img/articles/';
	        #dd($path);
	        $file->move($path, $name);
        }

        $article = new Article($request->all());
        $article->user_id = \Auth::user()->id;
        $article->save();

        #Rellenando tabla pivote: Debo pasarle el id que deseo guardar...
        $article->tags()->sync($request->tags);#el metodo sync es el encargado de rellenar la tabla pivote

        $image = new Image();
        $image->name = $name;
        #Para traer el id del articulo para guadar la imagen
        $image->article()->associate($article);
        $image->save();

        #Mensaje:
        Flash::success('Se ha creado el artículo '.$article->title.' de forma satisfactoria');
        return redirect()->route('admin.articles.index');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
            $article = Article::find($id);
            $article->category();
            $categories = Category::orderBy('name','DESC')->lists('name','id');
            $tags = Tag::orderBy('name','DESC')->lists('name','id');
            #De esta forma se devuelven los tags en forma de un arreglo
            $my_tags = $article->tags->lists('id')->ToArray();
            #dd($my_tags);

            return view('admin.articles.edit')
            ->with('categories',$categories)
            ->with('article',$article)
            ->with('tags',$tags)
            ->with('my_tags',$my_tags);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        #dd($request->all());
        #Mostrando lso tags
        #dd($request->tags);
        $article = Article::find($id);
        #dd($article);
        $article->fill($request->all()); 
        $article->save();

        #Es necesario guardar los tags
        $article->tags()->sync($request->tags);
        Flash::warning('Se ha editado el artículo '.$article->title.' de forma exitosa' );
        return redirect()->route('admin.articles.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $article = Article::find($id);
        $article->delete();

        Flash::error('Se ha borrado el artículo '.$article->title.' de forma exitosa!');
        return redirect()->route('admin.articles.index');
    }
}
