<?php

namespace App\Http\Controllers;
use App\Http\Requests\UserRequest;
use App\Models\User;

use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class UserController extends Controller
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
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(UserRequest $request)
    {
        $user = User::create($request->all());

        return response()->json([
            "success" => true,
            "message" => "Usuario creado exitosamente",
            'token' => $user->createToken("API TOKEN")->plainTextToken
        ], 201);
    }

    public function createUser(Request $request)
    {
        $user = User::create($request->all());

        return response()->json([
                'success' => true,
                'message' => "Usuario creado exitosamente",
                'name' => $user->name,
                'lastName' => $user->last_name,
                'rol'=> 0,
                'token' => $user->createToken("API TOKEN")->plainTextToken
                ]);
    }

    public function loginUser(Request $request)
    {
        if(!Auth::attempt($request->only(['email', 'password'])))
        {
            return response()->json([
                'status' =>false,
                'message' => 'email y/o contraseña incorrectos'
            ], 401);
        }

        $user = User::where('email', $request->email)->first();

        return response()->json([
            'status' => true,
            'message' => 'Usuario logeado correctamente',
            'name' => $user->name,
            'lastName' => $user->last_name,
            'rol'=> $user->rol,
            'token' => $user->createToken("API TOKEN")->plainTextToken,
        ], 200);


    }

    public function editUser(Request $request)
    {
        $user = $request->user();
        $user->name = $request->name;
        $user->last_name = $request->last_name;
        $user->phone = $request->phone;
        $user->city = $request->city;
        $user->street = $request->street;
        $user->street_number = $request->street_number;
        $user->save();

        return response()->json([
        'success' => true,
        ],200);
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        //
    }
}
