

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
         <div class="card-header">
             Notice Board
         </div>
         <ul class="list-group list-group-flush">
             <li class="list-group-item">An item</li>
             <li class="list-group-item">A second item</li>
             <li class="list-group-item">A third item</li>
         </ul>
     </div><br>

     <div class="card" style="width: 18rem;">
         <div class="card-header">
             Result
         </div>
         <ul class="list-group list-group-flush">
             <li class="list-group-item">An item</li>
             <li class="list-group-item">A second item</li>
             <li class="list-group-item">A third item</li>
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