<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Storage;
use Spatie\Translatable\HasTranslations;

class Blog extends Model
{
    use HasTranslations;

    protected $fillable = [
        'title',
        'content',
        'author',
        'meta_tag',
        'image'
    ];

    public $translatable = [
        'title',
        'content',
        'author',
        'meta_tag'
    ];


    // strip tags to customize unicode
    protected function asJson($value)
    {
        return json_encode($value, JSON_UNESCAPED_UNICODE);
    }

    public function getBlogImageAttribute()
    {
        return Storage::url('public/blogs/' . $this->image);
    }

    public function getThumbImageAttribute()
    {
        return Storage::url('public/blogs/thumbnail/' . $this->image);
    }
}
