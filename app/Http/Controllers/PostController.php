<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Post;
use App\User;
use App\Category;
// use App\User;
use Illuminate\Support\Facades\Storage;
class PostController extends Controller

{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function __construct(){
        $this->middleware('check')->only('create','store');
    }
    public function index()
    {   
        $posts = Post::all();
        $cats = Category::all();
        return view('post.post_index')->with('post',$posts)->with('category',$cats);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
        $posts = Post::all();
        $cats = Category::all();
        return view('post.create_post')->with('category',$cats)->with('post',$posts);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $validatedData = $request->validate([
            'title' => 'required|unique:posts',
            'description' => 'required',
            'content' => 'required',
            'video' => 'required',
            'image' => 'required',
            'code' => 'required',
        ]);
        //
        // dd($request->all());
        $new = new Post();
        $image = $request->image->store('post');
       
        $new->title = $request->title;
        $new->description = $request->description;
        $new->content = $request->content;
        $new->video = $request->video;
        $new->image = $image;
        $new->code=$request->code;
        $new->category_id = $request->category;
        $new->user_id = $request->user_id;
        $new->published_at = $request->published_at;
        $new->save();
        session()->flash('posted','Post has Been Posted By '.auth()->user()->name);
        return redirect(route('post.index'));

    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
        $find = Post::find($id);
        $user = User::find($find->user_id);
        $category = Category::find($find->category_id);
        return view('post.show')->with('post',$find)->with('username',$user)->with('cat',$category);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $posts = Post::all();
        $cats = Category::all();
        $posts = Post::find($id);
        $cats = Category::all();
        $user = User::find($posts->user_id);
        return view('post.create_post')
        ->with('category',$cats)
        ->with('post_edit',$posts)
        ->with('user',$user)
        ->with('cow',$posts)
        ->with('vagina',$cats);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
        $validatedData = $request->validate([
            'title' => 'required',
            'description' => 'required',
            'content' => 'required',
            'video' => 'required',
            'code' => 'required',
        ]);
      
        $new = Post::find($id);
        if($request->hasFile('image')){
            $image = $request->image->store('post');
            Storage::delete($new->image);
            $new->image = $image;
        }
        
        $new->title = $request->title;
        $new->description = $request->description;
        $new->content = $request->content;
        $new->video = $request->video;
        $new->code=$request->code;
        $new->category_id = $request->category;
        $new->user_id = $request->user_id;
        $new->published_at = $request->published_at;
        $new->save();
        session()->flash('updated','Your Post Has Been Updated by '.auth()->user()->name);
        return redirect(route('post.index'));
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
