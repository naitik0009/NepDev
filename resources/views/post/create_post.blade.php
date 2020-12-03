@extends('layouts.app')

@section('content')

<table class="table">
  <thead>
    <tr>
     <th scope="col"> <a href="{{route('post.index')}}">Post <span class="badge badge-danger badge-pill">{{ isset($post_edit)? $cow->count() :$post->count()}}</span></a>   <a  href="{{route('category.index')}}">Category <span class="badge badge-warning badge-pill">{{ isset($post_edit)? $vagina->count() :$category->count()}}</span></a></th>
</tr>
</thead>
 </table>

<div align="center" class="container">
<h1><span class="badge badge-dark">Create Post</span></h1>

<form action="{{isset($post_edit)?route('post.update',$post_edit->id):route('post.store')}}" method="POST" enctype="multipart/form-data">
@csrf
@if(isset($post_edit))
@method('PUT')
@endif
  <div class="form-group col-md-5">
    <label for="exampleFormControlInput1">Title</label>
    <input type="text" name='title' class="form-control" value="{{isset($post_edit)?$post_edit->title:'' }}" id="exampleFormControlInput1" placeholder="Type Your Title" required>
  </div>
  <div class="form-group col-md-5">
    <label for="exampleFormControlTextarea1">Description</label>
    <textarea class="form-control" name='description' id="exampleFormControlTextarea1" rows="3" required>{{ isset($post_edit)?$post_edit->description: ''  }}</textarea>
  </div>
  <div class="form-group col-md-5">
					<label for="Content">
						Content
					</label>
				 <input id="content" type="hidden" value="{{ isset($post_edit) ? $post_edit->content : '' }}" name="content" required>
  				<trix-editor  input="content" ></trix-editor>
					</div>
          <div class="form-group col-md-5">
					<label for="Code">
						Code Example
					</label>
				 <input id="code" placeholder="Paste your Code Here" type="hidden" value="{{ isset($post_edit) ? $post_edit->code : '' }}" name="code" required>
  				<trix-editor  input="code" ></trix-editor>
					</div>
@if(isset($post_edit))
<div class="form-group col-md-5">
					<label for="Content">
						Previous Image
					</label>
<img class="col-md-6" name="image" src="{{asset('storage/'.$post_edit->image)}}" width="80px">
</div>
@endif
  <div class="form-group col-md-5">
    <label for="exampleFormControlFile1">Upload Image</label>
    <input type="file" name='image' class="form-control-file" >
  </div>
  
  <div class="form-group col-md-5">
    <label for="exampleFormControlSelect1">Category</label>
    <select class="form-control" name='category' id="exampleFormControlSelect1">
    
    @foreach($category as $cat)
      <option  value="{{$cat->id}}" 
      @if(isset($post_edit) && $cat->id == $post_edit->category_id) 
   
      selected
    
      @endif
       >
      {{ $cat -> name }}
      </option>
@endforeach
    </select>
  </div>
  <div class="form-group col-md-5">
    <label for="exampleFormControlFile1">Published At</label>
  <input class="date" value="{{ isset($post_edit) ? $post_edit->published_at :'' }}" name="published_at" type="text" placeholder="Select Date.." required>
</div>
@if(isset($post_edit))
<div class="form-group col-md-5 ">
    <label for="exampleFormControlFile1">Published_by</label>
   <em> <strong><input type="text" value="{{$user->name}}"readonly></em></strong> 
   <input type="hidden" name="user_id" value="{{auth()->user()->id}}">
  </div>
  @else
  <input type="hidden" name="user_id" value="{{auth()->user()->id}}">
  @endif
  <div class="form-group col-md-5">
    <label for="exampleFormControlInput1">Video Link</label>
    <input type="text" class="form-control" value="{{ isset($post_edit) ? $post_edit->video :'' }}" name='video' id="exampleFormControlInput1" placeholder="Paste Your Embed Video Link Here" required>
  </div>
  

  <button type="submit" class="btn btn-primary">Submit</button>

</div>
<script>
flatpickr(".date",{
  enableTime:true
});

</script>
@endsection
