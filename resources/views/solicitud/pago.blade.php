@extends('layouts.estudiante')
@section('title','pago')
@section('content')
<div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">


		<div class="row">
			<ol class="breadcrumb">
				<li><a href="#">
					<em class="fa fa-bar-chart"></em>
				</a></li>
				<li class="active">Pagos</li>
			</ol>
		</div>


<div class="col-md-12">
  <div class="col-md-12" style="border-width: 1px 1px 0px 1px; border-style: solid; border-color: lightgrey;">
    <h3 style="text-align: center">Pagos <p><small>Ejecute los pagos de las solicitudes ya realizadas</small></p></h3>
  </div>


                    <form method="POST" action="/pago" enctype="multipart/form-data">
                {{ csrf_field() }}
                <div class="col-md-12" style="border-width: 1px 1px 0px 1px; border-style: solid; border-color: lightgrey; background: #f1f3f6;">
                <div class="col-md-8 col-md-offset-2">
                  <br>
                @include('common.success')




               <div class= "form-group">


                            <br>
                            <br>

                        <div class="form-group{{ $errors->has('uuidSoli') ? ' has-error' : '' }}">
                            <label for="uuidSoli" class="col-md-6 control-label">Codigo de Solicitud de Documento</label>

                            <div class="col-md-8">
                                <input id="uuidSoli" type="text" class="form-control" name="uuidSoli" value="{{ old('uuidSoli') }}" required autofocus>

                                @if ($errors->has('uuidSoli'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('uuidSoli') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>

                            <br>
                            <br>
                            <br>
                            <br>


                        <div class="form-group">
                        <label for="" class="col-md-6 control-label">Comprobante de Pago</label>
                        <div class="col-md-8">
                        <input type="file" name="pago" class="form-control">
                        </div>

                            <br>
                            <br>
                            <br>
                            <br>
                            <br>


                            <div class="form-group{{ $errors->has('email') ? ' has-error' : '' }}">
                            <label for="email" class="col-md-6 control-label">Correo Electrónico</label>

                            <div class="col-md-8">
                                <input id="email" type="email" class="form-control" name="email" value="{{ old('email') }}" required>

                                @if ($errors->has('email'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('email') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>


                                  <br>
                                  <br>
                                   <br>
                                  <br>


                                  <div class="col-md-8 col-md-offset-2">
                                 <div class="form-group">
                           <button type="submit" class="btn btn-primary">
                                    Enviar
                                </button>

                              </div>
                            </div>



</form>


@endsection