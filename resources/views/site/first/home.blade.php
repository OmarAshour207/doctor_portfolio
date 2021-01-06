@extends('site.first.layouts.app')

@section('content')


    <section class="hero-slider-area hero-slider-area-eight">
        <div class="hero-slider-wrap-eight owl-carousel owl-theme">
            @foreach ($sliders as $index => $slider)
                <div class="slider-item" style="background-image: url('{{ $slider->slider_image }}')">
                    <div class="d-table">
                        <div class="d-table-cell">
                            <div class="container">
                                <div class="slider-text one">
                                    <h1>{{ $slider->title }}</h1>
                                    <p>{{ $slider->description }}</p>
                                    <div class="slider-btn">
                                        <a class="default-btn" href="#">
                                            {{ __('home.book_appointment') }}
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            @endforeach
        </div>
    </section>


    @foreach($pages as $page)
        @if ($page->slug == 'about')
            <section class="about-area pb-130">
                <div class="container">
                    <div class="row align-items-center">
                        <div class="col-lg-6">
                            <div class="about-img">
                                <img src="{{ $page->page_image }}" alt="Image">
                                <div class="shape-1">
                                    <img src="{{ asset('site/part1/img/about/shape-1.png') }}" alt="Image">
                                </div>
                                <div class="shape-2">
                                    <img src="{{ asset('site/part1/img/about/shape-2.png') }}" alt="Image">
                                </div>
                                <div class="shape-3">
                                    <img src="{{ asset('site/part1/img/about/shape-3.png') }}" alt="Image">
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="about-content">
                                <h2>{{ $page->title }}</h2>
                                <p>
                                    {{ $page->description }}
                                </p>
                                <a href="{{ url($page->slug) }}" class="default-btn">
                                    {{ $page->title }}
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        @endif
    @endforeach


    <section class="services-area bg pt-100 pb-70">
        <div class="container">
            <div class="section-title">
                <h2>{{ __('home.activities') }}</h2>
            </div>
            <div class="row">
                @foreach($projects as $index => $project)
                    <div class="col-lg-4 col-sm-6">
                        <div class="single-services">
                            <span class="flaticon-man"></span>
                            <h3>{{ $project->title }}</h3>
                            <p>{{ Str::limit($project->description, 100) }}</p>
                            <a href="{{ url('/projects/' . $project->id . '/' . $project->title) }}" class="read-more">
                                {{ __('home.read_more') }}
                                <i class="bx bx-plus"></i>
                            </a>
                            <div class="services-shape">
                                <img src="{{ asset('site/part1/img/services-card-shape.png') }}" alt="Image">
                            </div>
                        </div>
                    </div>
                    @if($index == 2)
                        @break
                    @endif
                @endforeach
            </div>
        </div>
    </section>


    <section class="doctors-area pt-100 pb-70">
        <div class="container">
            <div class="section-title">
                <h2>{{ __('home.meet_doctors') }}</h2>
            </div>
            <div class="doctors-wrap owl-carousel owl-theme">
                @foreach($teamMembers as $teamMember)
                    <div class="single-doctor">
                        <a href="{{ url('doctors/' . $teamMember->id . '/' . $teamMember->name) }}">
                            <img src="{{ $teamMember->member_image }}" alt="Image">
                        </a>
                        <a href="{{ url('doctors/' . $teamMember->id . '/' . $teamMember->name) }}">
                            <h3>{{ $teamMember->name }}</h3>
                        </a>
                        <br>
                        <span class="top-title">{{ $teamMember->title }}</span>
                        <p>{{ Str::limit($teamMember->description, 100) }}</p>
                    </div>
                @endforeach
            </div>
        </div>
    </section>


    <section class="our-work-area pt-100 pb-70">
        <div class="container">
            <div class="section-title">
                <h2>{{ __('home.activities') }}</h2>
            </div>
            <div class="work-wrap owl-carousel owl-theme">
                @foreach($projects as $index => $project)
                    <div class="single-work">
                        <img src="{{ $project->project_image }}" alt="Image">
                        <h3 class="work-title">
                            <i class="flaticon-kidney"></i>
                            {{ $project->title }}
                        </h3>
                        <div class="work-content-wrap">
                            <div class="work-content">
                                <h3>{{ $project->title }}</h3>
                                <p>{{ Str::limit($project->description, 100) }}</p>
                                <a href="{{ url('/projects/' . $project->id . '/' . $project->title) }}" class="read-more">
                                    {{ __('home.read_more') }}
                                    <i class="bx bx-plus"></i>
                                </a>
                            </div>
                        </div>
                    </div>
                @endforeach
            </div>
        </div>
        <div class="shape">
            <img src="{{ asset('site/part1/img/shape/work-shape.png') }}" alt="Image">
        </div>
    </section>


    <section class="counter-area pt-100 pb-70">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-sm-6">
                    <div class="single-counter">
                        <i class="flaticon-tick"></i>
                        <h2>
                            <span class="odometer" data-count="{{ $services_count }}">00</span>
                            <span class="target">+</span>
                        </h2>
                        <p>{{ __('home.service') }}</p>
                    </div>
                </div>
                <div class="col-lg-4 col-sm-6">
                    <div class="single-counter">
                        <i class="flaticon-trophy"></i>
                        <h2>
                            <span class="odometer" data-count="{{ $projects_count }}">00</span>
                            <span class="traget">+</span>
                        </h2>
                        <p>{{ __('home.project') }}</p>
                    </div>
                </div>
                <div class="col-lg-4 col-sm-12">
                    <div class="single-counter">
                        <i class="flaticon-experience"></i>
                        <h2>
                            <span class="odometer" data-count="{{ $team_count }}">00</span>
                            <span class="traget">+</span>
                        </h2>
                        <p>{{ __('admin.team_members') }}</p>
                    </div>
                </div>
            </div>
        </div>
        <div class="shape-wrap">
            <div class="shape-1">
                <img src="{{ asset('site/part1/img/shape/counter-shape.png') }}" alt="Image">
            </div>
            <div class="shape-2">
                <img src="{{ asset('site/part1/img/shape/counter-shape.png') }}" alt="Image">
            </div>
        </div>
    </section>


    @foreach($pages as $page)
        @if ($page->slug == 'contact-us')
            <section class="emergency-area">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="emergency-content ptb-100">
                                <h2>{{ $page->title }}</h2>
                                <p>{{ $page->description }}</p>
                                <ul>
                                    <li class="active">
                                        <i class="bx bx-phone-call"></i>
                                        <span>{{ __('home.call_us') }}</span>
                                        <h3><a href="tel:{{ setting('phone') }}">{{ setting('phone') }}</a></h3>
                                    </li>
                                    <li>
                                        <i class="bx bx-envelope"></i>
                                        <span>{{ __('home.email_contact') }}</span>
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
                            <div class="emergency-img" style="background-image: url('{{ $page->page_image }}')"></div>
                        </div>
                    </div>
                </div>
                <div class="shape">
                    <img src="{{ asset('site/part1/img/shape/emergency-shape.png') }}" alt="Image">
                </div>
            </section>
        @endif
    @endforeach


    <section class="client-area c-bg pt-100 pb-70">
        <div class="container">
            <div class="section-title">
                <span class="top-title">{{ __('admin.testimonials') }}</span>
                <h2>{{ __('home.what_people_say') }}</h2>
            </div>
            <div class="client-wrap owl-carousel owl-theme">
                @foreach($testimonials as $testimonial)
                    <div class="single-client">
                        <img src="{{ $testimonial->thumb_image }}" alt="img" style="height: 60px;width: 60px;">
                        <p>{{ $testimonial->description }}</p>
                        <ul>
                            @for($i = 0; $i < $testimonial->stars; $i++)
                                <li>
                                    <i class="bx bxs-star"></i>
                                </li>
                            @endfor
                        </ul>
                        <h3>{{ $testimonial->name }}</h3>
                        <span>{{ $testimonial->title }}</span>

                    </div>
                @endforeach
            </div>
        </div>
    </section>


    <section class="blog-area pt-100 pb-70">
        <div class="container">
            <div class="section-title">
                <h2>{{ __('home.resources') }}</h2>
            </div>
            <div class="row">
                @foreach($blogs as $index => $blog)
                    <div class="col-lg-4 col-md-6 {{ $index == 2 ? 'offset-md-3 offset-lg-0' : '' }}">
                        <div class="single-blog">
                            <a href="{{ url('/blogs/' . $blog->id . '/' . $blog->title) }}">
                                <img src="{{ $blog->blog_image }}" alt="Image">
                            </a>
                            <span>{{ date('M Y d', strtotime($blog->created_at)) }}</span>
                            <div class="blog-content">
                                <a href="{{ url('/blogs/' . $blog->id . '/' . $blog->title) }}">
                                    <h3>{{ $blog->title }}</h3>
                                </a>
                                <a href="{{ url('/blogs/' . $blog->id . '/' . $blog->title) }}" class="read-more">
                                    {{ __('home.read_more') }}
                                    <i class="bx bx-plus"></i>
                                </a>
                            </div>
                        </div>
                    </div>
                @endforeach
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
