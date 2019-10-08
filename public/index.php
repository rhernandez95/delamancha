 <?php

require_once '../config/app.php';
/** Se descomenta la linea de abajo para que funcione en el servidor online
	y se comenta la de arriba. **/
//require_once 'config/app.php';

use App\Libraries\Route;
use App\Libraries\View;



$url = $_GET['url'] ?? '';
$route = ROUTES[$url] ?? false;

if ($route) {
    $controller = $route['controller'];
    $action = $route['action'];

    Route::any($controller, $action);

} else {
    header('HTTP/1.0 404 Not Found');
    View::render('pages/error404');
}
 

