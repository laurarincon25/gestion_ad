@extends('layouts.estudiante')

@section('content')



<div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">

        <!--BARRA PERFIL-->
		<div class="row">
			<ol class="breadcrumb">
				<li><a href="#">
					<em class="fa fa-user"></em>
				</a></li>
				<li class="active">Perfil</li>
			</ol>
		</div>
		<!--FIN BARRA PERFIL-->

<!--PARTE CENTRAL CABECERA-->
<div class="col-md-12">
	<div class="col-md-12" style="border-width: 1px 1px 0px 1px; border-style: solid; border-color: lightgrey;">
		<h3 style="text-align: center">Mi perfil <p><small>Actualiza tu información personal</small></p></h3>
	</div>
<!--FIN PARTE CENTRAL CABECERA-->

<!--SE INICIA EL FORM TODOS LOS ELEMENTOS DEL FORMULARIO DEBEN IR DENTRO DE ESTA ETIQUETA-->


<form class="form-horizontal" method="POST"  action="{{route('users.update', $user->id)}}"  enctype="multipart/form-data">
	{{ method_field('PUT') }}
     {{ csrf_field() }}

	<!--INICIO DEL DIV CENTRAL PARTE DEL FORMULARIO INFORMACION BASICA-->
	<div class="col-md-12" style="border-width: 1px 1px 0px 1px; border-style: solid; border-color: lightgrey; background: #f1f3f6;">
		<div class="col-md-8 col-md-offset-2">


				<div class="control-group form-group">

					<div class="controls">
					<br>
                   @include('common.success')
                    @include('common.errors')
					<div class="form-group">


                            <label for="name" class="col-md-3 control-label">Nombre Completo</label>

                            <div class="col-md-8">
                                <input id="name" type="text"  value="{{ old ('name', Auth::user()->name )}}" class=" form-control" name="name" placeholder="Nombre">
                            </div>
                        </div>

                          <div class="form-group">
                            <label for="email" class="col-md-3 control-label">Correo Electrónico</label>

                            <div class="col-md-8">
                                <input id="email" type="email" value="{{ old('email', Auth::user()->email ) }}" class="form-control" name="email" placeholder="Correo Electrónico">


                            </div>
                        </div>


                          <div class="form-group">
                            <label for="password" class="col-md-3 control-label">Contraseña</label>

                            <div class="col-md-8">
                                <input id="password" type="password" class="form-control" name="password" placeholder="Contraseña">


                            </div>
                        </div>


                         <div class="form-group">
                            <label for="password" class="col-md-3 control-label"> Confirmación de Contraseña </label>

                            <div class="col-md-8">
                                <input id="password" type="password" class="form-control" name="password" placeholder="Contraseña">


                            </div>
                        </div>


                        <div class="form-group">
                        <label for="" class="col-md-3 control-label">Imagen</label>
                        <div class="col-md-8">
                        <input type="file" name="avatar" class="form-control">
                        </div>







                                  <br>
                                  <br>
                                   <br>
                                  <br>
	<!--FIN DEL DIV CENTRAL PARTE DEL FORMULARIO INFORMACION BASICA-->
	<!--BOTONES FORMULARIO-->
	<div class="col-md-12 container allFormButtons">
		<br>
				<div class="col-md-5 col-md-offset-3">
				<button type="submit" id="btnEnviar" class="btn btn-primary">Actualizar</button>
			</div>
		</div>
		&nbsp;

	<!--FIN BOTONES FORMULARIO-->
</form>
<br>
</div>


@endsection