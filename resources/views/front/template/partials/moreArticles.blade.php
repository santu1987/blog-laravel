<div class="row">
<!--- Cuerpo de articulos -->
	@foreach($othersArticles as $article)
		<div class="col-lg-12">
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