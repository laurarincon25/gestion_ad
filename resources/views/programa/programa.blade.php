@extends('layouts.estudiante')

@section('content')
<div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">

        <!--BARRA HOME-->
		<div class="row">
			<ol class="breadcrumb">
				<li><a href="#">
					<em class="fa fa-home"></em>
				</a></li>
				<li class="active">Home</li>
			</ol>
		</div>

        <div class="panel-body">

       
          @if (session('status'))
        <div class="alert alert-success">
            {{ session('status') }}
        </div>

         @endif

        </div>
            <div class="panel panel-default" style="padding:30px">
                <div class="panel-heading">Solicitud de Programas Academicos</div>

                    <div class="">
                              <h3>
                                  Datos
                              </h3>
                              <form action ="/programa" method="POST" role="form">

                                     {{ csrf_field() }}

                           <div class="form-group">
                              <label for="sel1">Seleccione la carrera:</label>
                                <select name="carrera" id="sel1" class="form-control"  >

                                  <option value="1">Ingeniería Informática</option>
                                  <option value="2">Ingeniería Producción</option>
                                  <option value="3">Ingeniería Telemática</option>
                                  <option value="4">Análisis de Sistema</option>
                                  <option value="5">Licenciatura en matemática</option>
                                  <option value="6">Licenciatura en Física</option>
                                 </select>

                           </div>
                             <h4>
                               Tipo de Pensum
                            </h4>

                       <div class="form-group">

                            <label for="sel2">Seleccione el pensum:</label>
                               <select name="pensum" id="sel2" class="form-control"  >

                                <option value="1">Pensum Viejo</option>
                                <option value="2">Version 1995</option>
                                <option value="3">Version 1998</option>
                                <option value="4">Version 2001</option>
                                <option value="5">Version 2005 en adelante</option>

                               </select>
                          </div>



                          <label>Solicita programa para:</label>
                          <textarea  name="descripcion" class="form-control" rows="3"></textarea>

                          <label>Numero Telefonico</label><input id="nrotelefono" type="text" class="form-control" name="nrotlf">


                          <label> Correo:</label>
                            <input id="email" type="text" class="form-control" name="email" placeholder="Email">

                          <br>

                        <button type="submit" class="btn btn-primary">Solicitar</button>


                    </div>
                 </form>
                </div>
            </div>
</div>
@endsection
