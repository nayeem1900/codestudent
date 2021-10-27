

@extends('frontend.layouts.master')
@section('content')<br>
    <section class="baner">
    <div class="container">


            <img src="{{url('frontend/image/foreign.jpg')}}" style="width:100%;">




    </div>
    </section><br>
    <!--about us-->


   <section class="table">
       <div class="container">

           <style>
               table, th, td {
                   border:1px solid black;
               }
           </style>
           <body>

           <h2 style="text-align: center">Teacher Information</h2>

           <table style="width:100%">
               <tr>
                   <th>Sl</th>
                   <th>ID</th>
                   <th>Image</th>
                   <th>Name</th>
                   <th>Mobile</th>

               </tr>
               @foreach($teachers as $key=>$teacher)
                   <tr>

                       <td>{{$key+1}}</td>
                       <td>{{$teacher->id_no}}</td>
                       <td><img src="{{(!empty($teacher->image))?url('upload/employee_images/'.$teacher->image):url('frontend/image/no_img.png')}}" style="width: 150px" height="160px"></td>
                       <td>{{$teacher->name}}</td>
                       <td>{{$teacher->mobile}}</td>

                   </tr>
               @endforeach
           </table>
           </body>

       </div>
   </section>




@endsection