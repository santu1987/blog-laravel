<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<title>@yield('title','Default')|Panel de Administración</title>
	<!--Bloque de css -->
	<link rel="stylesheet" type="text/css" href="{{asset('plugins/bootstrap/css/bootstrap.css')}}">
	<link rel="stylesheet" type="text/css" href="{{asset('plugins/chosen/chosen.css')}}">
	<link rel="stylesheet" type="text/css" href="{{asset('plugins/trumbowyg/dist/ui/trumbowyg.css')}}">
	<!-- -->
	<!--Bloque de js -->
	<script type="text/javascript" src="{{asset('plugins/jquery/js/jquery-3.1.0.js')}}"></script>
	<script type="text/javascript" src="{{asset('plugins/bootstrap/js/bootstrap.js')}}"></script>
	<script type="text/javascript" src="{{asset('plugins/chosen/chosen.jquery.js')}}"></script>
	<script type="text/javascript" src="{{asset('plugins/trumbowyg/dist/trumbowyg.js')}}"></script>
	<!-- -->
</head>
<!--<body style="background-color:rgba(151, 150, 152, 0.05)">-->
<!-- style="background:url('{{asset('img/fondo_curso.jpg')}}')" -->
<body style="background:url('{{asset('img/fondo_curso2.png')}}')">
	@include('admin.template.partials.nav')
	<section style="width: 70%;margin: 0 auto; margin-top: 25px;">
		<div class="panel panel-default">
		  <div class="panel-heading">
		  	@yield('title','Default')
		  </div>
		  <div class="panel-body">
		  	@include('flash::message')
		  	@include('admin.template.partials.errors')
		  	@yield('content')
		  </div>
		</div>
	</section>
	@yield('js')	
</body>
</html>