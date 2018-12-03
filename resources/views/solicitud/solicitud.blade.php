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
                                @foreach($carreras as $carreras)
                                <option value="$carrera->id"> {{$carrera->carrera}} </option>
                                @endforeach
                          </select>
                        </div>
                       
                        
                       
                          <div class="checkbox">
                          
                                    @foreach($carreras->documentos as $documento)
                                        
                                        <p>el documentos es :{{$documento->pivot->precio}}</p>

                            
                                @endforeach

                                 
                  
                          </div>
                         
                        <form action="{{ route('solicitud.create') }}" class="form-horizontal">
                            {{ csrf_field() }}
                            
                           
                                
                               
                          <label> Correo:</label>
                            <input id="email" type="text" class="form-control" name="email" value="" placeholder="Email">
                            <button type="submit" class="btn btn-success">Solicitar</button>
                        </form>
                        <br>
                        
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