@extends('layouts.app')

@section('content')
<div class='container'>
    <table class="table">
    <thead>
        <tr>
        <th scope="col">#</th>
        <th scope="col">Name</th>
        <th scope="col">Surame</th>
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

                        <button class="btn btn-danger btn-sm delete" data-id="{{ route('destroyEmployees', $employee->id) }}">
                            <i class="far fa-trash-alt"> Delete </i>
                        </button>
                    </td>
            </tr>
        @endforeach
    </tbody>
    </table>
</div>
@endsection
