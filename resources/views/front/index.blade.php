@extends('front.template.main')

@section('title')
	Home
@endsection

@section('content')
	<h3>Últimos Artículos</h3>
	<div class="row">
		<div class="col-md-8">
			<div class="row">
			<!--- Cuerpo de articulos -->
				@foreach($articles as $article)
				
				<div class="col-md-6">
					<div class="panel panel-default">
						<div class="panel-body">
							<a href="{{ route('front.view.article',$article->slug) }}" class="thumbnail">
							@foreach($article->images as $image)	
								<img class="img-responsive img-article img_principal" src="{{ asset('img/articles/'.$image->name)}}">
							@endforeach	
							</a>
							<h3 class="text-center">{{ $article->title }}</h3>
							<hr>
							<i class="fa fa-folder-open-o"></i><a href="{{ route('front.search.category',$article->category->name) }}">{{ $article->category->name}}</a>
							<div class="pull-right">
								<i class="fa fa-clock-o"></i>	{{ $article->created_at->diffForHumans()}}
							</div>	
						</div>
					</div>
				</div>
				
				@endforeach
			<!--- Fin de cuerpo articulos -->
			</div>
			{{ $articles->render() }}
		</div>
		<div class="col-md-4 aside">
			@include('front.template.partials.aside')
		</div>
		<!-- Categorias -->
		<!-- <div class="col-md-4">
			<div class="panel panel-primary">
				<div class="panel-heading">Categorías</div>
				<div class="panel-body">
					<div class="list-group">
						<a href="#" class="list-group-item">Php <span class="badge">1</span> </a>
						<a href="#" class="list-group-item">Django <span class="badge">10</span></a>
						<a href="#" class="list-group-item">Laravel <span class="badge">15</span></a>
						<a href="#" class="list-group-item">Node Js <span class="badge">21</span></a>
					</div>
				</div>
			</div>		
		</div> -->
		<!-- -->
		<!-- Tags -->
		<!-- <div class="col-md-4">
			<div class="panel panel-info">
			  <div class="panel-heading">
			    <h3 class="panel-title">Tags</h3>
			  </div>
			  <div class="panel-body">
			   		<span class="label label-info">Node js</span>
			   		<span class="label label-info">Programación</span>
			   		<span class="label label-info">POO</span>
			   		<span class="label label-info">MVC</span>
			  </div>
			</div>		
		</div> -->
		<!-- -->
	</div>
@endsection	