
@if ($paginator->hasPages())

    <ul class="pagination" role="navigation">
        {{-- Previous Page Link --}}
        @if ($paginator->onFirstPage())
        <a class="nav-link-prev nav-item nav-link rounded-left disabled" href="#">Previous<i class="arrow-prev fas fa-long-arrow-alt-left"></i></a>
         
        @else
        <a class="nav-link-prev nav-item nav-link rounded-left" href="{{ $paginator->previousPageUrl() }}">Previous<i class="arrow-prev fas fa-long-arrow-alt-left"></i></a>
          
        @endif

        {{-- Next Page Link --}}
        @if ($paginator->hasMorePages())
       
            <a class="nav-link-next nav-item nav-link rounded-right" href="{{ $paginator->nextPageUrl() }}">Next<i class="arrow-next fas fa-long-arrow-alt-right"></i></a>
				</nav>
        @else
        <a class="nav-link-next nav-item nav-link rounded-right disabled" href="{{ $paginator->nextPageUrl() }}">Next<i class="arrow-next fas fa-long-arrow-alt-right"></i></a>
				</nav>
          
        @endif
    </ul>
@endif
