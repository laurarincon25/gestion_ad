<?php

namespace App\Mail;
use Webpatser\Uuid\Uuid;
use Illuminate\Bus\Queueable;
use Illuminate\Mail\Mailable;
use Illuminate\Http\Request;
use Illuminate\Queue\SerializesModels;
use Illuminate\Contracts\Queue\ShouldQueue;
use App\Pago;
use App\User;

class EmailPago extends Mailable
{
    use Queueable, SerializesModels;

    /**
     * Create a new message instance.
     *
     * @return void
     */

    public $pago;
    public $uuidSoli;
     public $uuid;


    public function __construct(Request $request)
    {

        $this->pago=Pago::all();
        $this->uuid= $this->pago->last();
        $this->uuidSoli=$this->pago->last();
    }

    /**
     * Build the message.
     *
     * @return $this
     */
    public function build()
    {
        return $this->from('gestionaducla@gmail.com')
                    ->markdown('solicitud.email.emailPago');
    }
}