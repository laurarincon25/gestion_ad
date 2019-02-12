@extends('layouts.estudiante')

@section('content')

<div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">

    <!--BARRA SOLICITUD-->
    <div class="row">
        <ol class="breadcrumb">
            <li><a href="#">
                    <em class="fa fa-shopping-cart"></em>
                </a></li>
            <li class="active">Solicitud de Servicios</li>
        </ol>
    </div>
    <!--FIN BARRA SOLICITUD-->

    <div class="panel-body">
        @if (session('status'))
        <div class="alert alert-success">
            {{ session('status') }}
        </div>
        @endif
    </div>
    <div class="row">
        <div class="col-md-12">
            <div class="panel panel-default" style="padding:30px">
                <div class="panel-heading">Solicitud de Servicios</div>
                <div class="">
                    <h3>
                        Conceptos
                    </h3>
                    <div class="form-group">

                        <form action="{{ route('servicio.create') }}" class="form-horizontal">
                            {{ csrf_field() }}
                            <div class="form-group">
                                <label for="deps">Seleccione el departamento:</label>
                                <select class="form-control" id="deps" name="deps" onChange="depSelected()">
                                    <option value="" selected disabled> Seleccione un departamento </option>
                                    @foreach($departamentos as $departamento)
                                    <option value="departamento{{$departamento->id}}"> {{$departamento->nombre}}
                                    </option>
                                    @endforeach
                                </select>
                            </div>
                            <div class="form-group" id="groupservs" style="display: none">
                                <label for="servs">Seleccione el Servicio:</label>
                                <select class="form-control" id="servs" name="servs" onChange="selected()">
                                    <option value="" selected disabled> Seleccione un servicio </option>
                                    @foreach($servicios as $servicio)
                                    <option value="servicio_{{$servicio->id}}"> {{$servicio->servicio}} </option>
                                    @endforeach
                                </select>
                            </div>
                            <div class="form-group">
                                @foreach($servicios as $servicio)
                                
                                <div class="checkbox-content" id="servicio_{{$servicio->id}}" style="display: none;">
                                    @foreach($servicio->items as $item)
                                    <div class="check" style="float:left">
                                        <label for="ch-{{$item->id}}"
                                        name="item_{{$item->id}}_{{$servicio->servicio}}">{{$item->nombre}}</label>
                                        <input  id="ch-{{$item->id}}" value="{{$item->nombre}}" name="{{$item->nombre}}" type="checkbox" onchange="onChecked('ch-{{$item->id}}')">
                                        
                                    </div>

                                    @endforeach
                                </div>
                                @endforeach
                            </div>
                            <div class="form-group">
                                    <input class ="form-control" id="cant" name="cant" type="number" placeholder="Cantidad" style="display: none">
                            </div>
                            <div class="form-group">
                                <input type="hidden" name="user" value="{{ Auth::user()->id }}">
                        
                                <label for="observacion"> Observaciones:</label>
                                <textarea id="observacion" class="form-control" name="observacion" value=""
                                placeholder="Observaciones"></textarea>
                            </div>
                            <div class="form-group">
                                    <label for="email"> Email:</label>
                                    <input id="email" type="text" class="form-control" name="email" value="" placeholder="Email">        
                            </div>
                            
                            <button type="submit" class="btn btn-success">Solicitar</button>

                        </form>
                    </div>
                </div>
            </div>
        </div>




        @endsection
        @section('scripts')

        <script type="text/javascript">
            var idselected;
            var id = 0;

            function depSelected() {
                console.log("selecte dep");
                var groupservs = document.getElementById('groupservs');
                groupservs.style.display = "block";

            }

            function selected() {
                var checkboxs = document.getElementsByClassName('checkbox-content');
                idselected = document.getElementById('servs');
                id = idselected.options[idselected.selectedIndex].value;
                for (var i = 0; i < checkboxs.length; i++) {

                    if (checkboxs[i].id == id) {
                        checkboxs[i].style.display = "block"
                    }
                    else {
                        checkboxs[i].style.display = "none"
                    }
                }
                console.log('id',id,'selected',idselected);


            }

            function onChecked(id) {
                console.log(id);
                var checkbox = document.getElementById(id);
                var precio = checkbox.value;
                if(checkbox.name === "Articulos de oficina") {
                    var cant = document.getElementById("cant");
                    if(checkbox.checked == true) {
                         cant.style.display = "block";
                    }
                    else{
                        cant.style.display = "none";
                    }
                   
                }
                console.log('checkbox',checkbox.checked,'precio',precio);
            }
        </script>
        @endsection