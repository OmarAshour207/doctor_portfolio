<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Storage;
use Spatie\Translatable\HasTranslations;

class Project extends Model
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


    public function getProjectImageAttribute()
    {
        return Storage::url('public/projects/' . $this->image);
    }

    public function getThumbImageAttribute()
    {
        return Storage::url('public/projects/thumbnail/' . $this->image);
    }

}
