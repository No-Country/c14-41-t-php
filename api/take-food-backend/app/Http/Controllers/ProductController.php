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

    public function edit(Request $request, $id){
        $product = Product::find($id);
        $product->name = $request->name;
        $product->description = $request->description;
        $product->price = $request->price;
        $product->id_category = $request->id_category;
        $product->image = $request->image;
        $product->cooking_time = $request->cooking_time;
        $product->availability = $request->availability;
        $product->save();

        return response()->json([
            "success" => true,
        ], 200);
    }
}
