<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    use HasFactory;

    protected $fillable = ['name', 'description', 'price', 'id_category', 'image', 'cooking_time', 'availability'];

    public function Categories()
    {
        return $this->belongsTo(Categories::class, 'id_category');
    }

    public function getNameCategoriesAttribute()
    {
        return $this->Categories->name;
    }
}
