@component('mail::message')
# Solicitud de documentos UCLA

Usted ha solicitado los siguientes documentos:

Esto deberia ser la solicitud de documentos

<!-- @component('mail::button', ['url' => ''])
Button Text
@endcomponent
!-->

<div >
<ul>
<!-- Por ahora un if para cada documento, si viene en el request (si es seleccionado por el usuario)
    se mostrará-->
@if($documentos->documento_1)
<li>
<H3>Notas Certificadas</H3> <H4> costo: </H4> <span>{{$documentos->documento_1}}</span>
</li>
@endif
@if($documentos->documento_2)
<li>
<H3>Certificado</H3> <H4> costo: </H4> <span>{{$documentos->documento_2}}</span>
</li>
@endif

</ul>
</div>

Gracias por usar nuestro servicio,<br>
{{ config('app.name') }}
@endcomponent
