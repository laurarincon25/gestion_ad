<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\Mail;
use Illuminate\Http\Request;
use App\Servicio;
use App\SolicitudServicio;
use App\Departamento;
use App\Mail\EmailServicio;

class ServicioController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $servicios = Servicio::all();
        $departamentos = Departamento::all();
        $idItems = [];
        return view('servicio.servicio',['servicios' => $servicios, 'departamentos'=>$departamentos, 'items'=>$idItems]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(Request $request)
    {
         $solicitud = $request->all();
         echo json_encode($solicitud);
          $this->store($request, $solicitud);
          Mail::to($request->email)->send(new EmailServicio($request));
          return redirect()->route('servicio.index')->with('status','Se ha enviado la solicitud');  
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request, Array $solicitud )
    {
      
        $solicitudServicio = new SolicitudServicio();
        $solicitudServicio->user_id = $request->user;
        $solicitudServicio->servicios = json_encode($solicitud);
        $solicitudServicio->observaciones = $request->observacion;
        $solicitudServicio->status = 0;
        $solicitudServicio->save();
        
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
