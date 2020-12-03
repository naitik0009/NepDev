@extends('layouts.app')

@section('content')
<table class="table">
  <thead>
    <tr>
     <th scope="col"><a  href="{{route('home')}}">Home</a>  <a href="{{route('post.index')}}">Post <span class="badge badge-danger badge-pill">{{$post->count()}}</span></a>   <a  href="{{route('category.index')}}">Category <span class="badge badge-warning badge-pill">{{$category->count()}}</span></a></th>
</tr>
</thead>
 </table>

<div class="container">

<div class="card">
  <div class="card-body">
 
  <table class="table">
  <thead class="thead-dark">
    <tr>
      <th scope="col">Sno</th>
      <th scope="col">Image</th>
      <th scope="col">Title</th>
      <th scope="col">Description</th>
      <th scope="col">Blog Video</th>
      <th scope="col">Published At</th>
      <th scope="col">Action</th>
    </tr>
  </thead>
  <tbody>
  <input type="hidden" value="{{$i=0}}">
    <tr>
    @foreach($post as $pussy)
    <input type="hidden" value="{{$i++}}">
      <th scope="row">{{$i}}</th>
      <td><img src="{{asset('storage/'.$pussy->image)}}" width="80px"></td>
      <td>{{$pussy->title}}</td>
      <td>{{$pussy->description}}</td>
      <td><div class="embed-responsive embed-responsive-21by9">
          <iframe width="80px" class="embed-responsive-item" src="{{asset($pussy->video)}}" allowfullscreen></iframe>
                                </div>
                                  </td>
      <td>{{$pussy->published_at}}</td>
      <td><a class="btn btn-info btn-sm" href="{{route('post.edit',$pussy->id)}}">Recreate</a> <a  href="" class="btn btn-danger btn-sm">Trash</a></td>
    </tr>
  @endforeach
  </tbody>
</table>

<a href="{{route('post.create')}}" class="btn btn-dark float-right">Create Post</a>
  </div>
</div>
</div>
<div class="container">

</div>
@endsection