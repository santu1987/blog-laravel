@extends('admin.template.main')

@section('title','Editar usuario '.$user->name)

@section('content')
	{!! Form::open(['route'=>['admin.users.update', $user->id],'method'=>'PUT']) !!}
		
		<div class="form-group">
			{!! Form::label('name', 'Nombre')!!}
			{!! Form::text('name', $user->name, ['class'=> 'form-control','placeholder'=>'Nombre completo'], 'required')!!}
		</div>

		<div class="form-group">
			{!! Form::label('email', 'Correo electrónico')!!}
			{!! Form::email('email', $user->email, ['class'=> 'form-control','placeholder'=>'correo@gmail.com'], 'required')!!}
		</div>

		<div class="form-group">
			{!! Form::label('type', 'Tipo Usuario')!!}
			{!! Form::select('type', ['member'=>'Miembro','admin'=>'Administrador'],$user->type ,['class'=>'form-control', 'placeholder'=>'Seleccione una opción...', 'required'])!!}
		</div>

		<div class="form-group">
			{!! Form::submit('Editar', ['class'=>'btn btn-primary'])!!}
		</div>

	{!! Form::close() !!}
@endsection