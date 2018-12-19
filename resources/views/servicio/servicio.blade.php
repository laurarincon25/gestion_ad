@extends('layouts.estudiante')

@section('content')

<div class="container">
	<div class="form-group">
	    <label for="inputdefault">Nombre del solicitante</label>
	    <input class="form-control" id="inputdefault" type="text">
	</div>
	 <div class="form-group">
	    <label for="inputdefault">Departamento</label>
	    <input class="form-control" id="inputdefault" type="text">
	 </div>
	<div class="container">
		  <h2>Servicio requerido</h2>            
		  <table class="table">
		    <thead>
	      <tr>
	        <th>Eléctricidad</th>
	        <th>Refrigeración</th>
	        <th>Insfraestructura</th>
	      </tr>
	    </thead>
	    <tbody>
	      <tr>
			<div class="checkbox">
			  <label><input type="checkbox" value="">Falla de iluminación</label>
			</div>
			<div class="checkbox">
			  <label><input type="checkbox" value="">Falla de toma corriente</label>
			</div>
			<div class="checkbox">
			  <label><input type="checkbox" value="" >Corto circuíto</label>
			</div>
			<div class="checkbox">
			  <label><input type="checkbox" value="" >Falla de tablero eléctrico</label>
			</div>
			<div class="checkbox">
			  <label><input type="checkbox" value="" >Instalación de breacker</label>
			</div>
			<div class="checkbox">
			  <label><input type="checkbox" value="" >Instalación de cableado</label>
			</div>
	      </tr>
	      <tr>
			<div class="checkbox">
			  <label><input type="checkbox" value="">Falla de A/A de ventana</label>
			</div>
			<div class="checkbox">
			  <label><input type="checkbox" value="">Falla de A/A central</label>
			</div>
			<div class="checkbox">
			  <label><input type="checkbox" value="" >Mantenimiento de A/A</label>
			</div>
			<div class="checkbox">
			  <label><input type="checkbox" value="" >Instalación de A/A</label>
			</div>
			<div class="checkbox">
			  <label><input type="checkbox" value="" >Bote de agua de A/A</label>
			</div>
			<div class="checkbox">
			  <label><input type="checkbox" value="" >Reparación de filtro de agua</label>
			</div>
	      </tr>
	      <tr>
			<div class="checkbox">
			  <label><input type="checkbox" value="">Reparación de baño</label>
			</div>
			<div class="checkbox">
			  <label><input type="checkbox" value="">Reparación de cerradura</label>
			</div>
			<div class="checkbox">
			  <label><input type="checkbox" value="" >Pintura</label>
			</div>
			<div class="checkbox">
			  <label><input type="checkbox" value="" >Albañilería</label>
			</div>
			<div class="checkbox">
			  <label><input type="checkbox" value="" >Mudanza</label>
			</div>
			<div class="checkbox">
			  <label><input type="checkbox" value="" >Herrería</label>
			</div>
	      </tr>
	    </tbody>
	  </table>
	</div>

		<div class="form-group">
		  <label for="comment">Observaciones</label>
		  <textarea class="form-control" rows="5" id="comment"></textarea>
		</div>

</div>

@endsection