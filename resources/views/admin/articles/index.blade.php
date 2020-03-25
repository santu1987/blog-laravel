@extends('admin.template.main')

@section('title', 'Listado de artículos')

@section('content')
<a href="{{ route('admin.articles.create')}}" class="btn btn-info">Nuevo</a>
<!-- Buscador de artículos -->
{!! Form::open(['route'=>'admin.articles.index','method'=>'GET', 'class'=>'navbar-form pull-right'])!!}
	<div class="input-group">
		{!! Form::text('title',null,['class'=>'form-control','placeholder'=>'Buscar Artículo', 'aria-describedby'=>'search'])!!}
		<span class="input-group-addon" id="search"><span class="glyphicon glyphicon-search" aria-hidden="true"></span></span>
	</div>
{!! Form::close() !!}
<!-- fin del buscador -->
<table class="table table-striped">
	<thead>
		<th>ID</th>
		<th>Título</th>
		<th>Categoría</th>
		<th>User</th>
		<th>Acción</th>
	</thead>
	<tbody>
		@foreach($articles as $article)
			<tr>
				<td>{{ $article->id }}</td>
				<td>{{ $article->title }}</td>
				<td>{{ $article->category->name }}</td>
				<td>{{ $article->username}}</td>
				<td>
					<a href="{{ route('admin.articles.edit',$article->id)}}" class="btn btn-success"><span class="glyphicon glyphicon-record"></span></a>
					<a href="{{ route('admin.articles.destroy',$article->id)}}" onclick='return confirm("¿Esta seguro que desea eliminar el registro ?")' class="btn btn-danger"><span class="glyphicon glyphicon-remove"></span></a>
				</td>
			</tr>
		@endforeach
	</tbody>
</table>
<div class="text-center">
	{!! $articles->render() !!}
</div>
@endsection