<?php

namespace App\Controllers;

use App\Libraries\View;
use Monolog\Logger;
use Monolog\Handler\StreamHandler;
use App\Models\Cartelera;

class CarteleraController { 
    
    public function index()
    {
        $carteleras = Cartelera::all();

        View::render('cartelera/index', compact('carteleras'));
    }

    public function show() {

       /* $id = $_GET['id'] ?? '';
        $article = Article::find($id);

        if (!empty($article)) {
            View::render('articles/show', compact('article'));

        } else {
            $this->index();
        }*/
        
    	View::render('cartelera/partials/cartelera_detalle');
    }

}

