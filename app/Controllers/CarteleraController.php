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

