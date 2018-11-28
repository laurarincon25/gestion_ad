<!DOCTYPE html>
<html lang="en"> 
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
	<title>{{ config('app.name', 'Admgestion') }}</title>

	<link rel="stylesheet" href="css/font-awesome.min.css">
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/style.css">
	<link href='http://fonts.googleapis.com/css?family=Open+Sans:600italic,400,800,700,300' rel='stylesheet' type='text/css'>
	<link href='http://fonts.googleapis.com/css?family=BenchNine:300,400,700' rel='stylesheet' type='text/css'>
	<script src="js/modernizr.js"></script>

	<link rel="shartcut icon" type="image/x-icon" href="img/favicon.png">

</head>

<!--CUERPO DE LA PAGINA-->
<body>

	<header class="top-header">
		<div class="container">
            
			<div class="row">
				<!--LOGO INICIAL-->
				<div class="col-xs-3 header-logo">
					<br>
					<a href="index.html"><img src="img/logo1.png" alt="" class="img-responsive logo">
					</a>
				</div>
				<!--FIN DEL LOGO INICIAL-->

	        <div class="col-md-9">
			<nav class="navbar navbar-default">
				<div class="container-fluid nav-bar">
					<div class="navbar-header">
					    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
					        <span class="sr-only">Toggle navigation</span>
					        <span class="icon-bar"></span>
					        <span class="icon-bar"></span>
					        <span class="icon-bar"></span>
					     </button>
					</div>

                    <!--BARRA DE NAVEGACION-->
					<div class="collapse navbar-collapse">
					      
					    <ul class="nav navbar-nav navbar-right">
					      	<li class="active"><a href="index.html"><i class="fa fa-lg fa-home"></i></a></li>
					        <li><a class="menu" href="#nosotros">Nosotros</a></li>
					        <li><a class="menu" href="#servicios">Servicios</a></li>
					        <li><a class="menu" href="#contact">Contáctenos</a></li>
					        <li><a href="{{ route('login') }}" data-toggle="modal">Acceso</a></li>
					        <li><a href="{{ route('register') }}" data-toggle="modal">Registrarse</a></li>
					    </ul>
					</div>
					<!--FIN DE BARRA DE NAVEGACION-->
			    </div>
			</nav>
			</div>
			</div>
		</div>
    </header>

<!--CARRUCEL-->
	<section class="slider" id="home">
		<div class="container-fluid">
			<div class="row">
			    <div id="carouselHacked" class="carousel slide carousel-fade" data-ride="carousel">
					<div class="header-backup"></div>
			        <div class="carousel-inner" role="listbox">
			        	<!--PRIMERA IMAGEN DEL CARRUCEL-->
			            <div class="item active">
			            	<img src="img/carrucel1.png" alt="">
			                <div class="carousel-caption">
		               			<!--<h1>MV WORLD</h1>
		               			<p>servicio de alta calidad</p>-->
			                </div>
			            </div>
                        <!--SEGUNDA IMAGEN DEL CARRUCEL-->
			            <div class="item">
			            	<img src="img/carrucel2.png" alt="">
			                <div class="carousel-caption">
		               			<!--<h1>MV WORLD</h1>
		               			<p>servicio de alta calidad</p>-->
			                </div>
			            </div>
                        <!--TERCERA IMAGEN DEL CARRUCEL
			            <div class="item">
			            	<img src="img/imagen4.jpg" alt="">
			                <div class="carousel-caption">
		               			<h1>MV WORLD</h1>
		               			<p>servicio de alta calidad</p>
			                </div>
			            </div>-->
			            <!--CUARTA IMAGEN DEL CARRUCEL-->
			            <div class="item">
			            	<img src="img/imagen4.jpg" alt="">
			                <div class="carousel-caption">
		               			<!--<h1>MV WORLD</h1>
		               			<p>servicio de alta calidad</p>-->	
			                </div>
			            </div>
			        </div>
			        <!-- Controls -->
			        <a class="left carousel-control" href="#carouselHacked" role="button" data-slide="prev">
			            <span class="glyphicon glyphicon-chevron-left" aria-hidden="true">
			            </span>
			            <span class="sr-only">Previous</span>
			        </a>
			        <a class="right carousel-control" href="#carouselHacked" role="button" data-slide="next">
			            <span class="glyphicon glyphicon-chevron-right" aria-hidden="true">
			            </span>
			            <span class="sr-only">Next</span>
			        </a>
			    </div>
			</div>
		</div>
	</section>
<!--FIN DEL CARRUCEL-->

