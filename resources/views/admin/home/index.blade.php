@extends('admin.template.main')

@section('title')
   Inicio de mi página
@endsection

@section('content')
    <h2>Hola {{ Auth::user()->name }} bienvenido al content manager 2.1</h2>
    <a href="" class="btn btn-success">Iniciar Viaje!!!</a>
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