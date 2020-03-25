@extends('front.template.main')
@section('title')
	Detalle Artículo
@endsection
@section('content')
	<div class="container">
		<div class="row">
			<div class="col-lg-8">
				<h1>{{ $article->title }}</h1>
				@foreach($article->images as $image)
					<img class="img-responsive img-article img_principal" src="{{asset('img/articles/'.$image->name)}}">
				@endforeach
				<div>
					<p>
						{!! $article->content !!}
					</p>
				</div>
				<div>
					<h3>Categorías</h3>
					<span>
						<i class="fa fa-folder-open-o"></i><a href="{{ route('front.search.category',$article->category->name) }}">{{ $article->category->name}}</a>
							<div class="pull-right">
								<i class="fa fa-clock-o"></i>	{{ $article->created_at->diffForHumans()}}
							</div>	
					</span>
				</div>
				<div>
					<h3>Tags:</h3>
					<span>
						@foreach($article->tags as $tag)
						<span class="label label-info label tags_labels">
							{!! $tag->name !!}
						</span>	
						@endforeach
					</span>
				</div>
			</div>
			<div class="col-lg-4">
				<h3>Otros Artículos de interes</h3>
				@include('front.template.partials.moreArticles')
			</div>
		</div>
	</div>
@endsection