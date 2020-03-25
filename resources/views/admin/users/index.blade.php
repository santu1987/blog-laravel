@extends('admin.template.main')

@section('title','Lista de usuarios')

@section('content')
	<a href="{{ route('admin.users.create')}}" class="btn btn-info">Nuevo</a>
	<table class="table table-striped">
		<thead>
			<th>ID</th>
			<th>Nombre</th>
			<th>Correo</th>
			<th>Tipo</th>
			<th>Acción</th>
		</thead>
		<tbody>
			@foreach($users as $user)
				<tr>
					<td>{{ $user->id }}</td>
					<td>{{ $user->name }}</td>
					<td>{{ $user->email }}</td>
					<td>
						@if($user->type == "admin")
							<span class="label label-danger">{{ $user->type }}</span>
						@else	
							<span class="label label-primary">{{ $user->type }}</span>
						@endif
					</td>
					<td>
					<a href="{{ route('admin.users.edit',$user->id)}}" class="btn btn-success"><span class="glyphicon glyphicon-record"></span></a>
					<a href="{{ route('admin.users.destroy',$user->id)}}" onclick='return confirm("¿Esta seguro que desea eliminar el registro ?")' class="btn btn-danger"><span class="glyphicon glyphicon-remove"></span></a>
					</td>
				</tr>
			@endforeach
		</tbody>
	</table>
	<div class="text-center">
		{!! $users->render() !!}
	</div>	
@endsection