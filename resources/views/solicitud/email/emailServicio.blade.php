@component('mail::message')
# Solicitud de servicios UCLA

Usted ha hecho una solicitud de servicios :

@foreach ($servicios as $servicio)
<li>{{$servicio}}</li>
@endforeach

Gracias por usar nuestro servicio<br>
{{ config('app.name') }}
@endcomponent