<?php

namespace App\Http\Controllers;
use App\Http\Requests\UserRequest;
use App\Models\User;

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

    public function createUser(UserRequest $request)
    {
        $user = User::create($request->all());
        return response()->json([
            "success" => true,
            "message" => "Usuario creado exitosamente",
            'token' => $user->createToken("API TOKEN")->plainTextToken
        ], 201);
    }

    public function loginUser(UserRequest $request)
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
            'token' => $user->createToken("API TOKEN")->plainTextToken
        ], 200);


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
