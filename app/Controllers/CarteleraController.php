<?php

namespace App\Controllers;

use App\Libraries\View;
use Monolog\Logger;
use Monolog\Handler\StreamHandler;

class CarteleraController { 
    
    public function index()
    {
        /*$articles = Article::all();

        View::render('articles/index', compact('articles'));*/
        View::render('cartelera/index');
    }
}

