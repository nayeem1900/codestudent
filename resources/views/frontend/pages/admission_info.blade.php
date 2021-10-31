

@extends('frontend.layouts.master')
@section('content')

    <section class="baner">
        <div class="row ">
            <div class="col-md-12 "><img src="{{url('frontend/image/about_us.jpg')}}" style="width: 2000px; height: 600px">
            </div>
        </div>

    </section><br>

    <!--about us-->
<section class="admission">

  <div class="row">

      <div class=" col-md-8"> <img src="{{url('frontend/image/intro_1.jpg')}}"style="width:100%;height: auto"> </div>

 <div class="col-md-4">

         <div class="card" style="width: 18rem;">
             <div class="card-header"style="background-color: darkgreen">
                 Notice
             </div>
             <ul class="list-group list-group-flush">
                 @foreach($notices as $key=>$notice)
                     <li class="list-group-item">
                         <a href="upload/result_images/{{($notice->t_download)}}" download="{{($notice->t_download)}}">
                             <button type="button" class="btn btn-primary">
                                 <i class="glyphicon glyphicon-download">
                                 </i>{{$notice->title}}</button>
                         </a>


                     </li>

                 @endforeach
             </ul>
         </div>
         <br>

     <div class="card" style="width: 18rem;">
         <div class="card-header"style="background-color: darkgreen">
             Result
         </div>
         <ul class="list-group list-group-flush">
             @foreach($results as $key=>$result)
                 <li class="list-group-item">
                     <a href="upload/result_images/{{($result->t_download)}}" download="{{($result->t_download)}}">
                         <button type="button" class="btn btn-primary">
                             <i class="glyphicon glyphicon-download">
                             </i>{{$result->title}}</button>
                     </a>


                 </li>

             @endforeach
         </ul>
     </div>




 </div>


  </div><br>


    <div class="row">


        <div class=" col-md-8"> <img src="{{url('frontend/image/intro_2.jpg')}}"style="width:100%;height: auto"> </div>

        <div class="col-md-4">



        </div>


    </div>





</section>






@endsection