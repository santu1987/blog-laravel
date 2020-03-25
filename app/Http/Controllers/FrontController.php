<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;

use App\Article;

use App\Category;

use App\Tag;

use Carbon\Carbon;

class FrontController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function __construct()
    {
        Carbon::setLocale('es');
    }

    #Metodo de inicio
    public function index()
    {
       #$articles = Article::orderBy('id','DESC')->take(6)->get();
       $articles = Article::orderBy('id','DESC')->paginate(4);
       $articles->each(function($articles){
            #De esta forma puedo usar campos referenciales de otras tablas...
            $articles->category;
            $articles->image;
       });
       return view('front.index')
            ->with('articles',$articles);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
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
        //
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
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
    /**
    *
    *
    *
    */
    public function searchCategory($name){
        #First : para que me traiga el primer registro, como la consulta es unica, ya que se creo un request donde se especifica que no puede haber mas de una categoria con el mismo nombre .... creo un objeto de una categoria...
        $category = Category::SearchCategory($name)->get()->first();
        $articles = $category->articles()->paginate(4);
        $articles->each(function($articles){
            #De esta forma puedo usar campos referenciales de otras tablas...
            $articles->category;
            $articles->image;
       });
        return view('front.index')
            ->with('articles',$articles);
    }

    public function searchTag($name){
        /**--Para que funcione el search hay que crear un scope en el modelo App/Tag 
        */
        $tag = Tag::SearchTag($name)->get()->first();
        $articles = $tag->articles()->paginate(4);
        $articles->each(function($articles){
            #De esta forma puedo usar campos referenciales de otras tablas...
            $articles->category;
            $articles->image;
        });
        return view('front.index')
            ->with('articles',$articles);

    }
    //-- Metodo para buscar articulos mediante el slug
    public function viewArticle($slug){
        //Busca por el slug o falla
        $article = Article::findBySlugOrFail($slug);
        //---
        $article->category;
        $article->image;
        //---
        #Consulto todos los articulos excepto el consultado
        $othersArticles = Article::OtherArticles($article->id)->get();
        //dd($othersArticles);

        #
        //dd($article->id);
        return view('front.article')
                ->with('article',$article)
                ->with('othersArticles',$othersArticles);

    }
    //---
}
