<?php

namespace App\Http\Controllers;

use App\Item;
use App\Category;
use App\OrderItem;
use App\Order;
use Illuminate\Http\Request;


class AdminController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }
    public function index()
    {
        $items = Item::all();
        $orders = Order::all();
        $categories = Category::all();
        $orderitems = Order::where('status',0)->get();
        $amount = OrderItem::all();
    	return view('admin.index', ['products' => $items, 'users' => $orders, 'orderproducts' => $orderitems, 'cats' => $categories, 'price' => $amount]);
    }
    public function viewItems()
    {
    	$items = Item::all();
    	return view('admin.products', ['products' => $items]);
    }

    public function create()
    {
    	$item = new Item;
    	$item->name = request()->name;
    	$item->spec = request()->spec;
    	$item->price = request()->price;
    	$item->category_id = request()->cat_id;
    	$item->description = request()->description;
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
    	return redirect('/admin/products');
    }
    public function add()
    {
    	$items = Category::all();
    	return view('admin.add', ['cats' => $items]);
    }
    public function delete($id)
    {
    	$item = Item::find($id);
    	$item->delete();
    	return redirect('/admin/products');
    }
    public function edit($id)
    {
    	$item = Item::find($id);
    	$cats = Category::all();
    	return view('admin.edit', ['product' => $item, 'cats' => $cats]);
    }
    public function update($id)
    {
    	$item = Item::find($id);
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
    	return redirect('/admin/products');
    }
    public function viewCategory()
    {
    	$cats = Category::all();
    	return view('admin.category', ['categories' => $cats]);
    }
    public function catDelete($id)
    {
    	$cat = Category::find($id);
    	$cat->delete();
    	return redirect('/admin/category');
    }
    public function catEdit($id)
    {
    	$cat = Category::find($id);
    	return view('admin.catedit', ['category' => $cat]);
    }

    public function catUpdate($id)		
    {
    	$cat = Category::find($id);
    	$cat->name = request()->name;
    	$cat->save();
    	return redirect('/admin/category');
    }
    public function catAdd()
    {
    	return view('admin.catadd');
    }
    public function catCreate()
    {
    	$cat = new Category;
    	$cat->name = request()->name;
    	$cat->save();
    	return redirect('/admin/category');
    }
    public function viewOrder()
    {
        $orders = Order::all();
        foreach ($orders as $order) {
            if ($order->status == 0) {
                $results = Order::where('status',0)->get();
                return view('admin.orders', ['orders' => $results]);
            }
        }
        return view('admin.orders', ['orders' => NULL]);           
    }
    public function confirmStatus($id)
    {
        $order = Order::find($id);
        $order->status = 1;
        $order->save();
        return redirect('/admin/order');
    }
    public function undoStatus($id)
    {
        $order = Order::find($id);
        $order->status = 0;
        $order->save();
        $orders = Order::all();
        return redirect('/admin/order-history');
    }
    public function viewOrderHistory()
    {
        $orders = Order::all();
        foreach ($orders as $order) {
            if ($order->status == 1) {
                $results = Order::where('status',1)->get();
                return view('admin.viewOrderHistory', ['orders' => $results]);
            }
        }
        return view('admin.viewOrderHistory', ['orders' => NULL]);
    }
    public function viewUser()
    {
        $orders = Order::all();
        return view('admin.userInfo', ['users' => $orders]);
    }
}
