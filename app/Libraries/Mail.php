<?php

namespace App\Libraries;

use PHPMailer\PHPMailer\PHPMailer;

class Mail extends PHPMailer
{   
    public function __construct($exceptions = false)
    {
        parent::__construct($exceptions);

        //Definir que vamos a usar SMTP
        $this->isSMTP();

        $this->Mailer = DLM_MAIL['Mailer'];
        $this->CharSet = DLM_MAIL['CharSet'];
        
        //Esto es para activar el modo depuración. En entorno de pruebas lo mejor es 2, en producción siempre 0
        // 0 = off (producción)
        // 1 = client messages
        // 2 = client and server messages
        $this->SMTPDebug = DLM_MAIL['SMTPDebug'];

        //$this->Debugoutput = new myPsr3Logger;

        //Ahora definimos gmail como servidor que aloja nuestro SMTP
        //$this->Host = 'smtp.gmail.com';
        $this->Host = DLM_MAIL['Host'];
        
        //El puerto será el 587 ya que usamos encriptación TLS
        $this->Port = DLM_MAIL['Port'];
        
        //Definmos la seguridad como TLS
        $this->SMTPSecure = DLM_MAIL['SMTPSecure'];
        
        //Tenemos que usar gmail autenticados, así que esto a TRUE
        //$this->SMTPAuth = true;
        $this->SMTPAuth = DLM_MAIL['SMTPAuth'];
        
        //Definimos la cuenta que vamos a usar. Dirección completa de la misma
        $this->Username = DLM_MAIL['Username'];
        
        //Introducimos nuestra contraseña de gmail
        $this->Password = DLM_MAIL['Password'];
       
        $this->Timeout = DLM_MAIL['Timeout'];

        /* Disable some SSL checks. */
        $this->SMTPOptions = array(
            'ssl' => array(
                'verify_peer' => false,
                'verify_peer_name' => false,
                'allow_self_signed' => true
            )
        );
    }
}