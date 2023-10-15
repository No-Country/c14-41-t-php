<?php

use App\Http\Controllers\UserController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

Route::resource('/user', UserController::class);
//Route::resource('/user', UserController::class);
Route::post('/user/create', [UserController::class, 'createUser']);
Route::post('/user/login', [UserController::class, 'loginUser']);
Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});
Route::get('/restaurant/info', [UserController::class, 'general_info']);
Route::put('/restaurant/info/{id}', [UserController::class, 'general_info_edit']);
Route::get('/categories', [UserController::class, 'categories']);
Route::put('/categories/{id}', [UserController::class, 'categories_edit']);
