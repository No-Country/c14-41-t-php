<?php

namespace App\Http\Controllers;

use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Routing\Controller as BaseController;

class Controller extends BaseController
{
    use AuthorizesRequests, ValidatesRequests;

    //texto en mayusculas
    protected function normalizeToUpper($string)
    {
        return strtoupper($string);
    }

    //texto sin espacios innecesarios
    protected function trimSpaces($string)
    {
        return trim($string);
    }

    //primera letra en mayusculas
    protected function capitalizeFirstLetter($string)
    {
        return ucfirst($string);
    }
}
