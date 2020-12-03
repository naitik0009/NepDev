<?php

namespace App\Http\Middleware;
use App\Post;
use Closure;

class PostCheck
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        if(Post::all()->count()>0){
            session()->flash('nopost',auth()->user->name.' You Cannot Make Changes In This Category Because Some post Has Been Created Using This Category');
            return redirect(route('category.index'));
        }
        return $next($request);
    }
}
