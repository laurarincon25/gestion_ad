@component('mail::message')
# Solicitud de servicios UCLA

Usted ha hecho una solicitud de servicios :

@foreach ($servicios as $servicio)

@if($servicio != null)
@if(key($servicios) == 'deps')
<li><h3>Departamento:</h3>{{$servicio}}</li>
@elseif(key($servicios) == 'servs')
<li><h3>Servicio:</h3>{{$servicio}}</li>
@else
@if(key($servicios) == 'observacion')
<li><h3>Observación</h3>{{$servicio}}</li>
@else
<li><h3>{{str_replace( '_' , ' ' , key($servicios))}}</h3>{{$servicio}}</li>
@endif

@endif

@endif
<span style="display: none">{{next($servicios)}}</span>

@endforeach

Gracias por usar nuestro servicio<br>
{{ config('app.name') }}
@endcomponent