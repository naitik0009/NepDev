@extends('layouts.app')

@section('content')
<table class="table">
  <thead>
    <tr>
     <th scope="col"> <a href="{{route('post.index')}}">Post <span class="badge badge-danger badge-pill">{{$post->count()}}</span></a>   <a  href="{{route('category.index')}}">Category <span class="badge badge-warning badge-pill">{{$category->count()}}</span></a>  <a  href="{{route('user.create')}}">Users <span class="badge badge-warning badge-pill">{{auth()->user()->count()}}</span></a></th>
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
      <th scope="col">Profile</th>
      <th scope="col">Name</th>
      <th scope="col">Email</th>
      <th scope="col">Role</th>
      <th scope="col">Action</th>
    </tr>
  </thead>
  <tbody>
  <input type="hidden" value="{{$i=0}}">
  @foreach($user as $pussy)
  <input type="hidden" value="{{$i++}}">
    <tr>
  
      <th scope="row">{{$i}}</th>
      <td><img src="{{asset('storage/'.$pussy->image)}}" width="80px"></td>
      <td>{{$pussy->name}}</td>
      <td>{{$pussy->email}}</td>
      <td>{{$pussy->role}}</td>
      @if($pussy->role == 'admin')
      
      @else
      <th scope="col"><form action="{{route('user.update',$pussy->id)}}" method="POST">@csrf <button type="submit" class="btn btn-info btn-sm">Make Admin</button></th> @endif
    </tr>
  @endforeach
  </tbody>
</table>


  </div>
</div>
</div>
<div class="container">

</div>
@endsection