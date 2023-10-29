<?php

use App\Http\Controllers\UserController;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\CategoriesController;
use App\Http\Controllers\RestaurantController;
use App\Http\Controllers\OrderController;
use App\Http\Controllers\ExampleController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

Route::get('/', [ExampleController::class, 'index']);

//------USUARIO------
Route::post('/user/create', [UserController::class, 'createUser']);//Ruta para crear usuario
Route::post('/user/login', [UserController::class, 'loginUser']);//Ruta para logear usuario
Route::middleware('auth:sanctum')->get('/user', function (Request $request) {//Ruta para acceder a la informacion del usuario
    return $request->user();
});
Route::middleware('auth:sanctum')->put('/user/edit', [UserController::class, 'editUser']);//Ruta para editar Usuario
//------RESTAURANTE------
Route::get('/restaurant/info', [RestaurantController::class, 'general_info']);
Route::put('/restaurant/info/{id}', [RestaurantController::class, 'general_info_edit']);
//------CATEGORIAS PRODUCTOS------
Route::get('/categories', [CategoriesController::class, 'categories']);
Route::put('/categories/{id}', [CategoriesController::class, 'categories_edit']);
Route::post('/categories/create', [CategoriesController::class, 'create']);
Route::delete('/categories/delete/{id}', [CategoriesController::class, 'destroy']);
//------PRODUCTOS------
Route::get('/products', [ProductController::class, 'index']);//Ruta para obtener la info. de todoso los productos
Route::post('/products/create', [ProductController::class, 'store']);//Ruta para crear un nuevo producto
Route::get('/products/show/{id}', [ProductController::class, 'show']);//Ruta para ver un producto
Route::put('/products/edit/{id}', [ProductController::class, 'edit']);//Ruta para editar un producto
Route::delete('/products/destroy/{id}', [ProductController::class, 'destroy']);//Ruta para borrar un producto

Route::post('/crear-orden', [OrderController::class, 'crearOrden']);