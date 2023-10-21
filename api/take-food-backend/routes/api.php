<?php

use App\Http\Controllers\UserController;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\RestaurantController;
use App\Http\Controllers\CategoriesController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

//Ruta para crear usuario
Route::post('/user/create', [UserController::class, 'createUser']);
//Ruta para logear usuario
Route::post('/user/login', [UserController::class, 'loginUser']);
//Ruta para acceder a la
Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});
//Ruta para editar Usuario
Route::middleware('auth:sanctum')->put('/user/edit', [UserController::class, 'editUser']);
Route::get('/restaurant/info', [RestaurantController::class, 'general_info']);
Route::put('/restaurant/info/{id}', [RestaurantController::class, 'general_info_edit']);
Route::get('/categories', [CategoriesController::class, 'categories']);
Route::put('/categories/{id}', [CategoriesController::class, 'categories_edit']);
Route::post('/categories/create', [CategoriesController::class, 'create']);
Route::get('/products', [ProductController::class, 'index']);
