<?php
use Illuminate\Http\Request;
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('index');
});


Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');

Route::resource('sugerencias','SugerenciaController')->middleware('auth');

Route::get('reportesugerencia', 'ReporteSugerenciaController@index')->name('reportesugerencia');

Route::get('pdfreportesugerencia', 'ReporteSugerenciaController@pdf')->name('pdfreportesugerencia');
Route::get('excelreportesugerencia', 'ReporteSugerenciaController@excel')->name('excelreportesugerencia');

Route::get('/estudiante', 'EstudianteController@index')->name('estudiante');

Route::resource('programa','ProgramaController');
//Route::post('/programa','ProgramaController@store');
//Route::get('/programa', 'ProgramaController@index')->name('programa');

Route::resource('solicitud','SolicitudController')->middleware('auth');
Route::get('/mailable', function (Request $request) {

return new App\Mail\EmailSolicitud($request);
});

Route::resource('pago','PagoController')->middleware('auth');
Route::get('/mailable', function (Request $request) {

return new App\Mail\EmailPago($request);
});


Route::resource('servicio', 'ServicioController');

Route::resource('estadoserv', 'EstadoservicioController');



Route::get('users/{user}', 'UserController@edit')->name('users.edit');
Route::put('users/{id}', 'UserController@update')->name('users.update');



Route::get('foo', function () {
    return 'Hello World';
});

Route::get('uuid', function() {
	echo Uuid::generate()->string;
});
