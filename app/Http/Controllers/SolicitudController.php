<?php

namespace App\Http\Controllers;
use App\Mail\EmailSolicitud;
use Webpatser\Uuid\Uuid;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;
use App\Carrera;
use App\Documento;
use App\Precio;
use App\Solicitud;

class SolicitudController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $carreras  = Carrera::all();
        $selected = 0; 
       return view('solicitud.solicitud', ['carreras'=> $carreras, 'selected' => $selected]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(Request $request)
    {
        $this->store($request);
        Mail::to($request->email)->send(new EmailSolicitud($request));
        return redirect()->route('solicitud.index')->with('status','Se ha enviado la solicitud');

    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $userId = $request['user'];
        $documento1 = substr($request['1'], 0 , strrpos($request['1'], "-"));
        $documento2 = substr($request['2'], 0 , strrpos($request['2'], "-"));
        $documento3 = substr($request['3'], 0 , strrpos($request['3'], "-")); 
        $documento4 = substr($request['4'], 0 , strrpos($request['4'], "-")); 
        $documento5 = substr($request['5'], 0 , strrpos($request['5'], "-")); 
        $documento6 = substr($request['6'], 0 , strrpos($request['6'], "-")); 
        $documento7 = substr($request['7'], 0 , strrpos($request['7'], "-")); 
        $documentos = [$documento1, $documento2, $documento3, $documento4, $documento5, $documento6, $documento7];
        echo json_encode($documentos);
        $solicitud = new Solicitud();
        $solicitud->users_id = $userId;
        $solicitud->uuid= Uuid::generate()->string;
        $solicitud->documentos = json_encode($documentos);
        $solicitud->save();

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
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function ship(Request $request)
    {
       // $order = Order::findOrFail($orderId);

        // Ship order...

       
    }
}
