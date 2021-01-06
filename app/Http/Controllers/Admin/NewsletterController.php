<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Newsletter;
use Illuminate\Http\Request;

class NewsletterController extends Controller
{
    public function index()
    {
        $newsletters = Newsletter::paginate(10);
        return view('dashboard.newsletters.index', compact('newsletters'));
    }

    public function create()
    {
        return view('dashboard.newsletters.create');
    }

    public function store(Request $request)
    {
        $request->validate([
            'email'     => 'required|string|email|unique:users'
        ]);

        Newsletter::create($request->only('email'));
        session()->flash('success', trans('admin.added_successfully'));
        return redirect()->route('newsletters.index');
    }

    public function edit(Newsletter $newsletter)
    {
        return view('dashboard.newsletters.edit', compact('newsletter'));
    }

    public function update(Request $request, Newsletter $newsletter)
    {
        $data = $request->validate([
            'email'     => 'required|string|email|unique:users,email,' . $newsletter->email
        ]);

        $newsletter->update($data);
        session()->flash('success', trans('admin.added_successfully'));
        return redirect()->route('newsletters.index');
    }

    public function destroy(Newsletter $newsletter)
    {
        $newsletter->delete();
        session()->flash('success', trans('admin.deleted_successfully'));
        return redirect()->route('newsletters.index');
    }
}
