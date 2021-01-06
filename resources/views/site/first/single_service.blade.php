@extends('site.first.layouts.app')

@section('content')

    <div class="page-title-area bg-12" style="background-image: url('{{ $page->page_image }}')">
        <div class="container">
            <div class="page-title-content">
                <h2>{{ $page->title }}</h2>
                <ul>
                    <li>
                        <a href="{{ url('/') }}">
                            {{ __('home.home') }}
                        </a>
                    </li>
                    <li>{{ $page->title }}</li>
                    <li class="active">{{ __('home.service_details') }}</li>
                </ul>
            </div>
        </div>
        <div class="shape-1">
            <img src="{{ asset('site/part1/img/prevention/shape-1.png') }}" alt="Image">
        </div>
        <div class="shape-2">
            <img src="{{ asset('site/part1/img/prevention/shape-1.png') }}" alt="Image">
        </div>
        <div class="shape-3">
            <img src="{{ asset('site/part1/img/prevention/shape-1.png') }}" alt="Image">
        </div>
        <div class="shape-4">
            <img src="{{ asset('site/part1/img/prevention/shape-1.png') }}" alt="Image">
        </div>
    </div>


    <section class="services-details-area ptb-100">
        <div class="container">
            <div class="scrives-item-2 mt-4 ">
                <div class="row align-items-center">
                    <div class="col-lg-4">
                        <div class="services-img">
                            <img src="{{ $service->service_image }}" alt="Image">
                        </div>
                    </div>
                    <div class="col-lg-8">
                        <h3>{{ $service->title }}</h3>
                        <p>
                            {{ $service->description }}
                        </p>
                    </div>
                </div>
            </div>
            <div class="scrives-item-3 mt-4">
                <div class="row align-items-center">
                    <div class="col-lg-6">
                        <div class="social">
                            <ul class="social-link">

                                @php
                                    $socialSites = ['facebook', 'twitter', 'instagram', 'youtube'];
                                @endphp

                                @for($i = 0; $i < count($socialSites); $i++)
                                    @if(setting($socialSites[$i]) != '')
                                        <li>
                                            <a href="{{ setting($socialSites[$i]) }}">
                                                <i class="bx bxl-{{ $socialSites[$i] }}"></i>
                                            </a>
                                        </li>
                                    @endif
                                @endfor
                            </ul>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </section>


    <section class="subscribe-area">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-6">
                    <h2>{{ __('home.subscribe_now') }}</h2>
                    <p>{{ __('home.get_updates') }}</p>
                </div>
                <div class="col-lg-6">
                    @if (session('success'))
                        <div class="alert alert-success">
                            {{ __('home.sent_successfully') }}
                        </div>
                    @endif
                    <form method="post" action="{{ route('subscribe.newsletter') }}" class="newsletter-form" style="position: relative">
                        @csrf
                        @include('dashboard.partials._errors')
                        <input type="email" class="form-control" placeholder="{{ __('home.email_contact') }}" name="email" required autocomplete="off">
                        <button class="default-btn" type="submit">
                            {{ __('home.subscribe') }}
                        </button>
                        <div id="validator-newsletter" class="form-result"></div>
                    </form>
                </div>
            </div>
        </div>
    </section>

@endsection
