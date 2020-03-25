<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<title>@yield('title','Home') | Blog Laravel</title>
	<!--Cuerpo css -->
	<link rel="stylesheet" href="{{ asset('plugins/bootstrap/css/journal/bootstrap.css') }}"></link>
	<link rel="stylesheet" href="{{ asset('css/general.css') }}"></link>
	<link rel="stylesheet" href="{{ asset('plugins/font-awesome-4.6.3/css/font-awesome.min.css') }}"></link>
	<!--Cuerpo js -->
	<script src="{{ asset('plugins/jquery/js/jquery-3.1.0.js')}}"></script>	
</head>	
<body>
	<header>
		@include('front.template.partials.header')
	</header>
	<div class="container">
		@yield('content')
	<footer>
		<hr>
		<div class="pie">Blog desarrollado como practica bajo framework php-mvc [Laravel 5.2]</div>
	</footer>
	</div>
</body>
</html>