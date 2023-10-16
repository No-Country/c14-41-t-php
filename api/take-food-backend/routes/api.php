<?php

use App\Http\Controllers\UserController;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\CategoriesController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

Route::resource('/user', UserController::class);
//Route::resource('/user', UserController::class);
Route::post('/user/create', [UserController::class, 'createUser']);
Route::post('/user/login', [UserController::class, 'loginUser']);
Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});
Route::get('/restaurant/info', [RestaurantController::class, 'general_info']);
Route::put('/restaurant/info/{id}', [RestaurantController::class, 'general_info_edit']);
Route::get('/categories', [CategoriesController::class, 'categories']);
Route::put('/categories/{id}', [CategoriesController::class, 'categories_edit']);
Route::get('/products', [ProductController::class, 'index']);
