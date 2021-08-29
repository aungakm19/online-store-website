<?php

namespace App\Http\Controllers;
use App\Order;
use App\OrderItem;
use App\Cart;
use Session;
use Carbon\Carbon;
use Illuminate\Http\Request;

class OrdersController extends Controller
{
    public function addOrder()
    {
    	$order = new Order;
    	$order->name = request()->name;
    	$order->email = request()->email;
    	$order->phone = request()->phone;
    	$order->address = request()->address;
    	$order->save();

    	$order_id = $order->id;
    	$orderitem = new OrderItem;
        $date = Carbon::now();
    	$cart = Session::get('cart');
    	foreach ($cart->items as $item) {
            
            //echo $item['id'];
            //echo $order_id;
            $itemorder = [
                'item_id' => $item['id'], 
                'order_id' => $order_id, 
                'qty' => $item['qty'],
                'totalprice' => $cart->totalPrice,
                'created_at' => $date,
                'updated_at' => $date,
            ];
    		$orderitem->insert($itemorder);
    	}
        session()->flush();
        return redirect('/ordersubmitted');
    }
}
