@extends('layouts.estudiante')
@section('title','estadoserv')
@section('content')


<head>
<style>
table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

td, th {
  border: 2px solid #000000;
  text-align: left;
  padding: 8px;
}

th{
background-color: #66ccff;
text-align: center;
}

tr:nth-child(even) {
  background-color: #dddddd;
}
</style>
</head>

<div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">


		<div class="row">
			<ol class="breadcrumb">
				<li><a href="#">
					<em class="fa fa-bar-chart"></em>
				</a></li>
				<li class="active">Estado de la solicitud</li>
			</ol>
		</div>
                
        <div class="col-md-12" style="border-width: 1px 1px 0px 1px; border-style: solid; border-color: lightgrey; background: #f1f3f6;">
  
               <h2 style="text-align: center">Tabla de solicitudes de servicios <p><small>Podras observar los estados de tus solicitudes realizadas</small></p></h2>

             <table>
                 <tr>
                    <th>Servicio</th>
                    <th>Tipo de servicio</th>
                    <th>Fecha</th>
                    <th>Estado</th>
                 </tr>
                 <tr>
                    <td>Electricidad</td>
                    <td>Falla de Iluminacion</td>
                    <td>2019-02-12</td>
                    <td>Pendiente</td>
                 </tr>
                 <tr>
                    <td>Refrigeracion</td>
                    <td>Falla de A/A de ventana</td>
                    <td>2019-02-10</td>
                    <td>Aprobada</td>
                 </tr>
                 <tr>
                    <td>Infraestructura</td>
                    <td>Reparacion de baño</td>
                    <td>2019-02-08</td>
                    <td>Rechazada</td>
                 </tr>

              </table>

          </div>

      </div>



    @endsection