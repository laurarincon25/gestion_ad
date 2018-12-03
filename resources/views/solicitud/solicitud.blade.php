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
                             <select class="form-control" id="sel1" name="select" onChange="selected()">
                            <option value="" selected disabled > Seleccione una carrera </option>
                                @foreach($carreras as $carrera)
                                <option value="{{$carrera->id}}"> {{$carrera->carrera}} </option>
                                @endforeach
                          </select>
                         
                        <form action="{{ route('solicitud.create') }}" class="form-horizontal">
                            {{ csrf_field() }}
                            
                            @foreach($carreras as $carrera)
                                    <div class="checkbox-content" id="{{$carrera->id}}" style="display: none;">
                                        <h4>{{$carrera->carrera}} {{$carrera->id}}</h4>
                                         @foreach($carrera->documentos as $documento)
                                            <label for="ch-{{$documento->id}}">{{$documento->Nombre}}</label>
                                            <input id="ch-{{$documento->id}}" value="{{$documento->pivot->precio}}" name="{{$documento->Nombre}}" type="checkbox" onchange="onChecked('ch-{{$documento->id}}')"> {{$documento->pivot->precio}}
                                        @endforeach

                                    </div>
                               
            
                            @endforeach
                           
                                
                               
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
@section('scripts')

<script type="text/javascript">
    var idselected = 0;
    var id = 0;
    function selected(){
        var checkboxs= document.getElementsByClassName('checkbox-content');
        idselected = document.getElementById('sel1');
        id = idselected.options[idselected.selectedIndex].value;
        for (var i = 0; i < checkboxs.length; i++) {

            if(checkboxs[i].id== id){
                checkboxs[i].style.display="block"
             }
             else{
                 checkboxs[i].style.display="none"
             }
            }
           console.log('id',id, 'selected',idselected);


    }

    function onChecked(id){
        console.log(id);
        var checkbox = document.getElementById(id);
        var precio = checkbox.value;
        
        console.log('checkbox',checkbox,'precio',precio);
    }
</script>
@endsection