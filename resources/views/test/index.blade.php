<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>{{ $article->title }}</title>
	<link rel="stylesheet" type="text/css" href="{{asset('css/general.css')}}">
</head>
<body>
Ejemplos de Laravel codigo facilito...
<br><br>
<h1>{{ $article->title}}</h1>
<hr>
{{$article->content}}
<hr>
{{$article->user->name}} | {{$article->category->name}}
<h2>Tags:</h2>
<!--Recorriendo un many to many --> 
 @foreach($article->tags as $tag)
 	<br>{{$tag->name}}
 @endforeach
 </body>
 </html>