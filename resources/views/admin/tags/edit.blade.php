@extends('admin.template.main')

@section('title','Editar tar '.$tag->name)

@section('content')
	{!! Form::open(['route'=>['admin.tags.update', $tag->id],'method'=>'PUT']) !!}
	<div class="form-group">
		{!! Form::label('name','Nombre')!!}
		{!! Form::text('name',$tag->name,['class'=>'form-control', 'placeholder'=>'Nombe del tag','required']) !!}
	</div>
	<div class="form-group">
		{!! Form::submit('Editar', ['class'=> 'btn btn-primary'])!!}
	</div>	
	{!! Form::close() !!}
@endsection