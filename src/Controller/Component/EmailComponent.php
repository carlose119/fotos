<?php

namespace App\Controller\Component;

use Cake\Controller\Component;
use Cake\Mailer\Email;

class EmailComponent extends Component {
    
    public $correo_principal = '';
    public $subject = '';

    public function conectar_email() {
        /* configuramos las opciones para conectarnos al servidor
          smtp de Gmail
         */
        return Email::configTransport('mail', [
            'className' => 'Mail',
            // The following keys are used in SMTP transports
            'host' => 'localhost',
            'port' => 25,
            'timeout' => 30,
            'username' => '',
            'password' => '',
            'client' => null,
            'tls' => null,
            'url' => env('EMAIL_TRANSPORT_DEFAULT_URL', null),
        ]);
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
