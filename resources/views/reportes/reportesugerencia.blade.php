@extends('layouts.estudiante')

@section('title','reportesugerencia')

@section('content')


<div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">

<div class="row">
      <ol class="breadcrumb">
        <li><a href="#">
          <em class="fa fa-comment"></em>
        </a></li>
        <li class="active">Sugerencias y Quejas</li>
      </ol>
    </div>
{!! Form::open(array('url'=>'reportesugerencia', 'method'=>'GET', 'autcomplete'=>'off'))!!}

<div class="col-sm-12">
          <label for="fecha_inicio">FECHA DESDE</label>
          <input type="date" class="form-control" name="fechaInicial" id="fechaInicial" value="<?php echo date("Y-m-d");?>">
    </div>
    <div class="col-sm-12">
          <label for="fecha_final">FECHA HASTA</label>
          <input type="date" class="form-control" name="fechaFinal" id="fechaFinal" value="<?php echo date("Y-m-d");?>">
    </div>


    </div>
    <div class="col-md-5 col-md-offset-3">
    <div class="modal-footer">

     <button type="submit" class="btn btn-success btn-lg btn-block">Imprimir Reporte</button>
    </div>
    </div>

<div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">
<div class="col-md-12">
  <div class="col-md-12" style="border-width: 1px 1px 0px 1px; border-style: solid; border-color: lightgrey;">
    <h3 style="text-align: center">Listado de Sugerencias y Quejas</h3>
<div class="col-md-12">
    <table class="table table-hover table-striped">
        <thead>
            <tr>
                <th>Id</th>
                <th>Descripción</th>
                <th>Id Usuario</th>
                <th>Fecha</th>
            </tr>
        </thead>
        <tbody>
           @foreach($reportesugerencia as $reposuge)
            <tr>
                <td>{{ $reposuge->id }}</td>
                <td>{{ $reposuge->descripcion }}</td>
                <td>{{ $reposuge->user_id }}</td>
                <td>{{ $reposuge->created_at}}</td>
            </tr>
            @endforeach
        </tbody>
    </table>
    </div>
{{Form::close()}}

<div class="col-md-12">
<form id="fompdf" method="GET" action="pdfreportesugerencia" >
<input type="hidden" name="fechaInicialpdf" id="fechaInicialpdf">
<input type="hidden" name="fechaFinalpdf" id="fechaFinalpdf">
<button type="submit" class="btn btn-success">Descargar Reporte en PDF</button>
</form>

<script type="text/javascript">

  $('#fechaInicial').on('change', function(e){
    var fechaInicial = $("input[name=fechaInicial]").val();
     $('#fechaInicialpdf').val(fechaInicial);
     var fechaFinal = $("input[name=fechaFinal]").val();
     $('#fechaFinalpdf').val(fechaFinal);
   });

    $('#fechafinal').on('change', function(e){
    var fechaInicial = $("input[name=fechaInicial]").val();
     $('#fechaInicialpdf').val(fechaInicial);
     var fechaFinal = $("input[name=fechaFinal]").val();
     $('#fechaFinalpdf').val(fechaFinal);
   });
</script>
<form id="fompdf" method="GET" action="excelreportesugerencia" >
<input type="hidden" name="fechaInicialexcel" id="fechaInicialexcel">
<input type="hidden" name="fechaFinalpdfexcel" id="fechaFinalexcel">
<button type="submit" class="btn btn-success">Descargar Reporte en Excel</button>
</form>

<script type="text/javascript">

  $('#fechaInicial').on('change', function(e){
    var fechaInicial = $("input[name=fechaInicial]").val();
     $('#fechaInicialexcel').val(fechaInicial);
     var fechaFinal = $("input[name=fechaFinal]").val();
     $('#fechaInicialexcel').val(fechaFinal);
   });

    $('#fechafinal').on('change', function(e){
    var fechaInicial = $("input[name=fechaInicial]").val();
     $('#fechaFinalpdfexcel').val(fechaInicial);
     var fechaFinal = $("input[name=fechaFinal]").val();
     $('#fechaFinalpdfexcel').val(fechaFinal);
   });
</script>
</div>
</div>

</div>
</div>
@endsection