@extends('layouts.app')

@section('content')
<table class="table">
  <thead>
    <tr>
     <th scope="col"> <a href="{{route('post.index')}}">Post <span class="badge badge-danger badge-pill">{{$post->count()}}</span></a>   <a  href="{{route('category.index')}}">Category <span class="badge badge-warning badge-pill">{{$category->count()}}</span></a></th>
</tr>
</thead>
 </table>

<div align="center" class="container">
<h1><span class="badge badge-info">Create Category</span></h1>

<form action="{{isset($data)? route('category.update',$data->id) :route('category.store')}}" method="POST">
@csrf
@if(isset($data))
@method('PUT')
@endif
  <div class="form-group col-md-5">
    <label for="exampleFormControlInput1">Title</label>
    <input value="{{isset($data) ? $data->name : ''}}" type="text" name='name' class="form-control" placeholder="Type Your Title" required>
  </div>
  <button type="submit" class="btn btn-primary">Submit</button>
</form>
</div>

@endsection