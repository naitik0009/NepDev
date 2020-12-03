@extends('layouts.app')

@section('content')
<table class="table">
  <thead>
    <tr>
     <th scope="col"><a  href="{{route('home')}}">Home</a> <a href="{{route('post.index')}}">Post <span class="badge badge-success   badge-pill">{{$post->count()}}</span></a>   <a  href="{{route('category.index')}}">Category <span class="badge badge-warning badge-pill">{{$category->count()}}</span></a></th>
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
      <th scope="col">Title</th>
      <th scope="col">Action</th>
      <th scope="col">Update</th>
    </tr>
  </thead>
  <tbody>
  <input type="hidden" value="{{$i=0}}">
  @foreach($category as $cat)
  <input type="hidden" value="{{$i++}}">
    <tr>
      <th scope="row">{{$i}}</th>
    
      <td>{{$cat->name}}</td>

      <td>
     <form action="{{route('category.destroy',$cat->id)}}" method="POST"> @csrf @method('DELETE')<button type="submit" class="btn btn-danger  btn-sm">Delete</button>
      </form>
      
      </td>
    <td> <a class="btn btn-info btn-sm"  href="{{route('category.edit',$cat->id)}}">Recreate</a> </td>
    </tr>
    @endforeach
  </tbody>
</table>

<a href="{{route('category.create')}}" class="btn btn-dark float-right">Create Category</a>
  </div>
</div>
</div>
@endsection