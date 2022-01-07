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
            </tr>
        @endforeach
    </tbody>
    </table>
    {{ $employees -> links()}}
</div>
@endsection
