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
                    <h1 class="m-0"> {{ trans('admin.categories') }} </h1>
                </div>
            </div>
        </div>

        <div class="container-fluid page__container">

            <div class="card card-form__body card-body">
                <form method="post" action="{{ route('categories.update', $category->id) }}">
                    @csrf

                    @method('put')
                    @include('dashboard.partials._errors')

                    @foreach(config('locales.languages') as $key => $value)
                        <div class="form-group">
                            <label for="name[{{ $key }}]"> {{ trans('admin.categories') }} / {{ trans('admin.'. $key .'_name') }}</label>
                            <input id="name[{{ $key }}]" name="name[{{ $key }}]" type="text" class="form-control" placeholder="{{ trans('admin.'. $key .'_name') }}" value="{{ old('name.' . $key, $category->getTranslation('name', $key)) }}">
                        </div>
                    @endforeach

                    <div class="text-right mb-5">
                        <input type="submit" name="add" class="btn btn-success" value="{{ trans('admin.add') }}">
                    </div>
                </form>
            </div>
        </div>
        <!-- // END drawer-layout__content -->
    </div>
@endsection
