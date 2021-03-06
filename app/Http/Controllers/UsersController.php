<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;

use App\User;

use Laracasts\Flash\Flash;

use App\Http\Requests\UserRequest;
class UsersController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
    	$users = User::orderBy('id','ASC')->paginate(5);
    	return view('admin.users.index')->with('users',$users);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        #dd("Esto es un mensaje");
    	return view('admin.users.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(UserRequest $request)
    {
        $user = new User($request->all());
        $user->password = bcrypt($request->password);
        #dd($user);
        $user->save();
        Flash::success("Se ha registrado ".$user->name." de forma exitosa");
        return redirect()->route('admin.users.index');
        #dd("Usuario Creado");
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
        $user = User::find($id);
        #dd($user);
        return view('admin.users.edit')->with('user',$user);
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
        #dd($request->all());
        #dd($id);
        $user = User::find($id);
        $user->name = $request->name;
        $user->email = $request->email;
        $user->type = $request->type;
        #otra forma:
        #$user->fill($request->all());
        #$user_new = new User($request->all())
        $user->save();
        #dd($user);
        Flash::warning("El usuario ".$user->name." ha sido editado con exito!");
        return redirect()->route('admin.users.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        #dd($id);
        $user = User::find($id);
        $user->delete();
        Flash::error("El usuario ".$user->name." a sido borrado de forma exitosa");
       // Flash::success("Se ha registrado ".$user->name." de forma exitosa");
        return redirect()->route('admin.users.index');
    }
}
