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


    <section class="doctors-area-two ptb-100">
        <div class="container">

            <div class="row align-items-center">
                <div class="col-lg-12">
                    <form method="get">
                        <div class="row">
                            <div class="col-lg-6">
                                <select class="form-control select2" name="search">
                                    <option> {{ __('home.select_search_category') }} </option>
                                    @foreach($categories as $category)
                                        <option value="{{ $category->id }}" {{ old('search', request('search')) == $category->id ? 'selected' : '' }}> {{ $category->name }} </option>
                                    @endforeach
                                </select>
                            </div>
                            <div class="col-lg-6">
                                <button class="default-btn" type="submit">
                                    {{ __('home.search') }}
                                </button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
            <br>
            <br>
            <br>

            <div class="section-title">
                <h2>{{ __('home.meet_doctors') }}</h2>
            </div>
            <div class="row">
                @foreach($teamMembers as $teamMember)
                    <div class="col-lg-4 col-sm-6">
                        <div class="single-doctor">
                            <a href="{{ url('/doctors/' . $teamMember->id . '/' . $teamMember->name) }}">
                                <img src="{{ $teamMember->member_image }}" alt="Image">
                            </a>
                            <a href="{{ url('/doctors/' . $teamMember->id . '/' . $teamMember->name) }}">
                                <h3>{{ $teamMember->name }}</h3>
                            </a>
                            <br>
                            <span class="top-title">{{ $teamMember->title }}</span>
                            <p>{{ Str::limit($teamMember->description, 200) }}</p>
                            <a href="{{ url('/') }}" class="btn btn-primary">
                                {{ __('home.book_appointment') }}
                            </a>
                        </div>
                    </div>
                @endforeach
                <div class="col-lg-12">
                    <div class="page-navigation-area">
                        <nav aria-label="Page navigation example text-center">
                            <ul class="pagination">
                                {{ $teamMembers->appends(request()->query())->links() }}
                            </ul>
                        </nav>
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
