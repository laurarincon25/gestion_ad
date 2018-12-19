@component('mail::message')
# Solicitud de documentos UCLA

Usted ha solicitado los siguientes documentos:


<!-- @component('mail::button', ['url' => ''])
Button Text
@endcomponent
!-->

<div >
<ul class="list-group">
<!-- Por ahora un if para cada documento, si viene en el request (si es seleccionado por el usuario)
    se mostrará-->
@if($documentos->documento_1)
<li class="list-group-item">
<H3>Notas egresado</H3> <H4> costo: </H4> <span>{{$documentos->documento_1}}</span>
</li>
@endif
@if($documentos->documento_2)
<li class="list-group-item">
<H3>Puesto y rango</H3> <H4> costo: </H4> <span>{{$documentos->documento_2}}</span>
</li>
@endif
@if($documentos->documento_3)
<li class="list-group-item">
<H3>Buena conducta egresado</H3> <H4> costo: </H4> <span>{{$documentos->documento_3}}</span>
</li>
@endif
@if($documentos->documento_4)
<li class="list-group-item">
<H3>Constancia especial</H3> <H4> costo: </H4> <span>{{$documentos->documento_4}}</span>
</li>
@endif
@if($documentos->documento_5)
<li class="list-group-item">
<H3>Pensum</H3> <H4> costo: </H4> <span>{{$documentos->documento_5}}</span>
</li>
@endif
@if($documentos->documento_6)
<li class="list-group-item">
<H3>Carga horaria</H3> <H4> costo: </H4> <span>{{$documentos->documento_6}}</span>
</li>
@endif
@if($documentos->documento_7)
<li class="list-group-item">
<H3>Modalidad de estudio</H3> <H4> costo: </H4> <span>{{$documentos->documento_7}}</span>
</li>
@endif

</ul>
</div>

Gracias por usar nuestro servicio,<br>
{{ config('app.name') }}
@endcomponent
