@extends('layouts.estudiante')

@section('title','Sugerencias create')

@section('content')

@include('common.success')

<div class="card-body">
                    <form method="POST" action="/sugerencias" >
                {{ csrf_field() }}

               <div class= "form-group">
                <label for="descripción">Descripción</label>

                              <textarea name="descripcion" id=descripcion rows= "4" cols="50" placeholder=" Escribe Aquí"class="form-control{{ $errors->has('descripcion') ? ' is-invalid' : '' }}" name="descripcion" value="{{ old('descripcion') }}" required autofocus></textarea>

                        @if ($errors->has('descripcion'))
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $errors->first('descripcion') }}</strong>
                                    </span>
                                @endif

                           </div>


                           <button type="submit" class="btn btn-primary">
                                    Enviar
                                </button>



</form>

</div>



@endsection