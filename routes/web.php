<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers;

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
    return view('auth/login');
});

Route::get('/users/list', [App\Http\Controllers\UserController::class, 'index'])->middleware('can:isAdmin'); //autoryzacja tylko po zalogowaniu na admina (zabezpieczenie backendu)

Auth::routes();

Route::get('register', 'App\Http\Controllers\Auth\RegisterController@showRegistrationForm')->name('register')->middleware('can:isAdmin');

Route::get('/employees', [App\Http\Controllers\EmployeesController::class, 'index'])->name('Employees')->middleware('auth');
Route::get('/employees/add', [App\Http\Controllers\EmployeesController::class, 'create'])->name('addEmployees')->middleware('auth');
Route::get('/employees/edit/{employees}', [App\Http\Controllers\EmployeesController::class, 'edit'])->name('editEmployees')->middleware('auth');
Route::delete('/employees/{employees}', [App\Http\Controllers\EmployeesController::class, 'destroy'])->name('destroyEmployees')->middleware('auth');
Route::post('/employees/{employees}', [App\Http\Controllers\EmployeesController::class, 'update'])->name('updateEmployees')->middleware('auth');
Route::post('/employees', [App\Http\Controllers\EmployeesController::class, 'store'])->name('employees.store')->middleware('auth');

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');