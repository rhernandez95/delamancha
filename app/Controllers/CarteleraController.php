<?php

namespace App\Controllers;

use App\Libraries\View;
use Monolog\Logger;
use Monolog\Handler\StreamHandler;
use App\Models\Cartelera;

class CarteleraController { 
    
    public function index()
    {
        // $carteleras = Cartelera::all(); 
        $carteleras = Cartelera::join()

        fromQuery('SELECT obra.nombre, clasificacion.nombre FROM obras AS obra, clasificaciones AS clasificacion, carteleras;'); 
        /*->join('canalCliente','canalCliente.id','pedido.canal_id')
        ->select('pedido.id','pedido.despacho', 'pedido.precioTotal','pedido.propina','pedido.direccionPedido','canalCliente.nombre as origen')
        ->where([
            ['sitio_id','=',81],
            ['fechaPedido','=',"2018-07-26"],
            ['estado_id','=',3],
        ])->get();

        
        $usuarios = DB::table('users')->select( 'dados_pessoais.nome', 'dados_pessoais.dt_nascimento', 'dados_pessoais.sexo', 'dados_pessoais.telefone_fixo', 'dados_pessoais.celular', 'dados_pessoais.cep', 'dados_pessoais.endereco', 'dados_pessoais.numero', 'dados_pessoais.bairro', 'documentos.cpf', 'documentos.numero_cnh', 'documentos.rg', 'documentos.ctps', 'documentos.pis', 'documentos.titulo_eleitor') ->leftjoin('candidatos_vaga', function ($join) { $join->on('candidatos_vaga.id_user', '=', 'users.id_user'); }) ->leftjoin('dados_pessoais', function ($join) { $join->on('dados_pessoais.id_user', '=', 'users.id_user'); }) ->leftjoin('documentos', function ($join) { $join->on('documentos.id_user', '=', 'users.id_user'); }) ->orderBy('dados_pessoais.nome')
        */

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

