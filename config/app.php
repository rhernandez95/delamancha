<?php

session_start();

define('APP_PATH', __DIR__.'/..');

//define('PUBLIC_PATH', 'http://delamancha.test');
/** Se descomenta la linea de abajo para que funcione en el servidor online y se comenta la de arriba. **/
	
define('PUBLIC_PATH', 'https://gtdelamancha.000webhostapp.com');	

// Composer
require_once APP_PATH . '/vendor/autoload.php';

// Variables de entorno
require_once 'env.php';

// Base de datos
require_once 'database.php';

// Rutas de la aplicación
require_once 'routes.php';