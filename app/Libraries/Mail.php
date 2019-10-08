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

        $this->Mailer = "smtp";
        $this->CharSet = 'UTF-8';
        
        //Esto es para activar el modo depuración. En entorno de pruebas lo mejor es 2, en producción siempre 0
        // 0 = off (producción)
        // 1 = client messages
        // 2 = client and server messages
        $this->SMTPDebug = 2;

        //$this->Debugoutput = new myPsr3Logger;

        //Ahora definimos gmail como servidor que aloja nuestro SMTP
        $this->Host = 'smtp.gmail.com';
        //$this->Host = 'smtp-mail.outlook.com';
        
        //El puerto será el 587 ya que usamos encriptación TLS
        $this->Port = 587;
        
        //Definmos la seguridad como TLS
        $this->SMTPSecure = 'tls';
        
        //Tenemos que usar gmail autenticados, así que esto a TRUE
        //$this->SMTPAuth = true;
        $this->SMTPAuth = true;
        
        //Definimos la cuenta que vamos a usar. Dirección completa de la misma
        $this->Username = "ramonhdez3195@gmail.com";
        
        //Introducimos nuestra contraseña de gmail
        $this->Password = "rhernandez95";
       
        $this->Timeout=30;

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