<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Category;

class CategoryController extends Controller
{

    public function index()
    {
        $categories = Category::paginate(10);
        return view('dashboard.categories.index', compact('categories'));
    }

    public function create()
    {
        return view('dashboard.categories.create');
    }

    public function store(Request $request)
    {
        $attr = [];
        foreach (config('locales.languages') as $key => $value) {
            $attr['name.' . $key] = 'required|string';
        }

        $data = $request->validate($attr);

        Category::create($data);
        session()->flash('success', trans('admin.added_successfully'));
        return redirect()->route('categories.index');
    }

    public function edit(Category $category)
    {
        return view('dashboard.categories.edit', compact('category'));
    }

    public function update(Request $request, Category $category)
    {
        $attr = [];
        foreach (config('locales.languages') as $key => $value) {
            $attr['name.' . $key] = 'required|string';
        }

        $data = $request->validate($attr);

        $category->update($data);
        session()->flash('success', trans('admin.added_successfully'));
        return redirect()->route('categories.index');
    }

    public function destroy(Category $category)
    {
        $category->delete();
        session()->flash('success', trans('admin.deleted_successfully'));
        return redirect()->route('categories.index');
    }

}
