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
                    <li>{{ __('admin.pages') }}</li>
                    <li class="active">{{ $page->title }}</li>
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


    <section class="second-facility-area pt-100 pb-70">
        <div class="container">
            <div class="row">
                @foreach($projects as $project)
                    <div class="col-lg-4 col-sm-6">
                        <div class="second-facility-item">
                            <img src="{{ $project->thumb_image }}" alt="Image">
                            <h3>{{ $project->title }}</h3>
                            <p>{{ Str::limit($project->description, 100) }}</p>
                            <a href="{{ url('/projects/' . $project->id . '/' . $project->title) }}" class="read-more">
                                {{ __('home.read_more') }}
                                <i class="bx bx-plus"></i>
                            </a>
                        </div>
                    </div>
                @endforeach
            </div>
            {{ $projects->appends(request()->query())->links() }}
        </div>
    </section>


    <section class="emergency-area">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-6">
                    <div class="emergency-content ptb-100">
                        <h2>{{ $contactUs->title }}</h2>
                        <p>{{ $contactUs->description }}</p>
                        <ul>
                            <li class="active">
                                <i class="bx bx-phone-call"></i>
                                <span>{{ __('home.call_us') }}</span>
                                <h3>{{ setting('phone') }}</h3>
                            </li>
                            <li>
                                <i class="bx bx-envelope"></i>
                                <span>{{ __('home.contact_us') }}</span>
                                <h3>
                                    <a href="mailto:{{ setting('email') }}">
                                        {{ setting('email') }}
                                    </a>
                                </h3>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-6 pr-0">
                    <div class="emergency-img" style="background-image: url('{{ $contactUs->page_image }}')"></div>
                </div>
            </div>
        </div>
        <div class="shape">
            <img src="{{ asset('site/part1/img/shape/emergency-shape.png') }}" alt="Image">
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
