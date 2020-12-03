<!DOCTYPE html>
<html lang="en"> 
<head>
    <title>NepDev</title>
    
    <!-- Meta -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Blog Template">
    <meta name="author" content="Xiaoying Riley at 3rd Wave Media">    
    <link rel="shortcut icon" href="favicon.ico"> 
    
    <!-- FontAwesome JS-->
	<script defer src="{{asset('fontawesome/js/all.min.js')}}"></script>
 
    <!-- Plugin CSS -->
   
   <link rel="stylesheet" href="{{asset('css/high.css')}}">

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
					
					<div class="bio mb-3">Hi, my name is Naitik Rauniyar.<br>
					I am a computer science student.<br></div><!--//bio-->
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
	    
	    <article class="blog-post px-3 py-5 p-md-5">
		    <div class="container">
			    <header class="blog-post-header">
				    <h2 class="title mb-2">{{$post->title}}</h2>
				    <div class="meta mb-3"><span class="date">Published At : {{$post->published_at}}</span><span class="time">Published By : {{$username->name}}</span><span class="comment"><a href="#">Category : {{$cat->name}}</a></span></div>
			    </header>
			    
			    <div class="blog-post-body">
				    <figure class="blog-banner">
				        <a href="https://made4dev.com"><img class="img-fluid" src="{{asset('storage/'.$post->image)}}" alt="image"></a>
				        <figcaption class="mt-2 text-center image-caption">Image Credit: <a href="https://made4dev.com?ref=devblog" target="_blank">{{$username->name}}</a></figcaption>
				    </figure>
				    <p>{!!$post->content!!}</p>
					<div class="addthis_inline_share_toolbox my-5"></div>
				    <h3 class="mt-5 mb-3">Related Code</h3>
				    <p></p>
<div class="container bg-light " >
<pre>
<code>
{!!$post->code!!}
</pre>
</code>
</div>
				  
					
					
			


				    
				    <h3 class="mt-5 mb-3">Related Video</h3>
				    <p>
				    <div class="embed-responsive embed-responsive-16by9">
					   <iframe width="560" height="315" src="{{asset($post->video)}}" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>					
					</div>
				   
			    </div>
				    

				
				<div class="blog-comments-section">
				<div  id="disqus_thread"></div>
<script>
    /**
    *  RECOMMENDED CONFIGURATION VARIABLES: EDIT AND UNCOMMENT THE SECTION BELOW TO INSERT DYNAMIC VALUES FROM YOUR PLATFORM OR CMS.
    *  LEARN WHY DEFINING THESE VARIABLES IS IMPORTANT: https://disqus.com/admin/universalcode/#configuration-variables    */
    
    var disqus_config = function () {
    this.page.url = "{{route('post.show',$post->id)}}";  // Replace PAGE_URL with your page's canonical URL variable
    this.page.identifier = {{$post->id}}; // Replace PAGE_IDENTIFIER with your page's unique identifier variable
    };
    
    (function() { 

// DON'T EDIT BELOW THIS LINE

    var d = document, s = d.createElement('script');
    s.src = 'https://nepdev.disqus.com/embed.js';
    s.setAttribute('data-timestamp', +new Date());
    (d.head || d.body).appendChild(s);
    })();
</script>
<noscript>Please enable JavaScript to view the <a href="https://disqus.com/?ref_noscript">comments powered by Disqus.</a>
</noscript>
				</div><!--//blog-comments-section-->
				
		    </div><!--//container-->
	    </article>
<!-- 	  -->
	    
        <footer class="footer text-center py-2 theme-bg-dark">
		   
           <!--/* This template is free as long as you keep the footer attribution link. If you'd like to use the template without the attribution link, you can buy the commercial license via our website: themes.3rdwavemedia.com Thank you for your support. :) */-->
           <small class="copyright">Designed with <i class="fas fa-heart" style="color: #fb866a;"></i> by <a href="http://www.github.com/naitik0009" target="_blank">naitik_rauniyar</a> for developers</small>
          
       </footer>
   
   </div><!--//main-wrapper-->
    
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
    <!-- Page Specific JS -->
  

   
    <script src="{{asset('js/high.js')}}"></script>
    <!-- Custom JS -->
    <script src="{{asset('js/blog.js')}}"></script>
    <!-- Go to www.addthis.com/dashboard to customize your tools -->
<script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-5fc638bc32ee9210"></script>

  
        <!-- Style Switcher (REMOVE ON YOUR PRODUCTION SITE) -->
        <script src="{{asset('js/style-switcher.js')}}"></script>      
    

</body>
</html> 

