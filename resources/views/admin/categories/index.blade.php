@extends('admin.template.main')

@section('title','Listado de Categorías')

@section('content')
	<a href="{{ route('admin.categories.create')}}" class="btn btn-info">Nuevo</a>
	<table class="table table-striped">
		<thead>
			<th>ID</th>
			<th>Nombre</th>
			<th>Acción</th>
		</thead>
		<tbody>
			@foreach($categories as $category)
				<tr>
					<td>{{ $category->id }}</td>
					<td>{{ $category->name }}</td>
					<td>
					<a href="{{ route('admin.categories.edit',$category->id)}}" class="btn btn-success"><span class="glyphicon glyphicon-record"></span></a>
					<a href="{{ route('admin.categories.destroy',$category->id)}}" onclick='return confirm("¿Esta seguro que desea eliminar el registro ?")' class="btn btn-danger"><span class="glyphicon glyphicon-remove"></span></a>
					</td>
				</tr>
			@endforeach
		</tbody>
	</table>
	{!! $categories->render() !!}
@endsection