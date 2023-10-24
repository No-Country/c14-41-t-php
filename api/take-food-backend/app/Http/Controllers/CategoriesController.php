<?php

namespace App\Http\Controllers;
use App\Http\Requests\CategoriesRequest;
use App\Models\Categories;
use Illuminate\Http\JsonResponse;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class CategoriesController extends Controller
{
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
    public function create(Request $request)
    {
        $categories = Categories::create($request->all());
        
        return response()->json([
            "success" => true,
            "message" => "Categoria creada exitosamente",
        ], 201);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     */
    public function show(Categories $categories)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Categories $categories)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Categories $categories)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Request $request, Categories $categories, $id)
    {
        //manera usando controlador y modelo, borra categoria escribiendo el nombre de la misma (en ruta se le borraria /{id})
        // $categories = Categories::eliminarPorNombre($request->name);   
        // return response()->json([
        //     "success" => true,
        //     "message" => "Categoria eliminada exitosamente",
        // ], 200);

        //otra mas simplificada, usando el id de la categoria
        Categories::find($id)->delete();
        
        return response()->json([
            "success" => true,
            "message" => "Categoria eliminada exitosamente",
        ], 200);
    }

    private static $rules = [
        'name' => 'required'
    ];
    
    private static $message = [
    ];

    public function categories(){
        $data['categories'] = Categories::all();
        return ($data);
    }

    public function categories_edit(Request $request, $id){
        $data = Categories::findOrFail($id);

        $this->validate($request, static::$rules, static::$message);

        //convierte el request en un array
        $dataInfo = request()->except('_token');

        $data->update($dataInfo);

        return redirect('admin')->with("menssage", "Cambios Realizados");
    }
}
