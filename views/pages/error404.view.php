<?php
 $title = "Error404";
?>
<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>404 - De la Mancha</title>

    <link rel="stylesheet" href="css/bootstrap.css">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

	<script src="js/bootstrap.js"></script>
    <script src="js/jquery.js"></script>

    <style type="text/css">
    	body { 
    		background-image: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABoAAAAaCAYAAACpSkzOAAAABHNCSVQICAgIfAhkiAAAAAlwSFlzAAALEgAACxIB0t1+/AAAABZ0RVh0Q3JlYXRpb24gVGltZQAxMC8yOS8xMiKqq3kAAAAcdEVYdFNvZnR3YXJlAEFkb2JlIEZpcmV3b3JrcyBDUzVxteM2AAABHklEQVRIib2Vyw6EIAxFW5idr///Qx9sfG3pLEyJ3tAwi5EmBqRo7vHawiEEERHS6x7MTMxMVv6+z3tPMUYSkfTM/R0fEaG2bbMv+Gc4nZzn+dN4HAcREa3r+hi3bcuu68jLskhVIlW073tWaYlQ9+F9IpqmSfq+fwskhdO/AwmUTJXrOuaRQNeRkOd5lq7rXmS5InmERKoER/QMvUAPlZDHcZRhGN4CSeGY+aHMqgcks5RrHv/eeh455x5KrMq2yHQdibDO6ncG/KZWL7M8xDyS1/MIO0NJqdULLS81X6/X6aR0nqBSJcPeZnlZrzN477NKURn2Nus8sjzmEII0TfMiyxUuxphVWjpJkbx0btUnshRihVv70Bv8ItXq6Asoi/ZiCbU6YgAAAABJRU5ErkJggg==);
    	}

		.error-template {padding: 40px 15px;text-align: center;}
		.error-actions {margin-top:15px;margin-bottom:15px;}
		.error-actions .btn { margin-right:10px; }

	</style>

</head>

<body>
	<div class="container">
    	<div class="row">
        	<div class="col-md-12">
            	<div class="error-template">
                	<h1>
                    	Oops!
                    </h1>
                	
                	<h2>
                    	404 No Encontrada
                    </h2>
                
                	<div class="error-details">
                    	Lo sentimos, ha ocurrido un error, Pagina requeria no econtrada!
                	</div>
                
                	<div class="error-actions">
                    	<a href="<?= PUBLIC_PATH ?>/" class="btn btn-success btn-lg">
                        	<span class="fa fa-home"></span> Ir a Inicio 
                    	</a>
                        
                    	<a href="https://wa.me/527561055248" class="btn btn-danger btn-lg my-2">
                        	<span class="fa fa-whatsapp"></span> Contactar a Soporte 
                    	</a>

                        <a href="mailto:squalo_hdez@live.com?subject = Feedback&body = Message" class="btn btn-danger btn-lg">
                            <span class="fa fa-envelope"></span> Contactar a Soporte 
                        </a>
                	</div>
            	</div>
        	</div>
    	</div>
	</div>
</body>
</html>