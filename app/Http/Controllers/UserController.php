<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\Auth;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Support\Facades\Hash;
use App\User;
class UserController extends Controller
{

    public function __construct()
    {
        $this->middleware('auth');
    }




    public function edit(User $user)
    {
        $user = Auth::user();
        return view('users.edit', compact('user'));
    }



    public function update($id)
    {
              $User=User::findOrFail($id);



      $validator = Validator::make(

                Input::all(),
                array(

                    'name' => 'required|min:3',
                    'email' => 'required|email|unique:users,email,'.$User->id,
                    'password' => 'confirmed',
                    'password'  =>'',
                    'avatar' =>'image|mimes:jpg,png,bmp,jpeg',
                    )
        );

       if($validator->fails())
        {
            return Redirect::back()->withInput()->withErrors($validator);
        }

        if(trim(Input::get('password')) != ''){

    $User->password = Hash::make(trim(Input::get('password')));
  }

        $User->name= Input::get('name');
        $User->email= Input::get('email');




        if(Input::hasFile('avatar'))
        {
            $file = Input::file('avatar');

            $name = time().'.'.$file->getClientOriginalName();
            $User->avatar= $name;
            $file->move('storage/', $name);
        }

        $User->save();

        return Redirect::route('users.edit', $id)->with('status','Datos Actualizados Exitosamente');

      }

    }
