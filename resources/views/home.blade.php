@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8 p-3">
            <div class="card">
                <div class="card-header">Login successful</div>

                <div class="card-body">
                    @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif

                    Welcome {{ Auth::user()->name }}
                </div>
            </div>
            <div class='d-flex justify-content-around p-3'>
                @can('isAdmin') <!-- autoryzacja tylko dla admina (zabezpieczenie frontendu) -->
                <a class="btn btn-primary" href ="users/list">List users</a>
                <a href="{{ route('register') }}" class="btn btn-primary">Register users</a>
                @endcan
                <!-- te przyciski są widoczne dla każdego zalogowanego usera -->
                <a href="{{ route('Employees') }}" class="btn btn-success">List employees</a>
                <a href="{{ route('addEmployees') }}" class="btn btn-success">Add employees</a>
            </div>
        </div>
    </div>
</div>
@endsection
