<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Item extends Model
{
	protected $table = 'items';
	protected $fillable= ['name','spec','price','cover','category_id'];   

	public function category()
	 {
	 	return $this->belongsTo('App\Category');
	 } 
}
