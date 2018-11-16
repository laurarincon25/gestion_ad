@extends('layouts.app')

@section('title','Sugerencia create')

@section('content')

{!!Form::open(['route' =>'sugerencias.store', 'method' =>'POST', 'files' => true]) !!}

<div class="form-group">
{!! Form::label('descripcion','Descripción')!!}
{!! Form::text('descripcion', null, ['class' =>'form-control'])!!}
</div>

{!!Form::submit('Guardar',['class' => 'btn btn-primary']) !!}

{!!Form::close()!!}



@endsection