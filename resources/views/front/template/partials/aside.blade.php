<!-- Categorias -->
<div class="panel panel-primary">
	<div class="panel-heading">Categorías</div>
	<div class="panel-body">
		<div class="list-group">
			@foreach($categories as $category)
			<a href="{{ route('front.search.category',$category->name) }}" class="list-group-item">{{ $category->name }} <span class="badge">{{ $category->articles->count() }}</span> </a>
			@endforeach
		</div>
	</div>
</div>		
<!-- -->
<!-- Tags -->
<div class="panel panel-info">
  <div class="panel-heading">
    <h3 class="panel-title">Tags</h3>
  </div>
  <div class="panel-body">
  	@foreach($tags as $tag)
  	    <a href="{{ route('front.search.tag', $tag->name) }}">
 		<span class="label label-info label tags_labels">
   			{{ $tag->name }}
   		</span>
		</a>
   	@endforeach	
  </div>
</div>		
<!-- -->