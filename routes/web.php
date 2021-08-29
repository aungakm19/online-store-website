<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', 'ItemController@index');
Route::get('/products', 'ItemController@viewItems');

Route::get('/add', 'ItemController@add');
Route::post('/add', 'ItemController@create');

Route::get('/addcategory', 'CategoryController@add');
Route::post('/addcategory', 'CategoryController@create');


Route::get('/addfeaturedproduct', 'FeaturedProductController@add');
Route::post('/addfeaturedproduct', 'FeaturedProductController@create');

Route::get('/products/detail/{id}', 'ItemController@detail');

Route::get('/products/featuredproductdetail/{id}', 'FeaturedProductController@featuredproductdetail');

Route::get('/cart', 'ItemController@cart');
Route::get('/addtocart/{id}', 'ItemController@addToCart');
Route::get('/cart/remove', 'ItemController@removeCart');
Route::get('/ordersubmitted', 'ItemController@orderSubmitted');
Route::post('/cart', 'OrdersController@addOrder');





Route::get('/admindashboard', 'AdminController@index');
Route::get('/admin/products', 'AdminController@viewItems');

Route::get('/admin/products/add', 'AdminController@add');
Route::post('/admin/products/add', 'AdminController@create');

Route::get('/admin/products/delete/{id}', 'AdminController@delete');

Route::get('/admin/products/edit/{id}', 'AdminController@edit');
Route::post('/admin/products/edit/{id}', 'AdminController@update');

Route::get('/admin/category', 'AdminController@viewCategory');
Route::get('/admin/category/add', 'AdminController@catAdd');
Route::post('/admin/category/add', 'AdminController@catCreate');
Route::get('/admin/category/delete/{id}', 'AdminController@catDelete');
Route::get('/admin/category/edit/{id}', 'AdminController@catEdit');
Route::post('/admin/category/edit/{id}', 'AdminController@catUpdate');
Route::get('/admin/order', 'AdminController@viewOrder');
Route::get('/admin/status-undo/{id}', 'AdminController@undoStatus');
Route::get('/admin/status-confirm/{id}', 'AdminController@confirmStatus');
Route::get('/admin/order-history', 'AdminController@viewOrderHistory');
Route::get('/logout', 'ItemController@logout');
Route::get('/admin/userinfo', 'AdminController@viewUser');

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
