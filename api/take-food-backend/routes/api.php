<?php

use App\Http\Controllers\Controller;
use App\Http\Controllers\RestaurantController;
use App\Http\Controllers\UserController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

Route::resource('/user', UserController::class);

Route::get('/restaurant/info', [RestaurantController::class, 'general_info']);
Route::put('/restaurant/info/{id}', [RestaurantController::class, 'general_info_edit']);
