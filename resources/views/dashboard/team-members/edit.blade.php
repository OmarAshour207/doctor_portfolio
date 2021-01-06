@push('admin_scripts')
    <script type="text/javascript">
        var url = window.location.href;
        var path = url.split('/')[4];
        Dropzone.autoDiscover = false;
        $(document).ready(function () {
            $('#mainphoto').dropzone({
                url: '{{ route('upload.image') }}',
                paramName:'image',
                autoDiscover: false,
                uploadMultiple: false,
                maxFiles: 1,
                acceptedFiles: 'image/*',
                dictDefaultMessage: '{{ __('admin.upload_photo') }}',
                dictRemoveFile: '<button class="btn btn-danger"> <i class="fa fa-trash center"></i></button>',
                params: {
                    _token: '{{ csrf_token() }}',
                    path: path,
                    width: 500,
                    height: 600
                },
                addRemoveLinks: true,
                removedfile:function (file) {
                    var imageName = $('.image_name').val();
                    $.ajax({
                        dataType: 'json',
                        type: 'POST',
                        url: '{{ route('remove.image') }}',
                        data: {
                            _token: '{{ csrf_token() }}',
                            image: imageName,
                            path: path
                        }
                    });
                    var fmock;
                    return (fmock = file.previewElement) != null ? fmock.parentNode.removeChild(file.previewElement): void 0;
                },
                init: function () {

                    @if(!empty($teamMember->image))
                        var mock = { name: '{{ $teamMember->title }}', size: 2};
                        this.emit('addedfile', mock);
                        this.emit('thumbnail', mock, '{{ $teamMember->thumb_image }}');
                        this.emit('complete', mock);
                        $('.dz-progress').remove();
                    @endif

                        this.on("success", function (file, image) {
                        $('.image_name').val(image);
                    })
                }
            });
        });
    </script>
    <style type="text/css">

        .dropzone {
            width: 200px;
            height: 150px;
            min-height: 0px !important;
        }
    </style>
@endpush

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
                    <h1 class="m-0"> {{ trans('admin.team_members') }} </h1>
                </div>
            </div>
        </div>

        <div class="container-fluid page__container">

            <div class="card card-form__body card-body">
                <form method="post" action="{{ route('team-members.update', $teamMember->id) }}" enctype="multipart/form-data">
                    @csrf

                    @method('put')
                    @include('dashboard.partials._errors')


                    @foreach(config('locales.languages') as $key => $value)
                        <div class="form-group">
                            <label for="name[{{ $key }}]"> {{ trans('admin.team_members') }} / {{ trans('admin.'. $key .'_name') }}</label>
                            <input id="name[{{ $key }}]" name="name[{{ $key }}]" type="text" class="form-control" placeholder="{{ trans('admin.'. $key .'_name') }}" value="{{ old('name.' . $key, $teamMember->getTranslation('name', $key)) }}">
                        </div>
                    @endforeach


                    @foreach(config('locales.languages') as $key => $value)
                        <div class="form-group">
                            <label for="title[{{ $key }}]"> {{ trans('admin.team_members') }} / {{ trans('admin.'. $key .'_title') }}</label>
                            <input id="title[{{ $key }}]" name="title[{{ $key }}]" type="text" class="form-control" placeholder="{{ trans('admin.'. $key .'_title') }}" value="{{ old('title.' . $key, $teamMember->getTranslation('title', $key)) }}">
                        </div>
                    @endforeach

                    @foreach(config('locales.languages') as $key => $value)
                        <div class="form-group">
                            <label for="desc[{{ $key }}]"> {{ trans('admin.team_members') }} / {{ trans('admin.'. $key .'_description') }}</label>
                            <textarea id="desc[{{ $key }}]" name="description[{{ $key }}]" rows="4" class="form-control" placeholder="{{ trans('admin.post') }} / {{ trans('admin.'. $key .'_description') }}...">{{ old('description.' . $key, $teamMember->getTranslation('description', $key)) }}</textarea>
                        </div>
                    @endforeach

                    <div class="form-group">
                        <label for="category_id"> {{ trans('admin.team_members') }} / {{ trans('admin.categories') }}</label>
                        <select id="category_id" name="category_id" class="form-control select2">
                            @foreach($categories as $category)
                                <option value="{{ $category->id }}" {{ $category->id == $teamMember->category_id ? 'selected' : '' }}> {{ $category->name }} </option>
                            @endforeach
                        </select>
                    </div>

                    @foreach(config('locales.languages') as $key => $value)
                        <div class="form-group">
                            <label for="meta_tag[{{ $key }}]"> {{ trans('admin.team_members') }} / {{ trans('admin.'. $key .'_meta_tag') }}</label>
                            <input id="meta_tag[{{ $key }}]" name="meta_tag[{{ $key }}]" type="text" class="form-control" placeholder="{{ trans('admin.'. $key .'_meta_tag') }}" value="{{ old('meta_tag.' . $key, $teamMember->getTranslation('meta_tag', $key)) }}">
                        </div>
                    @endforeach

                    <div class="form-group">
                        <input class="image_name" type="hidden" name="image" value="{{ $teamMember->image }}">
                    </div>
                    <div class="form-group">
                        <label> {{ __('admin.photo') }} </label>
                        <div class="dropzone" id="mainphoto"></div>
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
