<?php

namespace App\Http\Controllers;

use App\Category;
use Illuminate\Http\Request;

class CategoryController extends Controller
{
    public function add()
    {
    	return view('user.addcategory');
    }
    public function create()
    {
    	$category = new Category;
    	$category->name = request()->name;
    	$category->save();
    	return back();
    }
}
