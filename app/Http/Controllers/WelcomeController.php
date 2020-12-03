<?php

namespace App\Http\Controllers;
use App\Post;
use App\Category;
use Illuminate\Http\Request;

class WelcomeController extends Controller
{
    //
    public function index(){
        $post = Post::simplePaginate(2);
        $category = Category::all();
        return view('welcome')->with('post',$post)->with('category',$category);
    }
}
