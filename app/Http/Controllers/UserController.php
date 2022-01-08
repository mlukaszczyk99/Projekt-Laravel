<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use Illuminate\Contracts\View\View;
use Illuminate\Http\RedirectResponse;

class UserController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return Application/Factory/View
     */
    public function index() 
    {
        //widok
        return view('users.index', [ 
            'users' => User::paginate(10)
        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
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
     * @param  User  $users
     * @return Response
     */
    public function edit(User  $users)
    {
        return view("users.edit", [
            'user' => $users,
            
        ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  Request  $request
     * @param  User  $users
     * @return RedirectResponse
     */
    public function update(Request $request, User  $users) : RedirectResponse
    {
        $users->fill($request->all());
        $users->save();
        return redirect(route('Users'));
        
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  User  $users
     * @return RedirectResponse
     */
    public function destroy(User  $users): RedirectResponse
    {
        $users->delete();
        return redirect(route('Users'));
    }
}
