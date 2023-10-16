<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\Product;

class ProductsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run()
    {
        // Generar 25 productos y insertar en la base de datos
        for ($i = 1; $i <= 25; $i++) {
            Product::create([
                'name' => 'Producto ' . $i,
                'description' => 'Descripción del producto ' . $i,
                'price' => rand(10, 100), // Precio aleatorio entre 10 y 100
                'id_category' => rand(1, 5), // ID de categoría aleatorio entre 1 y 5
                'image' => 'public/img/' . $i . '.jpg', // Ruta de la imagen del producto
                'cooking_time' => rand(5, 60), // Tiempo de cocción aleatorio entre 5 y 60 minutos
                'availability' => (bool) rand(0, 1), // Disponibilidad aleatoria (0 o 1)
            ]);
        }
    }
}
