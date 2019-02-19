<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Sugerencia;
use Maatwebsite\Excel\Facades\Excel;
use Barryvdh\DomPDF\Facade as PDF;
use Illuminate\Support\Facades\Redirect;
use Carbon\Carbon;
use DB;
class ReporteSugerenciaController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {


        $fechaInicial = $request->fechaInicial;
         $fechaFinal = $request->fechaFinal;


    //creams 2 objetos tipo carbon con las fechas
    $f1 = new \Carbon\Carbon($fechaInicial);
    $f2 = new \Carbon\Carbon($fechaFinal);

    //aplicamos Eloquent
    $reportesugerencia = Sugerencia::whereDate('created_at','>=',$f1)
    ->whereDate('created_at','<=',$f2)
    ->get();


return view('reportes.reportesugerencia')->with('reportesugerencia', $reportesugerencia);

      /*  $reportesugerencia = Sugerencia::all();
return view('reportes.reportesugerencia', compact('reportesugerencia'));*/

    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */

      public function pdf(Request $request)

    {

        $fechaInicial = $request->fechaInicial;
         $fechaFinal = $request->fechaFinal;



    //creams 2 objetos tipo carbon con las fechas
    $f1 = new \Carbon\Carbon($fechaInicial);
    $f2 = new \Carbon\Carbon($fechaFinal);

    //aplicamos Eloquent
    $reportesugerencias = Sugerencia::whereDate('created_at','>=',$f1 )
    ->whereDate('created_at','<=',$f2)
    ->get();

        $view = \View::make('pdf.pdfreportesugerencia')->with('reportesugerencias', $reportesugerencias)->render();
        $pdf = \App::make('dompdf.wrapper');
        $pdf->loadHTML($view);
        return $pdf->stream('listado '.' .pdf');

        //return $pdf->download('listado.pdf');
    }



    public function excel(Request $request)
    {


         $fechaInicial = $request->fechaInicial;
         $fechaFinal = $request->fechaFinal;

    //creams 2 objetos tipo carbon con las fechas
    $f1 = new \Carbon\Carbon($fechaInicial);
    $f2 = new \Carbon\Carbon($fechaFinal);

    //aplicamos Eloquent
    $reportesugerencias = Sugerencia::whereDate('created_at','>=',$f1)
    ->whereDate('created_at','<=',$f2)
    ->get();
        /** Creamos nuestro archivo Excel */
        Excel::create('reporte sugerencias', function ($excel) use ($reportesugerencias) {
            /** Creamos una hoja */
            $excel->sheet('Hoja Uno', function ($sheet) use ($reportesugerencias) {
                /**
                 * Insertamos los datos en la hoja con el método with/fromArray
                 * Parametros: (
                 * Datos,
                 * Valores del encabezado de la columna,
                 * Celda de Inicio,
                 * Comparación estricta de los valores del encabezado
                 * Impresión de los encabezados
                 * )*/
                $sheet->with($reportesugerencias, null, 'A1', false, false);
            });
 /** Descargamos nuestro archivo pasandole la extensión deseada (xls, xlsx) */
        })->download('xlsx');

        /* Excel::create('Laravel Excel', function($excel) {
            $excel->sheet('Excel sheet', function($sheet) {
                //otra opción -> $products = Product::select('name')->get();
                $reportesugerencias = Sugerencia::all();
                $sheet->fromArray($reportesugerencias);
                $sheet->setOrientation('landscape');
            });
        })->export('xls');*/

        /*$fechaInicial = $request->fechaInicial;
         $fechaFinal = $request->fechaFinal;

    //creams 2 objetos tipo carbon con las fechas
    $f1 = new \Carbon\Carbon($fechaInicial);
    $f2 = new \Carbon\Carbon($fechaFinal);

    //aplicamos Eloquent
    $reportesugerencias = Sugerencia::whereDate('created_at','>=',$f1)
    ->whereDate('created_at','<=',$f2)
    ->get();

        //Excel::create('Laravel Excel', function($excel) {
    Excel::create('Rerpote Sugerencia', function($excel) use($reportesugerencias) {
            $excel->sheet('Excel sheet', function($sheet) use($reportesugerencias) {



                //otra opción -> $products = Product::select('name')->get();
                //$reportesugerencias = Sugerencia::all();
                $sheet->fromArray($reportesugerencias);
                $sheet->setOrientation('landscape');
            });
        })->export('xls');*/
    }


}