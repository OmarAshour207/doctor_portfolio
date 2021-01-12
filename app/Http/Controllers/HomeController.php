<?php

namespace App\Http\Controllers;

use App\Blog;
use App\Category;
use App\Newsletter;
use App\Page;
use App\Project;
use App\Rate;
use App\Service;
use App\Slider;
use App\TeamMember;
use App\Testimonial;
use App\Visitor;
use App\WebsiteSetting;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class HomeController extends Controller
{
    public function changeLanguage($language)
    {
        session()->has('lang') ? session()->forget('lang') : '';
        session()->put('lang', $language);
        return redirect()->back();
    }

    public function HomePage()
    {
        $this->checkVisitor();

        $websiteSettings = WebsiteSetting::first();
        $page_filter = $websiteSettings->page_filter != null ? unserialize($websiteSettings->page_filter) : '';
        $services = Service::orderBy('id', 'desc')->limit(6)->get();
        $projects = Project::latest()->take(6)->get();
        $teamMembers = TeamMember::where('status', 1)->latest()->limit(4)->get();
        $testimonials = Testimonial::where('status', 1)->orderBy('id', 'desc')->limit(3)->get();
        $blogs = Blog::orderBy('id', 'desc')->limit(3)->get();
        $themeName = getThemeName();
        $sliders = Slider::orderBy('id', 'desc')->limit(3)->get();

        $services_count = Service::all()->count();
        $projects_count = Project::all()->count();
        $team_count = TeamMember::all()->count();

        $pages = Page::where('status', 1)->get();

        return view('site.' . $themeName . '.home',
                    compact('page_filter', 'sliders',
                            'services', 'teamMembers',
                            'testimonials', 'blogs',
                            'services_count', 'projects_count',
                            'team_count', 'pages', 'projects'));
    }

    public function checkVisitor()
    {
        $ip = $_SERVER['REMOTE_ADDR'];
        $page = \Request::segment(1) ?? 'home';

        $visitors = DB::table('visitors')
                ->where('ip', $ip)
                ->where('page', $page)
                ->latest()
                ->first();

        if($visitors != null) {
            $created = Carbon::parse($visitors->created_at);

            if(!$created->isCurrentDay()) {
                $this->createVisitor($ip, $page);
            }
        }else {
            $this->createVisitor($ip, $page);
        }
    }

    protected function createVisitor($ip, $page)
    {
        Visitor::create([
            'ip'    => $ip,
            'page'  => $page
        ]);
    }

    public function aboutPage()
    {
        $this->checkVisitor();

        $pages = Page::where('status', 1)->get();
        $teamMembers = TeamMember::where('status', 1)->latest()->limit(4)->get();

        $services_count = Service::all()->count();
        $projects_count = Project::all()->count();
        $team_count = TeamMember::all()->count();


        $aboutUs = $this->getPageInfo($pages, 'about');

        return view('site.' . getThemeName() . '.about',
            compact('pages', 'teamMembers',
                    'services_count', 'projects_count',
                    'team_count', 'aboutUs'));
    }

    public function blogsPage()
    {
        $this->checkVisitor();

        $blogs = Blog::latest()->paginate(9);
        $pages = Page::where('status', 1)->get();
        $page = $this->getPageInfo($pages, 'blogs');
        $AboutUs = $this->getPageInfo($pages, 'about');

        return view('site.' . getThemeName() . '.blogs',
                compact('blogs', 'pages',
                                'AboutUs', 'page'));
    }

    public function showBlog($id, $title)
    {
        $blog = Blog::findOrFail($id);

        $latest_blogs = Blog::where('id', '!=', $id)
                            ->latest()
                            ->take(4)
                            ->get();
        $pages = Page::where('status', 1)->get();
        $AboutUs = $this->getPageInfo($pages, 'about');
        $page = $this->getPageInfo($pages, 'blogs');

        return view('site.' . getThemeName() . '.single_blog',
                compact('blog', 'latest_blogs',
                                'pages', 'AboutUs', 'page'));
    }

    public function projectsPage()
    {
        $this->checkVisitor();
        $projects = Project::latest()->paginate(6);
        $pages = Page::where('status', 1)->get();
        $contactUs = $this->getPageInfo($pages, 'contact-us');
        $page = $this->getPageInfo($pages, 'projects');


        return view('site.' . getThemeName() . '.projects',
                compact('projects', 'pages',
                                'contactUs', 'page'));
    }

    public function singleProject($id, $title)
    {
        $project = Project::FindOrFail($id);

        $pages = Page::where('status', 1)->get();
        $page = $this->getPageInfo($pages, 'projects');

        return view('site.' . getThemeName() . '.single_project',
                compact('project', 'pages', 'page'));
    }

    public function servicesPage()
    {
        $this->checkVisitor();

        $services = Service::latest()->paginate(6);

        $pages = Page::where('status', 1)->get();
        $page = $this->getPageInfo($pages, 'services');
        $contactUs = $this->getPageInfo($pages, 'contact-us');

        $projects = Project::latest()->limit(4)->get();

        return view('site.' . getThemeName() . '.services',
                compact('services','pages',
                                'contactUs', 'projects',
                                'page'));
    }

    public function SingleService($id, $title)
    {
        $service = Service::findOrFail($id);

        $latest_services = Service::latest()->take(6)->get();

        $pages = Page::where('status', 1)->get();
        $page = $this->getPageInfo($pages, 'services');
        return view('site.' . getThemeName() . '.single_service',
                compact('service', 'latest_services',
                                'pages', 'page'
                ));
    }

    public function contact()
    {
        $this->checkVisitor();

        $pages = Page::where('status', 1)->get();

        $page = $this->getPageInfo($pages, 'contact-us');

        return view('site.' . getThemeName() . '.contact',
                compact( 'pages', 'page'));
    }

    public function TeamMembersPage()
    {
        $this->checkVisitor();

        $pages = Page::where('status', 1)->get();
        $page = $this->getPageInfo($pages, 'doctors');

        $teamMembers = TeamMember::where('status', 1)->whenSearch(\request()->search)->latest()->paginate(6);
        $categories = Category::latest()->get();

        return view('site.first.doctors',
                compact('pages', 'teamMembers',
                                'page', 'categories'));
    }

    public function showTeamMember($id, $name)
    {
        $pages = Page::where('status', 1)->get();
        $page = $this->getPageInfo($pages, 'doctors');
        $teamMember = TeamMember::where('status', 1)->findOrFail($id);
        $testimonials = Testimonial::where('status', 1)->latest()->take(2)->get();

        return view('site.first.single_team_member',
            compact('pages', 'teamMember',
                            'testimonials', 'page'));

    }

    protected function getPageInfo($pages, $slug)
    {
        foreach ($pages as $page) {
            if ($page->slug == $slug) {
                return $page;
            }
        }
    }

    public function rateDoctor(Request $request, $name)
    {
        $data = $request->validate([
            'stars'         => 'required|numeric|min:1',
            'description'   => 'sometimes|nullable|string'
        ]);
        $data['doctor_name'] = $name;

        Rate::create($data);
        session()->flash('success', __('admin.added_successfully'));
        return redirect()->back();
    }

    public function subscribeNewsletter(Request $request)
    {
        $request->validate([
            'email'     => 'required|string|email|unique:users'
        ]);

        Newsletter::create($request->only('email'));
        session()->flash('success', __('admin.added_successfully'));
        return redirect()->back();
    }

}
