@extends('site.first.layouts.app')

@section('content')
    @php
        $pageInfo = '';
          foreach ($pages as $page) {
              if ($page->slug == 'login') {
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

    <section class="user-area-all-style log-in-area ptb-100">
        <div class="container">
            <div class="section-title">
                <h2>{{ $pageInfo->title }}</h2>
                <p>{{ $pageInfo->description }}</p>
            </div>
            <div class="row">
                <div class="col-lg-6">
                    <div class="contact-form-action">
                        <form method="post" action="{{ route('login') }}">
                            @csrf
                            @include('dashboard.partials._errors')
                            <div class="row">
                                <div class="col-12">
                                    <div class="form-group">
                                        <input class="form-control" type="text" name="email" value="{{ old('email') }}" placeholder="{{ __('home.email') }}">
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="form-group">
                                        <input class="form-control" type="password" name="password" placeholder="{{ __('Password') }}">
                                    </div>
                                </div>
                                <div class="col-lg-6 col-sm-6 form-condition">
                                    <div class="agree-label">
                                        <input type="checkbox" id="chb1" name="remember" {{ old('remember') ? 'checked' : '' }}>
                                        <label for="chb1">
                                            {{ __('Remember Me') }}
                                        </label>
                                    </div>
                                </div>
                                <div class="col-12">
                                    <button class="default-btn btn-two" type="submit">
                                        {{ $pageInfo->title }}
                                    </button>
                                </div>
                                <div class="col-12">
                                    <p class="account-desc">
                                        {{ __('home.not_a_member') }}
                                        <a href="{{ route('register') }}">{{ __('Register') }}</a>
                                    </p>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="log-in-img" style="background-image: url('{{ $pageInfo->page_image }}')"></div>
                </div>
            </div>
        </div>
    </section>

@endsection
