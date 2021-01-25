<?php

namespace App\Http\Controllers;
use App\FeaturedProduct;
use Illuminate\Http\Request;

class FeaturedProductController extends Controller
{
    public function create()
    {
    	$item = new FeaturedProduct;
    	$item->name = request()->name;
    	$item->spec = request()->spec;
    	$item->price = request()->price;
    	$item->category_id = request()->cat_id;
        if (request()->hasfile('cover')) {
            $file = request()->file('cover');
            $extension = $file->getClientOriginalExtension();
            $filename = time() . '.' .$extension;
            $file->move('featuredimages/', $filename);
            $item->cover = $filename;   
        }else{
            return request();
            $item->cover = '';
        }
    	$item->save();
    	return back();
    }
    public function add()
    {
    	return view('user.akm');
    }
    public function featuredproductdetail($id)
    {
        $item = FeaturedProduct::find($id);
        return view('user.product-details', ['product' => $item]);
    }
}
