<!DOCTYPE html>
<html lang="en"> 
<head>
    <title>NepDev</title>
    
    <!-- Meta -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="NepDev">
    <meta name="author" content="naitik rauniyar">    
    <link rel="shortcut icon" href="favicon.ico"> 
    
    <!-- FontAwesome JS-->
	<script defer src="{{asset('fontawesome/js/all.min.js')}}"></script>
    
    <!-- Theme CSS -->  
    <link id="theme-style" rel="stylesheet" href="{{asset('css/theme-1.css')}}">

</head> 

<body>
    
    <header class="header text-center">	    
	    <h1 class="blog-name pt-lg-4 mb-0"><a href="/">NepDev</a>
        </h1>
        
	    <nav class="navbar navbar-expand-lg navbar-dark" >
           
			<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navigation" aria-controls="navigation" aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
			</button>

			<div id="navigation" class="collapse navbar-collapse flex-column" >
				<div class="profile-section pt-3 pt-lg-0">
				    <img class="profile-image mb-3 rounded-circle mx-auto" src="{{asset('img/naitik.jpg')}}" alt="image">			
					
					<div class="bio mb-3">Hi,welcome to NepDev <br>my name is Naitik Rauniyar.<br>
					I am a computer science student<br>and also  junior backend engineer.</div><!--//bio-->
					<ul class="social-list list-inline py-3 mx-auto">
			            <!-- <li class="list-inline-item"><a href="#"><i class="fab fa-twitter fa-fw"></i></a></li> -->
			            <li class="list-inline-item"><a href="https://www.facebook.com/naitik.gupta.566"><i class="fab fa-facebook fa-fw"></i></a></li>
			            <li class="list-inline-item"><a href="https://www.github.com/naitik0009"><i class="fab fa-github-alt fa-fw"></i></a></li>
			            <li class="list-inline-item"><a href="#"><i class="fab fa-stack-overflow fa-fw"></i></a></li>
			            <li class="list-inline-item"><a href="https://www.instagram.com/naitik_rauniyar"><i class="fab fa-instagram fa-fw"></i></a></li>
			        </ul><!--//social-list-->
			        <hr> 
				</div><!--//profile-section-->
				
				<ul class="navbar-nav flex-column text-left">
					<li class="nav-item active">
					    <a class="nav-link" href="/"><i class="fas fa-home fa-fw mr-2"></i>Home</a>
					</li>
					<li class="nav-item">
					@auth
					    <a class="nav-link" href="{{route('home')}}"><i class="fas fa-bookmark fa-fw mr-2"></i>DashBoard</a>
					</li>
				
					@endauth
					@if(!auth()->user())
					<a class="nav-link" href="{{route('login')}}"><i class="fas fa-sign-in-alt  mr-2"></i>Login</a>
					</li>
					<a class="nav-link" href="{{route('register')}}"><i class="fas fa-user fa-fw mr-2"></i>Sign Up</a>
					</li>
					@endif
					<!-- <li class="nav-item">
					    <a class="nav-link" href="about.html"><i class="fas fa-user fa-fw mr-2"></i>About Me</a>
					</li> -->
				</ul>
				
			
			</div>
		</nav>
    </header>
    
    <div class="main-wrapper">
	    <section class="cta-section theme-bg-light py-5">
		    <div class="container text-center">
			    <h2 class="heading"> Welcome To NepDev</h2>
		
		    </div><!--//container-->
	    </section>


	    <section class="blog-list px-3 py-5 p-md-5">
		    <div class="container">
			@foreach($post as $sexy)
			    <div class="item mb-5">
				    <div class="media">
					<a href="{{route('post.show',$sexy->id)}}">  <img class="mr-3 img-fluid post-thumb d-none d-md-flex"  src="{{asset('storage/'.$sexy->image)}}" alt="image"></a>
					    <div class="media-body">
						    <h3 class="title mb-1"><a href="{{route('post.show',$sexy->id)}}">{{$sexy->title}}</a></h3>
						    <div class="meta mb-1"><span class="date">Published At : {{$sexy->published_at}}</div>
						    <div class="intro">{!!$sexy->content!!}</div>
						    <a class="more-link" href="{{route('post.show',$sexy->id)}}">Read more &rarr;</a>
					    </div><!--//media-body-->
				    </div><!--//media-->
			    </div><!--//item-->
			  @endforeach
{{$post->links()}}
			    
			    <!-- <nav class="blog-nav nav nav-justified my-5">
				  <a class="nav-link-prev nav-item nav-link d-none rounded-left" href="#">Previous<i class="arrow-prev fas fa-long-arrow-alt-left"></i></a>
				  <a class="nav-link-next nav-item nav-link rounded" href="#">Next<i class="arrow-next fas fa-long-arrow-alt-right"></i></a>
				</nav>
				 -->
		    </div>
	    </section>
	    
	    <footer class="footer text-center py-2 theme-bg-dark">
		   
	        <!--/* This template is free as long as you keep the footer attribution link. If you'd like to use the template without the attribution link, you can buy the commercial license via our website: themes.3rdwavemedia.com Thank you for your support. :) */-->
            <small class="copyright">Designed with <i class="fas fa-heart" style="color: #fb866a;"></i> by <a href="http://www.github.com/naitik0009" target="_blank">naitik_rauniyar</a> for developers</small>
		   
	    </footer>
    
    </div><!--//main-wrapper-->
    
    
    
    
    <!-- *****CONFIGURE STYLE (REMOVE ON YOUR PRODUCTION SITE)****** -->  
    <div id="config-panel" class="config-panel d-none d-lg-block">
        <div class="panel-inner">
            <a id="config-trigger" class="config-trigger config-panel-hide text-center" href="#"><i class="fas fa-cog fa-spin mx-auto" data-fa-transform="down-6" ></i></a>
            <h5 class="panel-title">Choose Colour</h5>
            <ul id="color-options" class="list-inline mb-0">
                <li class="theme-1 active list-inline-item"><a data-style="{{asset('css/theme-1.css')}}" href="#"></a></li>
                <li class="theme-2 list-inline-item"><a data-style="{{asset('css/theme-2.css')}}" href="#"></a></li>
                <li class="theme-3  list-inline-item"><a data-style="{{asset('css/theme-3.css')}}" href="#"></a></li>
                <li class="theme-4  list-inline-item"><a data-style="{{asset('css/theme-4.css')}}" href="#"></a></li>
                <li class="theme-5  list-inline-item"><a data-style="{{asset('css/theme-5.css')}}" href="#"></a></li>
                <li class="theme-6  list-inline-item"><a data-style="{{asset('css/theme-6.css')}}" href="#"></a></li>
                <li class="theme-7  list-inline-item"><a data-style="{{asset('css/theme-7.css')}}" href="#"></a></li>
                <li class="theme-8  list-inline-item"><a data-style="{{asset('css/theme-8.css')}}" href="#"></a></li>
            </ul>
            <a id="config-close" class="close" href="#"><i class="fa fa-times-circle"></i></a>
        </div><!--//panel-inner-->
    </div><!--//configure-panel-->

    
       
    <!-- Javascript -->          
    <script src="{{asset('js/jquery-3.4.1.min.js')}}"></script>
    <script src="{{asset('js/popper.min.js')}}"></script> 
    <script src="{{asset('js/bootstrap.min.js')}}"></script> 

    <!-- Style Switcher (REMOVE ON YOUR PRODUCTION SITE) -->
    <script src="{{asset('js/style-switcher.js')}}"></script>     
    

</body>
</html> 

