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
                          <label for="sel1">Seleccione el servicio:</label>
                             <select class="form-control" id="sel1" name="select" onChange="selected()">
                            <option value="" selected disabled > Seleccione un servicio </option>
                                @foreach($servicios as $servicio)
                                <option value="servicio_{{$servicio->id}}"> {{$servicio->servicio}} </option>
                                @endforeach
                          </select>

                          <form action="{{ route('servicio.create') }}" class="form-horizontal">
                            {{ csrf_field() }}

                            @foreach($servicios as $servicio)
                                    <div class="checkbox-content" id="servicio_{{$servicio->id}}" style="display: none;">
                                         @foreach($servicio->items as $item)
                          				<div class="check">
                                            <label for="ch-{{$item->id}}" name="item_{{$item->id}}">{{$item->nombre}}</label> <input id="ch-{{$item->id}}" value="{{$item->id}}" name="{{$item->id}}" type="checkbox" onchange="onChecked('ch-{{$item->id}}')">
                                            </div>
                                        @endforeach
                                    </div>

                            @endforeach

                         <input type ="hidden" name="user" value="{{ Auth::user()->id }}" >

                          <label> Observaciones:</label>
                            <textarea id="observacion" class="form-control" name="observacion" value="" placeholder="Observaciones"></textarea>
                            <button type="submit" class="btn btn-success">Solicitar</button>

                        </form>
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