<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Storage;
use Spatie\Translatable\HasTranslations;

class Service extends Model
{
    use HasTranslations;

    protected $fillable = [
        'title',
        'description',
        'meta_tag',
        'image'
    ];

    public $translatable = [
        'title',
        'description',
        'meta_tag'
    ];

    // strip tags to customize unicode
    protected function asJson($value)
    {
        return json_encode($value, JSON_UNESCAPED_UNICODE);
    }

    public function getServiceImageAttribute()
    {
        return Storage::url('public/services/' . $this->image);
    }

    public function getThumbImageAttribute()
    {
        return Storage::url('public/services/thumbnail/' . $this->image);
    }

}
