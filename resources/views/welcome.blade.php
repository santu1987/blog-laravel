@extends('admin.template.main')

@section('title')
   Inicio de mi página
@endsection

@section('content')
    <h1>Hola esto es bootstrap</h1>
    <a href="" class="btn btn-success">Soy un boton Bootstrap</a>
@endsection

@section('contenido')
	<div class="panel panel-default">
	  <div class="panel-heading">
	  	<!--@yield('title','Default')-->
	  </div>
	  <div class="panel-body">
	  	<!--@yield('content')-->
	  </div>
	</div>
@endsection