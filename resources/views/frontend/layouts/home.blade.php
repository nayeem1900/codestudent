
@extends('frontend.layouts.master')
@section('content')

    <!--Top Section-->



    <!--header section-->

    <!--Marque section-->
    <section class="marquee">
      <div class="container">
          <div class="marquee">
              <marquee>সবাইকে মাস্ক পরে নাসিং ইনস্টিটিউটে আসার জন্য বিশেষ ভাবে অনুরোধ করা হল। || ভতর্ি চলিতেছে।</marquee>

          </div>
      </div>

    </section>
    <!--slider section ctrl+? mark shortcut-->
  <section class="slider">
    <div class="container">
        @include('frontend.layouts.slider')
    </div>


  </section><br>
    <!--slider bellow image-->

    <section class="intro">
      <div class="container">

          <div class="row ">
              <div class=" col-md-8 ">

                  <img src="{{asset('frontend/image/intro_1.jpg')}}" style="width: 100%;height: auto" >
              </div>
              <div class=" col-md-4">

                  <img src="{{asset('frontend/image/addmission.jpg')}}" style="width: 100%; height: auto">
              </div>

          </div><br>

          <div class="row">
              <div class=" col-md-8">

                  <img src="{{asset('frontend/image/intro_2.jpg')}}" style="width: 100%; height: auto">
              </div>

              <div class=" col-md-4">

                  <img src="{{asset('frontend/image/bb.jpg')}}" style="width: 100%; height: auto">
              </div>


          </div>

      </div>


    </section>






    <!--mission vission-->
    <section class="mission_vission">

        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    <h3 style="padding-top: 15px; padding-bottom: 5px; border-bottom: 1px solid #000000; width: 70%; font-size: 16px;" >Islami Bank Nursing Institute, Barishal</h3>
                </div>

            </div>
            <div class="row">
                <div class="col-md-6">
                    <img src="{{asset('backend/image/'.$about_school->image)}}" style="border: 1px solid #ddd;padding: 5px;
background: #EFEE03;border-radius: 30px; float: left; margin-right: 10px; ">
                    <p style="text-align: justify;"><strong>WHO WE ARE :</strong>
                        {{$about_school->title}}

                    </p>
                </div>
                <div class="col-md-6">
                    <img src="{{asset('backend/image/'.$principal_message->image)}}" style="border: 1px solid #ddd;padding: 5px;
background: #EFEE03;border-radius: 30px; float: left; margin-right: 10px; width: 225px" height="225px" ;>
                    <p style="text-align: justify;"><strong>Principal Message</strong>
                        {{$principal_message->title}}
                    </p>
                </div>
            </div>

        </div>
    </section>
    <!--Column Notice bord-->
    <section class="notice_board">
        <div class="container">
            <div class="row ">

                <div class="col-md-6">

                        <div class="card-header">Notice</div>

                            <marquee direction="up">
                                @foreach($notices as $key=>$notice)
                                   <a href=""> {{$notice->title}}<br></a>
                                    @endforeach
                            </marquee>


                </div>
                <div class="col-md-6">

                        <div class="card-header">
                            Importants Link
                        </div>
                        <ul class="list-group list-group-flush link">
                            <a href="http://ibfbd.org/">   Islami Bank Foundation </a>
                            <a href="http://www.bnmc.gov.bd/">Bangladesh Nursing Council </a>
                            <a href="https://www.islamibankbd.com/">Islami Bank Bangladesh Ltd</a>
                        </ul>

                </div>

            </div>


        </div>


    </section>


    <!--our service-->
   {{-- <section class="services">
        <div class="container" style="padding-top: 15px;">

            <ul class="nav nav-tabs">
                @php
                    $count_service = 0;
                @endphp
                @foreach($facilities as $key=> $facility)
                    <li class="nav-item">
                        <a href="#{{$facility->id}}" class="nav-link @if($count_service == 0){ active } @endif "data-bs-toggle="tab">{{$facility->short_title}}</a>
                    </li>
                    @php
                        $count_service++
                    @endphp
                @endforeach

            </ul>

            <div class="tab-content">
                @php
                    $count_service = 0;
                @endphp
                @foreach($facilities as $facility)
                    <div id="{{$facility->id}}" class="tab-pane container @if($count_service==0){ active } @endif">
                        <h3>{{$facility->short_title}}</h3>
                        <p>{{$facility->logng_title}}</p>
                    </div>
                    @php
                        $count_service++
                    @endphp
                @endforeach



            </div>

        </div>

    </section>--}}

    <!--footer-->


    <!--go to up-->
@endsection



