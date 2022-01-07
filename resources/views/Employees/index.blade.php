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
        <th scope="col">Status</th>
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
                <td>{{ $employee->status }}</td>
            </tr>
        @endforeach
    </tbody>
    </table>
</div>
@endsection
