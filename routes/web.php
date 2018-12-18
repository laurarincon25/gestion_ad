<?php

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

Route::get('/estudiante', 'EstudianteController@index')->name('estudiante');

Route::get('/perfil', 'PerfilEController@index')->name('perfil');
Route::resource('programa','ProgramaController');
//Route::post('/programa','ProgramaController@store');
//Route::get('/programa', 'ProgramaController@index')->name('programa');
