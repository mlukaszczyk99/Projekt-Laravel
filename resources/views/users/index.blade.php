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
        <th scope="col">Surname</th>
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
                <td>
                <a href="{{ route('editUsers', $user->id) }}">
                            <button class="btn btn-success btn-sm"><i class="far fa-edit">
                                Edit
                            </i></button>
                        </a>
                        
                        <form action="{{ route('destroyUsers', $user->id) }}" method="post">
                         @method('POST')
                        @csrf
                        <input class="btn btn-danger btn-sm delete" type="submit" value="Delete" />
                        </form>
                        
                    </td>
            </tr>
        @endforeach
    </tbody>
    </table>
    {{ $users -> links()}}
</div>
@endsection
