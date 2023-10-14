<?php

namespace App\Http\Controllers;

use App\Models\restaurant;
use Illuminate\Http\Request;
use App\Http\Requests\StorerestaurantRequest;
use App\Http\Requests\UpdaterestaurantRequest;

class RestaurantController extends Controller
{
    private static $rules = [
        'name' => 'required',
        'direction' => 'required',
        'email' => 'required',
        'phone' => 'required',
        'description' => 'required'
    ];
    
    private static $message = [
    ];
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(StorerestaurantRequest $request)
    {
        //
    }

    /**
     * Display the specified resource.
     */
    public function show(restaurant $restaurant)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(restaurant $restaurant)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(UpdaterestaurantRequest $request, restaurant $restaurant)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(restaurant $restaurant)
    {
        //
    }

    public function general_info(){

        $data['general_info'] = restaurant::all();


        return with($data);
    }

    public function general_info_edit(Request $request, $id){

        $data = restaurant::findOrFail($id);

        $this->validate($request, static::$rules, static::$message);

        //convierte el request en un array
        $dataInfo = request()->except('_token');

        $data->update($dataInfo);

        return redirect('admin')->with("menssage", "Cambios Realizados");
    }
}
