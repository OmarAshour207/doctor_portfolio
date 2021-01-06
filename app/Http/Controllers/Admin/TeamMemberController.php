<?php

namespace App\Http\Controllers\Admin;

use App\Category;
use App\Http\Controllers\Controller;
use App\TeamMember;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use Intervention\Image\Facades\Image;

class TeamMemberController extends Controller
{
    public function index()
    {
        $teamMembers = TeamMember::with('category')->paginate(10);
        return view('dashboard.team-members.index', compact('teamMembers'));
    }

    public function create()
    {
        $categories = Category::latest()->get();
        return view('dashboard.team-members.create', compact('categories'));
    }

    public function store(Request $request)
    {
        $attr = [];
        foreach (config('locales.languages') as $key => $value) {
            $attr['name.' . $key]           = 'required|string';
            $attr['title.' . $key]          = 'required|string';
            $attr['description.' . $key]    = 'required|string';
            $attr['meta_tag.' . $key]       = 'sometimes|nullable|string';
        }
        $attr['category_id'] = 'required|numeric';

        $data = $request->validate($attr);
        $data['image'] = $request->image;

        TeamMember::create($data);
        session()->flash('success', __('admin.added_successfully'));
        return redirect()->route('team-members.index');
    }

    public function edit(TeamMember $teamMember)
    {
        $categories = Category::latest()->get();
        return view('dashboard.team-members.edit',
            compact('teamMember', 'categories'));
    }

    public function update(Request $request, TeamMember $teamMember)
    {
        $attr = [];
        foreach (config('locales.languages') as $key => $value) {
            $attr['name.' . $key]           = 'required|string';
            $attr['title.' . $key]          = 'required|string';
            $attr['description.' . $key]    = 'required|string';
            $attr['meta_tag.' . $key]       = 'sometimes|nullable|string';
        }
        $attr['category_id'] = 'required|numeric';

        $data = $request->validate($attr);
        $data['image'] = $request->image;

        $teamMember->update($data);
        session()->flash('success', __('admin.updated_successfully'));
        return redirect()->route('team-members.index');
    }

    public function destroy(TeamMember $teamMember)
    {
        if($teamMember->image != null) {
            Storage::disk('local')->delete('public/team-members/' . $teamMember->image);
            Storage::disk('local')->delete('public/team-members/thumbnail/' . $teamMember->image);
        }
        $teamMember->delete();
        session()->flash('success', __('admin.deleted_successfully'));
        return redirect()->route('team-members.index');
    }
}
