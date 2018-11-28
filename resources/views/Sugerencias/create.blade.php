@extends('layouts.estudiante')

@section('title','Sugerencias create')

@section('content')


<div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">

<div class="row">
      <ol class="breadcrumb">
        <li><a href="#">
          <em class="fa fa-comment"></em>
        </a></li>
        <li class="active">Sugerencias y Quejas</li>
      </ol>
    </div>



<div class="col-md-12">
  <div class="col-md-12" style="border-width: 1px 1px 0px 1px; border-style: solid; border-color: lightgrey;">
    <h3 style="text-align: center">Sugerencias y Quejas <p><small>Escribe detalladamente lo que deseés compartir con nosotros</small></p></h3>
  </div>


                    <form method="POST" action="/sugerencias" >
                {{ csrf_field() }}
                <div class="col-md-12" style="border-width: 1px 1px 0px 1px; border-style: solid; border-color: lightgrey; background: #f1f3f6;">
                <div class="col-md-8 col-md-offset-2">
                  <br>
                @include('common.success')


               <div class= "form-group">
                <br>
                <label for="descripción">Descripción</label>
                            <br>
                            <br>
                              <textarea name="descripcion" id=descripcion rows= "8" cols="6" placeholder=" Escribe Aquí"class="form-control{{ $errors->has('descripcion') ? ' is-invalid' : '' }}" name="descripcion" value="{{ old('descripcion') }}" required autofocus></textarea>

                        @if ($errors->has('descripcion'))
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $errors->first('descripcion') }}</strong>
                                    </span>
                                @endif

                           </div>
                   </div>

                                  <div class="col-md-5 col-md-offset-2">
                                 <div class="form-group">
                           <button type="submit" class="btn btn-primary">
                                    Enviar
                                </button>

                              </div>
                            </div>



</form>

</div>



@endsection