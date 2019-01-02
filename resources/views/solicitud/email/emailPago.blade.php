@component('mail::message')
# Pago de Solicitud de documentos UCLA

Usted ha hecho un pago de documentos:

<li>Codigo del pago: {{ $uuid->uuid }}</li>

<li>Codigo de la solicitud pagada: {{ $uuidSoli->uuidSoli }} </li>




{{ config('app.name') }}
@endcomponent