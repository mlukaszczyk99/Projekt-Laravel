@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">{{ __('Dashboard') }}</div>

                <div class="card-body">
                    @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif

                    {{ __('You are logged in!') }}
                </div>
            </div>
            <div>
                @can('isAdmin') <!-- autoryzacja tylko dla admina (zabezpieczenie frontendu) -->
                <a class="btn btn-primary" href ="users/list">Users</a>
                <a href="{{ route('register') }}" class="btn btn-primary">Register</a>
                @endcan
                <a href="{{ route('Employees') }}" class="btn btn-primary">Employees</a>
                <a href="{{ route('addEmployees') }}" class="btn btn-primary">Add employees</a>
            </div>
        </div>
    </div>
</div>
@endsection
