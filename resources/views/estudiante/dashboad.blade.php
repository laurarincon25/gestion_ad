@extends('layouts.estudiante')

@section('content')

<!--BARRA PANEL DE SOLICITUD-->
		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header">Panel de Solicitud</h1>
			</div>
		</div>
		
		
			<div class="panel panel-container" >
			<div class="row" >
				<div class="col-xs-6" style="margin: 0px 0px 0px 10px"> 	<p class="text-justify">Ofrecemos nuestros servicios de solicitud de documentos academicos, consultar los estados de la solicitudes realizadas, solicitar programas de las diferentes carreras, sugerencias y quejas; con diseños atractivos y altos estándares de calidad, para un alcance mayor de los procesos fundamentales de la Direcciòn Administrativa.</p>
				</div>
				<div class="col-xs-4">
					<div class="img-content">
						<img class="img img-responsive img-small" height="300px"  src="{{ asset('img/background-pacfin5.jpg') }}" alt="image">
					</div>
					
				</div>
			</div>
			
		</div>	
		
		
		<div class="panel panel-container">
			<div class="row">
				<!--SOLICITUD DE DOCUMENTOS-->
				<div class="col-xs-6 col-md-3 col-lg-3 no-padding">
					<div class="panel panel-teal panel-widget border-right">
						<br>
						<div class="row no-padding"><em class="fa fa-xl fa fa-folder-o color-blue"></em>
							<br>
							<br>
							<div class="text-muted">Documentos Academicos</div>
						</div>
					</div>
				</div>
				<!--FIN DE SOLICITUD DE DOCUMENTOS-->
				<!--ESTADO DE LA SOLICITUD-->
				<div class="col-xs-6 col-md-3 col-lg-3 no-padding">
					<div class="panel panel-blue panel-widget border-right">
						<br>
						<div class="row no-padding"><em class="fa fa-xl fa-bar-chart color-orange"></em>
							<br>
							<br>
							<div class="text-muted">Estado de Solicitud</div>
						</div>
					</div>
				</div>
				<!--FIN ESTADO DE LA SOLICITUD-->
				<!--SOLICITUD DE PROGRAMAS-->
				<div class="col-xs-6 col-md-3 col-lg-3 no-padding">
					<div class="panel panel-orange panel-widget border-right">
						<br>
						<div class="row no-padding"><em class="fa fa-xl fa fa-shopping-cart color-teal"></em>
							<br>
							<br>
							<div class="text-muted">Programas</div>
						</div>
					</div>
				</div>
				<!--FIN SOLICITUD PROGRAMA-->
				<!--SUGERENCIAS Y QUEJAS-->
				<div class="col-xs-6 col-md-3 col-lg-3 no-padding">
					<div class="panel panel-blue panel-widget border-right">
						<br>
						<div class="row no-padding"><em class="fa fa-xl fa-comments color-red"></em>
							<br>
							<br>
							<div class="text-muted">Sugerencias &amp;  Quejas</div>
						</div>
					</div>
				</div>
				<!--FIN SUGERENCIAS Y QUEJAS-->
			</div>
		</div>
		<!--FIN BARRA PANEL DE SOLICITUD-->

		@endsection