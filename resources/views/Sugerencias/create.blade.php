@extends('layouts.estudiante')

@section('title','Sugerencias create')

@section('content')

{!!Form::open(['route' =>'sugerencias.store', 'method' =>'POST', 'files' => true]) !!}

<div class="form-group">
{!! Form::label('descripcion','Descripción')!!}
{!! Form::textarea('descripcion', null, ['class' =>'form-control'])!!}
</div>

{!!Form::submit('Guardar',['class' => 'btn btn-primary']) !!}

{!!Form::close()!!}



@endsection