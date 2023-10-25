<?php

namespace App\Http\Controllers;

use App\Models\Product;
use App\Models\Categories;
use Illuminate\Http\Request;

class ProductController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        // //
        $data['products'] = Product::all()->except('categories');

        // $data['products'] = Categories::pluck('name');

        foreach ($data['products'] as $key => $value) {
            $data['products'][$key]->id_category = $value->nameCategories;
        }

        // $data['products'] = Product::find(1)->nameCategories;

        return $data;
    }

    public function store(Request $request)
    {
        $product = Product::create($request->all());
        return response()->json([
            "success" => true,
            "message" => "Producto creado exitosamente"
            ]);
}

    public function destroy($id)
    {
        Product::find($id)->delete();
        return response()->json([
            "success" => true,
            "message" => "Producto eliminado con exito"
        ], 200);
    }
}
