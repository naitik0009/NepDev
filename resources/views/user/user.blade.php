 @extends('layouts.app')
 <!-- Meta -->
@section('content')
<table class="table">
  <thead>
    <tr>
     <th scope="col"><a  href="{{route('home')}}">Home</a></th>
</tr>
</thead>
 </table>
<header class="header text-center">	    
	    <h1 class="blog-name pt-lg-4 mb-0">Your Profile</h1>
        
	    <div class="container">
				<div class="profile-section pt-3 pt-lg-0">
				    <img class="profile-image mb-3 rounded-circle mx-auto" width="170px" src="{{asset('storage/'.Auth::user()->image)}}" alt="image" >			
                    <table class="table table-borderless">
  <thead>
    <tr>

      <th scope="col">Name</th>
      <th scope="col">Email</th>
      <th scope="col">Role</th>
      <th scope="col">Action</th>
    </tr>
  </thead>
  <tbody>
    <tr>
     
      <td>{{Auth::user()->name}}</td>
      <td>{{Auth::user()->email}}</td>
      <td>{{Auth::user()->role}}</td>
      <td><a href="{{route('user.edit',Auth::user()->id)}}">Update</a></td>
    </tr>

  </tbody>
</table>
</div>
		</div>		</div><!--//profile-section-->
</header>
            @endsection