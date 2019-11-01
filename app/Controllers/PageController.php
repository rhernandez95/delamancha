<?php

namespace App\Controllers;

use App\Libraries\Mail;
use App\Libraries\View;
use Gregwar\Captcha\CaptchaBuilder;
use Monolog\Logger;
use Monolog\Handler\StreamHandler;

class PageController { 
    
	public function index()
	{
        //Crear un archivo de log (app.log)
        $logHandler = new StreamHandler(APP_PATH.'/logs/delamancha.log');

        // Inicializa el control de logs
        $logger = new Logger('PageController'); 

        //Definir el modo de manejar el log (con el archivo definido antes)
        $logger->pushHandler($logHandler);
 
		View::render('pages/index');

        /*Grabar entras de log, repertir esta linea cada vez que
        necesitamos agregar una entrada al log*/
        $logger->info('Pagina de inicio cargada correctamente');   
	}

    public function indexDetalle()
    {
        View::render('pages/partials/index_detalle');        
    }

	public function about()
	{
		View::render('pages/nosotros');
	}

	public function contact()
    {
        if ($_SERVER['REQUEST_METHOD'] == 'POST') {
            $name = trim($_POST['name']);
            $email = trim($_POST['email']);
            $message = htmlentities(trim($_POST['message']));
            $captchaInput = trim($_POST['captcha']);
            $inputs = compact('name', 'email', 'message');

            if ($name == '') {
                $this->contactWithError('El campo Nombre es obligatorio', $inputs);

            } elseif ($email == '') {
                $this->contactWithError('El campo Email es obligatorio', $inputs);

            } elseif ($message == '') {
                $this->contactWithError('El campo Mensaje es obligatorio', $inputs);

            } elseif ($captchaInput != $_SESSION['phrase']) {
                $this->contactWithError('El texto no coincide con la imagen', $inputs);
            }

            $mail = new Mail;

            if (!$mail->validateAddress($email)) {
                $this->contactWithError('El email ingresado no es válido', $inputs);

            }

            //Definimos el remitente (dirección y, opcionalmente, nombre)
            $mail->setFrom($email,$name);

            //Y, ahora sí, definimos el destinatario (dirección y, opcionalmente, nombre)
            $mail->addAddress('ramon_hernandezr@stoconsulting.com');
            $mail->addCC('ramonhdez3195@gmail.com');
            $mail->addReplyTo($email);
          

            $mail->isHTML(true);

            //Definimos el tema del email
            $mail->Subject = "De la Mancha: {$name} <{$email}>";

            //Para enviar un correo formateado en HTML lo cargamos con la siguiente función. Si no, puedes meterle directamente una cadena de texto.
            $mail->Body = nl2br($message);

            //Enviamos el correo
            if($mail->send()) {
                View::render('pages/contacto');
                $mail->ClearAddresses();
            } else {
                $this->contactWithError('El mensaje no pudo ser enviado.');
                    //Error: ' . $mail->ErrorInfo, $inputs
            }

        } else {
            $captcha = new CaptchaBuilder;
            $captcha->build();
            $_SESSION['phrase'] = $captcha->getPhrase();
            View::render('pages/contacto', compact('captcha'));
            View::render('pages/contacto');
        }

    }

    private function contactWithError($errorMessage, array $variables = [])
    {
        $captcha = new CaptchaBuilder;
        $captcha->build();
        $_SESSION['phrase'] = $captcha->getPhrase();

        $variables['captcha'] = $captcha;
        $variables['errorMessage'] = $errorMessage;

        View::render('pages/contacto', $variables);
        exit;
    }
}

