<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Cart 
{
    public $items = null;
    public $totalQty = 0;
    public $totalPrice = 0;
    
    function __construct($oldCart)
    {
    	if ($oldCart) {
    		$this->items = $oldCart->items;
    		$this->totalQty = $oldCart->totalQty;
    		$this->totalPrice = $oldCart->totalPrice;
    	}
    }

    public function add($item, $id)
    {
    	$stroedItem = [
                'id' => $item->id,
    			'qty' => 0, 
    			'unitprice' =>$item->price,
    			'price' => $item->price, 
    			'name' => $item->name, 
    			'cover' => $item->cover
    	];
    	if ($this->items) {
    		if (array_key_exists($id, $this->items)) {
    			$stroedItem = $this->items[$id];
    		}
    	}
    	$stroedItem['qty']++;
    	$stroedItem['unitprice'] = $item->price * $stroedItem['qty'];
    	$this->items[$id] = $stroedItem;
    	$this->totalQty++;
    	$this->totalPrice += $item->price;
    }
}
