@extends('admin.template.main')

@section('title','Lista tags')

@section('content')
	<a href="{{ route('admin.tags.create')}}" class="btn btn-info">Nuevo</a>
	<!-- Buscador de tags -->
	{!! Form::open(['route'=>'admin.tags.index','method'=>'GET', 'class'=>'navbar-form pull-right'])!!}
		<div class="input-group">
			{!! Form::text('name',null,['class'=>'form-control','placeholder'=>'Buscar tag', 'aria-describedby'=>'search'])!!}
			<span class="input-group-addon" id="search"><span class="glyphicon glyphicon-search" aria-hidden="true"></span></span>
		</div>
	{!! Form::close() !!}
	<!-- fin del buscador -->
	<hr>
	<table class="table table-stripped">
		<thead>
			<th>ID</th>
			<th>Nombre</th>
			<th>Acción</th>
		</thead>
		<tbody>
			@foreach($tags as $tag)
				<tr>
					<td>{{ $tag->id }}</td>
					<td>{{ $tag->name }}</td>
					<td>
						<a href="{{ route('admin.tags.edit',$tag->id)}}" class="btn btn-success"><span class="glyphicon glyphicon-record"></span></a>
						<a href="{{ route('admin.tags.destroy',$tag->id)}}" onclick='return confirm("¿Esta seguro que desea eliminar el registro ?")' class="btn btn-danger"><span class="glyphicon glyphicon-remove"></span></a>
					</td>
				</tr>
			@endforeach
		</tbody>
	</table>
	<div class="text-center">
		{!! $tags->render() !!}
	</div>
@endsection
