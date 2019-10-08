<?php

define('ROUTES', [
    '' => ['controller' => 'Page', 'action' => 'index'],
    'nosotros' => ['controller' => 'Page', 'action' => 'about'],
    'cartelera' => ['controller' => 'Cartelera', 'action' => 'index'],
    'obra' => ['controller' => 'Cartelera', 'action' => 'show'],
    'contacto' => ['controller' => 'Page', 'action' => 'contact']
]);