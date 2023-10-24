<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\Categories;

class CategoriesSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        Categories::create([
                "name"=> "Hamburguesas",
        ]);
        Categories::create([
            "name"=> "Pizzas",
        ]);
        Categories::create([
            "name"=> "Empanadas",
        ]);
        Categories::create([
            "name"=> "Lomitos",
        ]);
        Categories::create([
            "name"=> "Papas",
        ]);
    }
}
