@component('mail::message')
# Solicitud de documentos UCLA

Usted ha solicitado los siguientes documentos:

Esto deberia ser la solicitud de documentos

<!-- @component('mail::button', ['url' => ''])
Button Text
@endcomponent
!-->

Gracias por usar nuestro servicio,<br>
{{ config('app.name') }}
@endcomponent
