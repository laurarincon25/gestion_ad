@extends('layouts.estudiante')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-8">
            <div class="panel panel-default">
                <div class="panel-heading">Solicitud de documentos</div>
                    <div class="">
                        <h3>
                            Conceptos
                        </h3>
                         <div class="form-group">
                          <label for="sel1">Seleccione la carrera:</label>
                          <select class="form-control" id="sel1">
                
                            <option>Ingeniería Informática</option>
                            <option>Ingeniería Producción</option>
                            <option>Ingeniería Telemática</option>
                            <option>Análisis de Sistema</option>
                            <option>Licenciatura en matemática</option>
                            <option>Licenciatura en Física</option>
                          </select>
                        </div>
                       
                        
                       
                          <div class="checkbox">
                            <label><input type="checkbox" value="">Notas egresado <span class="badge">520 Bs</span></label>
                          </div>
                          <div class="checkbox">
                            <label><input type="checkbox" value="">Puesto y rango <span class="badge">120 Bs</span></label>
                          </div>
                          <div class="checkbox">
                            <label><input type="checkbox" value="">Buena conducta egresado <span class="badge">100 Bs</span></label>
                          </div>
                          <div class="checkbox">
                            <label><input type="checkbox" value="">Constancia especial <span class="badge">300 Bs</span></label>
                          </div>
                          <div class="checkbox">
                            <label><input type="checkbox" value="">Pensum <span class="badge">800 Bs</span></label>
                          </div>
                           <div class="checkbox">
                            <label><input type="checkbox" value="">Carga horaria <span class="badge">710 Bs</span></label>
                          </div>
                           <div class="checkbox">
                            <label><input type="checkbox" value="">Modalidad de estudio <span class="badge">370 Bs</span></label>
                          </div>
                         
                        <form action="{{ route('solicitud.create') }}" class="form-horizontal">
                          <label> Correo:</label>
                            <input id="email" type="text" class="form-control" name="email" placeholder="Email">
                        </form>
                        <br>
                        <button type="submit" class="btn btn-success">Solicitar</button>
                        <a class="btn btn-info" href="/mailable" ></a>
                        <a class="btn btn-info" href="{{ route('solicitud.create') }}" ></a>
                    </div>

                <div class="panel-body">
                    @if (session('status'))
                        <div class="alert alert-success">
                            {{ session('status') }}
                        </div>
                    @endif
                </div>
            </div>
        </div>
    </div>
</div>
@endsection