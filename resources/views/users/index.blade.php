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
        <th scope="col">Email</th>
        <th scope="col">Name</th>
        <th scope="col">Surame</th>
        <th scope="col">Role</th>
        </tr>
    </thead>
    <tbody>
        @foreach($users as $user)
            <tr>
                <th scope="row">{{ $user->id }}</th>
                <td>{{ $user->email }}</td>
                <td>{{ $user->name }}</td>
                <td>{{ $user->surname }}</td>
                <td>{{ $user->role }}</td>
            </tr>
        @endforeach
    </tbody>
    </table>
    {{ $users -> links()}}
</div>
@endsection
