<?php

namespace App\Http\Controllers;

use App\Models\Order;
use App\Models\Order_Product;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;

class OrderController extends Controller
{
    private static $rules = [
        'id_cliente' => 'required|integer',
        'total' => 'required|integer',
        'observation' => 'string'
    ];
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        //
    }

    /**ejemplo de datos a recibir
        {
            "id_client": 1,
            "total": 100,
            "observation": "Orden de prueba",
            "productos": [
                {
                    "id_product": 3,
                    "quantity": 2
                },
                {
                    "id_product": 2,
                    "quantity": 3
                },
                {
                    "id_product": 1,
                    "quantity": 1
                }
            ]
        }
        **/
    public function crearOrden(Request $request)
    {
        // Validar los datos del carrito, como id_client, total, observation y productos.
        
        $request->validate([
            'id_client' => 'required',
            'total' => 'required',
            'observation' => 'nullable',
            'productos' => 'required|array|min:1',
            'productos.*.id_product' => 'required|exists:products,id',
            'productos.*.quantity' => 'required|integer|min:1'
        ]);
        // Usar una transacción para asegurar que ambas inserciones sean exitosas o ninguna se realice.
        DB::beginTransaction();
        try {
            // Crear una nueva orden en la tabla 'orden'
            $orden = Order::create([
                'id_client' => $request->id_client,
                'total' => $request->total,
                'observation' => $request->observation,
                'status' => 'I'
            ]);
            //Insertar productos relacionados en la tabla 'order_product'
            foreach ($request->productos as $producto) {
                Order_Product::create([
                    'id_order' => $orden->id,
                    'id_product' => $producto['id_product'],
                    'quantity' => $producto['quantity']
                ]);
            }
            DB::commit();

            // Devolver una respuesta de éxito
            return response()->json(['message' => 'Orden creada exitosamente'], 201);
        } 
        catch (\Exception $e) {
            DB::rollback();
            return response()->json(['error' => $e->getMessage()], 500);
        }
    }
}
