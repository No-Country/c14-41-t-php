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
            "name"=> "EMPANADAS",
        ]);
        Categories::create([
            "name"=> "PIZZAS",
        ]);
        Categories::create([
            "name"=> "HAMBURGUESAS",
        ]);
        Categories::create([
            "name"=> "PASTAS",
        ]);
        Categories::create([
            "name"=> "SANGUCHES",
        ]);
    }
}
