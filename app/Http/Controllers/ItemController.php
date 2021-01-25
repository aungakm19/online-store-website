<?php

namespace App\Http\Controllers;

use App\Item;
use App\FeaturedProduct;
use App\Cart;
use Session;
use Illuminate\Http\Request;

class ItemController extends Controller
{
    public function index()
    {
        $items = FeaturedProduct::all();
    	return view('user.index', ['products' => $items]);
    }
    public function viewItems()
    {
        $items = Item::all();
    	return view('user.products', ['products' => $items]);
    }
    public function create()
    {
    	$item = new Item;
    	$item->name = request()->name;
    	$item->spec = request()->spec;
    	$item->price = request()->price;
    	$item->category_id = request()->cat_id;
        if (request()->hasfile('cover')) {
            $file = request()->file('cover');
            $extension = $file->getClientOriginalExtension();
            $filename = time() . '.' .$extension;
            $file->move('user/images/', $filename);
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

    public function detail($id)
    {
        $item = Item::find($id);
        return view('user.product-details', ['product' => $item]);
    }

    public function cart()
    {   
        $cart = Session::get('cart');
        if ($cart) {
            return view('user.checkout' , ['cartItems' => $cart, 'totalPrice' => $cart->totalPrice]);
        }else{
            return redirect('/products');
        }
        
    }
    
    public function addToCart(Request $request, $id)
    {
        $item = Item::find($id);
        $oldCart = $request->session()->get('cart');
        $cart = new Cart($oldCart);
        $cart->add($item,$id);

        $request->session()->put('cart', $cart);
        return redirect('/products');
        
    }
    public function removeCart()
    {
        session()->flush();
        return back();
    }
    public function orderSubmitted()
    {
        return view('user.finish');
    }
    public function logout()
    {
        session()->flush();
        return redirect('/login');
    }
}
