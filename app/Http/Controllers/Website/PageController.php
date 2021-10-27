<?php

namespace App\Http\Controllers\Website;

use App\Http\Controllers\Controller;
use App\Model\Facility;
use App\Model\Mission;
use App\Model\PrincipalMessage;
use App\Model\Result;
use App\User;
use Illuminate\Http\Request;
use App\Model\Logo;
use App\Model\Slider;
use Illuminate\Support\Carbon;
use Illuminate\Support\Facades\DB;

class PageController extends Controller
{


    public function index()
    {

       //return view('auth.login');
        $data['logo']=Logo::first();
        $data['facilities']=Facility::all();
        $data['principal_message']=PrincipalMessage::first();
        $data['about_school']=Mission::first();
        $data['sliders']=Slider::all();
        return view ('frontend.layouts.home',$data);


    }



    public function DetailAboutus(){
        $data['logo']=Logo::first();
        return view('frontend.pages.details-aboutus',$data);
    }


    public function teacherinfo(){
        $data['logo']=Logo::first();
        $data['teachers']=User::all();

        return view('frontend.pages.teacher_info',$data);
    }

    public function admissionInfo(){
        $data['logo']=Logo::first();


        return view('frontend.pages.admission_info',$data);
    }

    public function course(){
        $data['logo']=Logo::first();


        return view('frontend.pages.course',$data);
    }

    public function Facility(){
        $data['logo']=Logo::first();


        return view('frontend.pages.facility',$data);
    }

    public function Result(){
       // $data['date'] = Carbon::now();

        //$date = Carbon::now()->toDateTimeString();


      // $data['results']=Result::where('deadline'<='date')->get();

        //$data['results']=Result::select('date')->groupBy('date')->orderBy('id','desc')->get();
       // $data = Result::orderBy('id', 'ASC')->where('id', '=', Auth::user()->role_id)->first();

       $data['logo']=Logo::first();
       // $data['countResult']=Result::count();
        $data['results']=Result::all();



        return view('frontend.pages.result',$data);
    }
    public function Contact(){
        $data['logo']=Logo::first();


        return view('frontend.pages.contact',$data);
    }

}
