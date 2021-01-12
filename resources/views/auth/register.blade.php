@extends('site.first.layouts.app')

@section('content')
    @php
      $pageInfo = '';
        foreach ($pages as $page) {
            if ($page->slug == 'register') {
                $pageInfo = $page;
            }
        }
    @endphp
    <div class="page-title-area bg-7" style="background-image: url('{{ $pageInfo->page_image }}')">
        <div class="container">
            <div class="page-title-content">
                <h2>{{ $pageInfo->title }}</h2>
                <ul>
                    <li>
                        <a href="{{ url('/') }}">
                            {{ __('home.home') }}
                        </a>
                    </li>
                    <li>{{ __('admin.pages') }}</li>
                    <li class="active">{{ $pageInfo->title }}</li>
                </ul>
            </div>
        </div>
    </div>


    <section class="user-area-all-style sign-up-area ptb-100">
        <div class="container">
            <div class="section-title">
                <h2>{{ __('home.create_an_account') }}</h2>
                <p>{{ $pageInfo->description }}</p>
            </div>
            <div class="row">
                <div class="col-lg-6">
                    <div class="contact-form-action">
                        <form method="post" action="{{ route('register') }}">
                            @csrf
                            <div class="row">
                                <div class="col-md-12 col-sm-12">
                                    <div class="form-group">
                                        <input class="form-control @error('name') is-invalid @enderror" type="text" name="name" placeholder="{{ __('home.full_name') }}" value="{{ old('name') }}">
                                        @error('name')
                                            <span class="invalid-feedback" role="alert">
                                                <strong>{{ $message }}</strong>
                                            </span>
                                        @enderror
                                    </div>
                                </div>
                                <div class="col-md-12 col-sm-12">
                                    <div class="form-group">
                                        <input class="form-control @error('email') is-invalid @enderror" type="email" name="email" placeholder="{{ __('home.email') }}" {{ old('email') }}>
                                        @error('email')
                                            <span class="invalid-feedback" role="alert">
                                                <strong>{{ $message }}</strong>
                                            </span>
                                        @enderror
                                    </div>
                                </div>
                                <div class="col-md-12 col-sm-12">
                                    <div class="form-group">
                                        <input class="form-control @error('phone') is-invalid @enderror" type="text" name="phone" placeholder="{{ __('home.phone') }}" {{ old('phone') }}>
                                        @error('phone')
                                        <span class="invalid-feedback" role="alert">
                                                <strong>{{ $message }}</strong>
                                            </span>
                                        @enderror
                                    </div>
                                </div>
                                <div class="col-md-12 col-sm-12">
                                    <div class="form-group">
                                        <input class="form-control @error('password') is-invalid @enderror" type="password" name="password" placeholder="{{ __('Password') }}">
                                        @error('password')
                                            <span class="invalid-feedback" role="alert">
                                                <strong>{{ $message }}</strong>
                                            </span>
                                        @enderror
                                    </div>
                                </div>
                                <div class="col-md-12 col-sm-12 ">
                                    <div class="form-group">
                                        <input class="form-control @error('password_confirmation') is-invalid @enderror" type="password" name="password_confirmation" placeholder="{{ __('admin.confirm_password') }}">
                                        @error('password_confirmation')
                                            <span class="invalid-feedback" role="alert">
                                                <strong>{{ $message }}</strong>
                                            </span>
                                        @enderror
                                    </div>
                                </div>
                                <div class="col-12">
                                    <button class="default-btn btn-two" type="submit">
                                        {{ __('Register') }}
                                    </button>
                                </div>
                                <div class="col-12">
                                    <p class="account-desc">
                                        {{ __('home.already_have_an_account') }}
                                        <a href="{{ route('login') }}"> {{ __('Login') }}</a>
                                    </p>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="sign-in-img" style="background-image: url('{{ $pageInfo->page_image }}')"></div>
                </div>
            </div>
        </div>
    </section>

@endsection
