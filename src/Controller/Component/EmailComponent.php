<?php

namespace App\Controller\Component;

use Cake\Controller\Component;
use Cake\Mailer\Email;

class EmailComponent extends Component {
    
    public $correo_principal = 'raava30000@gmail.com';
    public $subject = 'raava3000';

    public function conectar_email() {
        /* configuramos las opciones para conectarnos al servidor
          smtp de Gmail
         */
        return Email::configTransport('mail', [
            'host' => 'ssl://smtp.gmail.com', //servidor smtp con encriptacion ssl
            'port' => 465, //puerto de conexion
            //'tls' => true, //true en caso de usar encriptacion tls
            //cuenta de correo gmail completa desde donde enviaran el correo
            'username' => 'raava30000@gmail.com',
            'password' => '30000raava', //contrasena
            //Establecemos que vamos a utilizar el envio de correo por smtp
            'className' => 'Smtp',
            //evitar verificacion de certificado ssl ---IMPORTANTE---
            'context' => [
                'ssl' => [
                    'verify_peer' => false,
                    'verify_peer_name' => false,
                    'allow_self_signed' => true
                ]
            ]
        ]);
        
        /*return Email::configTransport('mail', [
            'className' => 'Mail',
            // The following keys are used in SMTP transports
            'host' => 'localhost',
            'port' => 25,
            'timeout' => 30,
            'username' => 'paqueton@paqueton.pe',
            'password' => 'paqueton2016',
            'client' => null,
            'tls' => null,
            'url' => env('EMAIL_TRANSPORT_DEFAULT_URL', null),
        ]);*/
        /* fin configuracion de smtp */
    }
    
    public function enviar($email = null, $subject = null, $viewVars = array(), $template = 'default') {
        $this->conectar_email();

        $correo = new Email(); //instancia de correo
        $correo
                ->setTransport('mail') //nombre del configTrasnport que acabamos de configurar
                ->setTemplate($template) //plantilla a utilizar
                ->setEmailFormat('html') //formato de correo
                ->setTo($email) //correo para
                ->setFrom($this->correo_principal) //correo de
                ->setSubject($this->subject . ': ' . $subject) //asunto
                ->setViewVars($viewVars);
        if ($correo->send()) {
            return true;
        }
        return false;
    }

}
