<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Category;
use App\Post;
class CategoryController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */

    public function index()
    {
        $grab = Category::all();
        $booby = Post::all();
        return view('category.category_index')->with('category',$grab)->with('post',$booby);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $grab = Category::all();
        $booby = Post::all();
        return view('category.create_cat')->with('category',$grab)->with('post',$booby);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $new = new Category();
        $new->name=$request->name;
        $new->save();
        session()->flash('cat_sus','successfully created category');

        return redirect(route('category.index'));
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
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
        $grab = Category::all();
        $booby = Post::all();
        $find = Category::find($id);
        return view('category.create_cat')
        ->with('data',$find)->with('category',$grab)->with('post',$booby);
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
            $find = Category::find($id);
            $find->name=$request->name;
            $find->save();
            session()->flash('catup','Category Has Been Updated By '.auth()->user()->name);
            return redirect(route('category.index'));
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
        $bring = Post::all();
        $find = Category::find($id);
        // dd($find->post);
        if($find->post->count() > 0){
            session()->flash('nopost',auth()->user()->name.' You Cannot Make Changes In This Category Because Some post Has Been Created Using This Category');
            return redirect(route('category.index'));
        }
        $find->delete();
        session()->flash('catdel','Your Category Has Been Removed By '.auth()->user()->name);
        return redirect(route('category.index'));
    }
}
