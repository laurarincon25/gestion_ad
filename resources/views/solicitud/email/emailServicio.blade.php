@component('mail::message')
# Pago de Solicitud de documentos UCLA

Usted ha hecho una solcitud de servicios :
@foreach ($servicios as $servicio)
<li>{{$servicio}}</li>
@endforeach
{{ config('app.name') }}
@endcomponent