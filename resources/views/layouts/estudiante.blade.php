<!DOCTYPE html>
<html lang="{{ app()->getLocale() }}">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="csrf-token" content="{{ csrf_token() }}">
	<title>{{ config('app.name', 'Admgestion') }}</title>


	<!-- Styles -->
    <link href="{{ asset('css/bootstrap.min.css') }}" rel="stylesheet">
    <link href="{{ asset('css/perfilestudiante.css') }}" rel="stylesheet">
    <link href="{{ asset('css/font-awesome.min.css') }}" rel="stylesheet">


<!--Custom Font-->
	<link href="https://fonts.googleapis.com/css?family=Montserrat:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">
</head>

<body>
	<!--BARRA DE INICIO-->
	<nav class="navbar navbar-custom navbar-fixed-top" role="navigation">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#sidebar-collapse"><span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span></button>
				<a class="navbar-brand" href="{{ url('/') }}"><span>Gestion</span>AD</a>
				<ul class="nav navbar-top-links navbar-right">

				</ul>
			</div>
		</div>
	</nav>
	<!--FIN DE LA BARRA DE INICIO-->

    <!--BARRA HORIZONTAL DE OPCIONES-->
	<div id="sidebar-collapse" class="col-sm-3 col-lg-2 sidebar">
		<!--PRIMER CUADRO EN DND ESTA LA FOTO Y NOMBRE DEL USUARIO-->



		<div class="profile-sidebar">
			<div class="profile-userpic">

				<img style="height: 200px; width: 200px; background-color: #EFEFEF;margin: 5px;"class="card-img-top rounded-circle mx-auto d-block" src="{{url('storage/'.auth()->user()->avatar)}}"  alt="{{ Auth::user()->name }}">
			</div>


			<div class="profile-usertitle">
				<div class="profile-usertitle-name">{{ Auth::user()->name }}</div>
				<div class="profile-usertitle-status"><span class="indicator label-success"></span>Online</div>
			</div>
			<div class="clear"></div>
		</div>
        <!--FIN DEL PRIMER CUADRO-->
        <!--SEGUNDO CUADRO EN DND ESTA LA BARRA DE BUSQUEDA-->
		<div class="divider"></div>
		<form role="search">
			<div class="form-group">
				<input type="text" class="form-control" placeholder="Buscar...">
			</div>
		</form>
		<!--FIN DEL SEGUNDO CUADRO-->
		<!--TERCER CUADRO DND ESTA EL MENU DE OPCIONES-->
		<ul class="nav menu">

	@if(Auth::user()->hasRole('admin'))
    <div>Acceso como administrador</div>
    <li><a href="{{ url('admin') }}"><em class="fa fa-home">&nbsp;</em> Panel de control</a></li>
   <li><a href="{{ route('users.edit', Auth::user()->id )}}"><em class="fa fa-user">&nbsp;</em> Perfil</a></li>
@elseif(Auth::user()->hasRole('user'))
<div>Acceso como Estudiante</div>
			<li><a href="{{ route('estudiante') }}"><em class="fa fa-home">&nbsp;</em> Home</a></li>
			<li><a href="{{ route('solicitud.index') }}"><em class="fa fa-shopping-cart">&nbsp;</em> Realizar Solicitud</a></li>
			<li><a href="widgets.html"><em class="fa fa-bar-chart">&nbsp;</em> Ver estado de la Solicitud</a></li>
			<li><a href="{{ route('pago.index') }}"><em class="fa fa-bar-chart">&nbsp;</em> Pago de solicitud</a></li>
			<li><a href="{{ route('programa.index') }}"><em class="fa fa-plus">&nbsp;</em> Solicitar Programas</a></li>
			<li><a href="{{ route('sugerencias.create') }}"><em class="fa fa-comment">&nbsp;</em> Sugerencias &amp;  Quejas</a></li>
			<li><a href="{{ route('users.edit', Auth::user()->id )}}"><em class="fa fa-user">&nbsp;</em> Perfil</a></li>
@elseif(Auth::user()->hasRole('docente'))
            <div>Acceso como Docente</div>
            <li><a href="{{ route('estudiante') }}"><em class="fa fa-home">&nbsp;</em> Home</a></li>
			<li><a href="{{ route('servicio.index') }}"><em class="fa fa-shopping-cart">&nbsp;</em>Solicitud Servicio</a></li>
			<li><a href="charts.html"><em class="fa fa-bar-chart">&nbsp;</em> Ver estado de la Solicitud</a></li>
			<li><a href="{{ route('sugerencias.create') }}"><em class="fa fa-comment">&nbsp;</em> Sugerencias &amp;  Quejas</a></li>
			<li><a href="{{ route('users.edit', Auth::user()->id )}}"><em class="fa fa-user">&nbsp;</em> Perfil</a></li>
@else
            <div>Acceso como Trabajador Administrativo</div>
            <li><a href="{{ route('estudiante') }}"><em class="fa fa-home">&nbsp;</em> Home</a></li>
			<li><a href="widgets.html"><em class="fa fa-shopping-cart">&nbsp;</em> Servicio Solicitud</a></li>
			<li><a href="charts.html"><em class="fa fa-bar-chart">&nbsp;</em> Ver estado de la Solicitud</a></li>
			<li><a href="{{ route('sugerencias.create') }}"><em class="fa fa-comment">&nbsp;</em> Sugerencias &amp;  Quejas</a></li>
			<li><a href="{{ route('users.edit', Auth::user()->id )}}"><em class="fa fa-user">&nbsp;</em> Perfil</a></li>

@endif
			<li>
			 <a class="fa fa-power-off" href="{{ route('logout') }}"
                    onclick="event.preventDefault();
                    document.getElementById('logout-form').submit();">
                                            Logout
              </a>
 				<form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
   						 {{ csrf_field() }}
                 </form>
             </li>
		</ul>


		<!--FIN DEL TERCER CUADRO-->
	</div>
	<!--FIN BARRA HORIZONTAL DE OPCIONES-->


        @yield('content')
	</div>




<div class="col-sm-12">
				<p class="back-link">Gestion AD <a href="https://www.medialoot.com">UCLA.EDU.VE</a></p>
</div>

<script src="js/jquery-1.11.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/chart.min.js"></script>
	<script src="js/chart-data.js"></script>
	<script src="js/easypiechart.js"></script>
	<script src="js/easypiechart-data.js"></script>
	<script src="js/bootstrap-datepicker.js"></script>
	<script src="js/custom.js"></script>
@yield('scripts')
<script src="{{ asset('js/jquery.min.js') }}"></script>
	<script src="{{ asset('js/bootstrap.min.js') }}"></script>
	<script src="{{ asset('js/custom.js') }}"></script>

</html>
