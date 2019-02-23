<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Mail\Mailable;
use Illuminate\Http\Request;
use Illuminate\Queue\SerializesModels;
use Illuminate\Contracts\Queue\ShouldQueue;
use App\SolicitudServicio;

class EmailServicio extends Mailable
{
    use Queueable, SerializesModels;

    /**
     * Create a new message instance.
     *
     * @return void
     */
    public $user;
    public $solicitudes;
    public $solicitud;
    public $servicios;

    public function __construct(Request $request)
    {
          // Recupera los documentos y el id del usuario
          $this->user = $request->user;
          // Obtiene todas las solicitudes del usuario
          $this->solicitudes = SolicitudServicio::all()->where("user_id",$this->user);
          // obtiene la ultima solicitud del usuario
          $this->solicitud = $this->solicitudes->last();
          
          $this->servicios = $request->except('_token','user','email');

         
    }

    /**
     * Build the message.
     *
     * @return $this
     */
    public function build()
    {
        return $this->from('gestionaducla@gmail.com')
                    ->markdown('solicitud.email.emailServicio');
    }
}