<!--COLUMNA NOSOTROS-->
	<section class="about text-center" id="nosotros">
		<div class="container">
			<div class="row">
				<h2>Nosotros</h2>
				<h4>En esta categoría se agrupan las asignaturas de los Programas Académicos: Análisis de Sistema,  Ingeniería en Informática, Ingeniería de Producción, Licenciatura en Matemática, Ingeniería Telemática y Licenciatura en Física</h4>

				<div class="col-md-4 col-sm-6">
					<div class="single-about-detail clearfix">
						<div class="about-img">
							<img class="img-responsive" src="img/info.png" alt="">
						</div>
						<div class="about-details">
							<div class="pentagon-text">
								<h1>I</h1>
							</div>
							<h3>Informatica</h3>
							<p>El profesional egresado de esta carrera se caracteriza por el manejo de los recursos informáticos e instrumenta, analiza y diseña sistemas de información que permitirán el desarrollo integral de la organización. Desarrolla distintos tipos de estructuras lógicas para solucionar problemas con el uso de la computadora, maneja diferentes lenguajes de computación y usa técnicas y disciplinas afines a los sistemas de información, tales como, los aspectos administrativos, organizativos, estadísticos y control de proyectos</p>
						</div>
					</div>
				</div>

				<div class="col-md-4 col-sm-6">
					<div class="single-about-detail">
						<div class="about-img">
							<img class="img-responsive" src="img/info.png" alt="">
						</div>
						<div class="about-details">
							<div class="pentagon-text">
								<h1>P</h1>
							</div>
							<h3>Produccion</h3>
							<p>El  Ingeniero de producción es un profesional que aplica sus conocimientos en la optimización de la producción de bienes y servicios y hace uso de su experticia para crear o mejorar todo tipo de sistemas</p>
						</div>
					</div>
				</div>

				<div class="col-md-4 col-sm-6">
					<div class="single-about-detail">
						<div class="about-img">
							<img class="img-responsive" src="img/info.png" alt="">
						</div>
						<div class="about-details">
							<div class="pentagon-text">
								<h1>A</h1>
							</div>
							<h3>Analisis</h3>
							<p>Formar un profesional capaz de planificar, elaborar y coordinar los procedimientos automáticos y /o manuales asociados a los sistemas. Asimismo, definir en combinación con la gerencia las necesidades de información de una organización administrativa; estudiar la factibilidad técnico-económica de las alternativas que satisfacen estas necesidades y evaluar el costo-efectividad de los recursos humanos, máquinas y técnicas empleadas.</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
<!--FIN DE COLUMNA NOSOTROS-->

<!--COLUMNA SERVICIOS-->
	<section class="service text-center" id="servicios">
		<div class="container">
			<div class="row">
				<h2>Servicios</h2>
				<h4> es un conjunto de actividades que buscan satisfacer las necesidades de un cliente. Los servicios incluyen una diversidad de actividades que se pueden planificar desempeñadas por un gran número de personas (funcionarios, empleados, empresarios) que trabajan para el estado (servicios públicos) o para empresas particulares (servicios privados); entre estos pueden señalarse los servicios de: electricidad, agua potable, limpieza, teléfono, telégrafo, correo, transporte, educación, cibercafés, sanidad, asistencia social, etc.</h4>

				<div class="col-md-4 col-sm-6">
					<div class="single-about-detail clearfix">
						<div class="about-img">
							<img class="img-responsive" src="img/documentos1.png" alt="">
						</div>
						<div class="about-details">
							<div class="pentagon-text">
								<h1>I</h1>
							</div>
							<h3>Solicitud de documentos academicos</h3>
							<p>documentos</p>
						</div>
					</div>
				</div>

				<div class="col-md-4 col-sm-6">
					<div class="single-about-detail">
						<div class="about-img">
							<img class="img-responsive" src="img/servicios.png" alt="">
						</div>
						<div class="about-details">
							<div class="pentagon-text">
								<h1>P</h1>
							</div>
							<h3>servicios</p>
						</div>
					</div>
				</div>

				<div class="col-md-4 col-sm-6">
					<div class="single-about-detail">
						<div class="about-img">
							<img class="img-responsive" src="img/quejas4.png" alt="">
						</div>
						<div class="about-details">
							<div class="pentagon-text">
								<h1>A</h1>
							</div>
							<h3>Quejas y sugerencias</h3>
							<p>quejas</p>
						</div>
					</div>
				</div>
	
			</div>
		</div>
	</section>
<!--FIN COLUMNA SERVICIOS-->

<!--COLUMNA CONTACTOS-->
	<div class="api-map" id="contact">
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-12 map" id="map"></div>
			</div>
		</div>
	</div>

	<section class="contact">
		<div class="container">
			<div class="row">
				<div class="contact-caption clearfix">
					<div class="contact-heading text-center">
						<h2>Contáctenos</h2>
					</div>
					<div class="col-md-5 contact-info text-left">
						<h3>informacion de contacto</h3>
						<div class="info-detail">
							<ul><li><i class="fa fa-calendar"></i><span>Lunes-Viernes:</span> 8:30 AM a 4:30 PM</li></ul>
							<ul><li><i class="fa fa-map-marker"></i><span>Dirección:</span> Av. Las Industrias Nucleo Obelisco, Barquisimeto, Lara</li></ul>
							<br>
							<ul><li><i class="fa fa-phone"></i><span>Telefono:</span> (0251) 987-1235</li></ul>
							<ul><li><i class="fa fa-fax"></i><span>Fax:</span> (123) 984-1234</li></ul>
							<ul><li><i class="fa fa-envelope"></i><span>Email:</span> info@direccionadm.com</li></ul>
						</div>
					</div>
					
				</div>
			</div>
		</div>
	</section>
<!--FIN COLUMNA CONTACTOS-->

<!--DERECHOS RESERVADOS-->
	<footer class="footer clearfix">
		<div class="container">
			<div class="row">
				<div class="col-xs-6 footer-para">
					<p>&copy;Copyright 2018 Empresa de Desarrollo │RIF J-222222-77 │Todos los Derechos Reservados.</p>
				</div>
				<div class="col-xs-6 text-right">
					<a href=""><i class="fa fa-facebook"></i></a>
					<a href=""><i class="fa fa-twitter"></i></a>
					<a href=""><i class="fa fa-skype"></i></a>
				</div>
			</div>
		</div>
	</footer>
<!--FIN DERECHOS RESERVADOS-->

    <script src="js/jquery-2.1.1.js"></script>
	<script src="http://maps.google.com/maps/api/js?sensor=true"></script>
	<script src="js/gmaps.js"></script>
	<script src="js/smoothscroll.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/custom.js"></script>


</body>
</html>