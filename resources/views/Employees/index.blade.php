@extends('layouts.app')

@section('content')
<div class='container'>
    <div class="pb-3">
        <a href="{{ route('home') }}" class="btn btn-outline-primary"><- Go back</a>
    </div>
    <table class="table">
    <thead>
        <tr>
        <th scope="col">#</th>
        <th scope="col">Name</th>
        <th scope="col">Surname</th>
        <th scope="col">Email</th>
        <th scope="col">Pesel</th>
        <th scope="col">Department</th>
        <th scope="col">Job</th>
        </tr>
    </thead>
    <tbody>
    
        @foreach($employees as $employee)
            <tr>
           
                <th scope="row">{{ $employee->id }}</th>
                <td>{{ $employee->name }}</td>
                <td>{{ $employee->surname }}</td>
                <td>{{ $employee->email }}</td>
                <td>{{ $employee->pesel }}</td>
                <td>{{ $employee->department }}</td>
                <td>{{ $employee->job }}</td>
                <td>
                <a href="{{ route('editEmployees', $employee->id) }}">
                            <button class="btn btn-success btn-sm"><i class="far fa-edit">
                                Edit
                            </i></button>
                        </a>
                        
                        <form action="{{ route('destroyEmployees', $employee->id) }}" method="post">
                         @method('POST')
                        @csrf
                        <input class="btn btn-danger btn-sm delete" type="submit" value="Delete" />
                        </form>
                        
                    </td>
            </tr>
        @endforeach
    </tbody>
    </table>
    {{ $employees -> links()}}
@endsection
