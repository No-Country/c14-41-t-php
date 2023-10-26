<?php

namespace App\Http\Controllers;

use App\Models\Order;
use App\Models\Order_Product;
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
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     */
    public function show(Order $order)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Order $order)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Order $order)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Order $order)
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
        // dd($request);
        // Usar una transacción para asegurar que ambas inserciones sean exitosas o ninguna se realice.
        return \DB::transaction(function () use ($request)) {

            // Crear una nueva orden en la tabla 'orden'
            $orden = Order::create([
                'id_client' => $request->id_client,
                'total' => $request->total,
                'observation' => $request->observation,
                'status' => 'I'
            ]);

            // Insertar productos relacionados en la tabla 'order_product'
            foreach ($request->productos as $producto) {
                Order_Product::create([
                    'id_order' => $orden->id,
                    'id_product' => $producto['id_product'],
                    'quantity' => $producto['quantity']
                ]);
            }

            // Devolver una respuesta de éxito
            return response()->json(['message' => 'Orden creada exitosamente'], 201);

        }, 2); // El segundo argumento de la transacción (2) indica el nivel de aislamiento.
    }
}
