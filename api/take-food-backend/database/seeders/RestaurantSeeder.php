<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\restaurant;

class RestaurantSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        Restaurant::create([
            "email" => "info@takefood.com",
            "name" => "Take Food",
            "direction" => "223 Baker street",
            "phone" => 011123456,
            "description" => "casa de comidas"
        ]);
    }
}
