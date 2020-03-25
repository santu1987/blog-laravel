@extends('admin.template.main')

@section('title','Listado de imagenes')

@section('content')
	<div class="row">
		@foreach($images as $image)
			<div class="col-md-4">
				<div class="panel panel-default">
					<div class="panel-body">
						<img src="/img/articles/{{$image->name}}" class="img-responsive">
					</div>
				</div>
				<div class="pannel-footer">
					{{$image->article->title}}
				</div>
			</div>
		@endforeach
	</div>
	<div class="text-center">
		{!! $images->render() !!}
	</div>	
@endsection