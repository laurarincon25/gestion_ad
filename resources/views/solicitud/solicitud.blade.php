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
		<!--FIN BARRA HOME-->

<!--BARRA PANEL DE SOLICITUD-->
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
                                <option value="carrera_{{$carrera->id}}"> {{$carrera->carrera}} </option>
                                @endforeach
                          </select>
                         
                        <form action="{{ route('solicitud.create') }}" class="form-horizontal">
                            {{ csrf_field() }}
                            
                            @foreach($carreras as $carrera)
                                    <div class="checkbox-content" id="carrera_{{$carrera->id}}" style="display: none;">
                                         @foreach($carrera->documentos as $documento)
                                         <div class="check">
                                            <label for="ch-{{$documento->id}}" name="documento_{{$documento->id}}">{{$documento->Nombre}}</label> <input id="ch-{{$documento->id}}" value="{{$documento->Nombre}}-{{$documento->pivot->precio}}" name="{{$documento->id}}" type="checkbox" onchange="onChecked('ch-{{$documento->id}}')"> 
                                            <span class="badge">{{$documento->pivot->precio}} Bs</span></div>
                                            
                                        @endforeach
                                    </div>
                               
            
                            @endforeach
                           
                         <input type ="hidden" name="user" value="{{ Auth::user()->id }}" >
                               
                          <label> Correo:</label>
                            <input id="email" type="text" class="form-control" name="email" value="" placeholder="Email">
                            <button type="submit" class="btn btn-success">Solicitar</button>
    
                        </form>
                    </div>
            </div>
        </div>
    </div>

		<!--FIN BARRA PANEL DE SOLICITUD-->



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