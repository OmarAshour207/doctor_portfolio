@extends('dashboard.layouts.app')

@section('content')
    <div class="mdk-drawer-layout__content page">
        <div class="container-fluid page__heading-container">
            <div class="page__heading d-flex align-items-center">
                <div class="flex">
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb mb-0">
                            <li class="breadcrumb-item"><a href="{{ url('admin/dashboard') }}"><i class="material-icons icon-20pt">home</i> {{ trans('admin.home') }} </a></li>
                            <li class="breadcrumb-item active" aria-current="page">{{ trans('admin.edit') }}</li>
                        </ol>
                    </nav>
                    <h1 class="m-0"> {{ trans('admin.newsletter') }} </h1>
                </div>
            </div>
        </div>

        <div class="container-fluid page__container">

            <div class="card card-form__body card-body">
                <form method="post" action="{{ route('newsletters.update', $newsletter->id) }}">
                    @csrf

                    @method('put')
                    @include('dashboard.partials._errors')

                    <div class="form-group">
                        <label for="email"> {{ trans('admin.newsletter') }} / {{ trans('admin.email') }}</label>
                        <input id="email" name="email" type="email" class="form-control" placeholder="{{ trans('admin.email') }}" value="{{ old('email', $newsletter->email) }}">
                    </div>

                    <div class="text-right mb-5">
                        <input type="submit" name="add" class="btn btn-success" value="{{ trans('admin.update') }}">
                    </div>
                </form>
            </div>
        </div>
        <!-- // END drawer-layout__content -->
    </div>
@endsection
