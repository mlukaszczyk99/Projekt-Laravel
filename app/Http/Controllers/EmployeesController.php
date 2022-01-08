<?php

namespace App\Http\Controllers;

use App\Models\Employees;
use Illuminate\Http\Request;
use Illuminate\Contracts\View\View;

class EmployeesController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return View
     */
    public function index(): View
    {
        //widok
        return view('employees.index', [ 
            'employees' => Employees::paginate(10)
        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return View
     */
    public function create(): View
    {
        //widok
        return view('employees.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        /**walidacja */
        $validated = $request->validate([
            'name' => 'required|max:20|string',
            'surname' => 'required|max:20|string',
            'email' => 'required|max:50|email',
            'pesel' => 'required|max:11|min:11|string|unique:employees',
            'department' => 'required|max:50|string',
            'job' => 'required|max:50|string'
        ]);

        $employee = new Employees($validated); /**dodaje tylko zwalidowany wpis */
        $employee->save();
        return redirect(route('Employees'));
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Employees  $employees
     * @return \Illuminate\Http\Response
     */
    public function show(Employees $employees)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Employees  $employees
     * @return \Illuminate\Http\Response
     */
    public function edit(Employees $employees)
    {
        return view("employees.edit", [
            'employees' => $employees,
            
        ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  Request  $request
     * @param  Employees  $employees
     * @return RedirectResponse
     */
    public function update(Request $request, Employees $employees) : RedirectResponse
    {
        $employees->fill($request->all());
        $employees->save();
        return redirect(route('Employees'));
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Employees  $employees
     * @return \Illuminate\Http\Response
     */
    public function destroy(Employees $employees): JsonResponse
    {
        $employees->delete();
    }

}

