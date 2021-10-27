

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
        <div class="row">

            <div class="col-md-9">
                <div class="card">
                    <div class="card-header"style="background-color: darkgreen">
                       Facilities
                    </div>
                    <div class="card-body">
                        <h1 class="display-5">Hostel</h1>
                        <h1 class="display-5">Library</h1>
                        <h1 class="display-5">Provide Healty Food</h1>


                    </div>
                </div>

            </div>


            <div class="col-md-3">
                <div class="card" style="width: 18rem;">
                    <div class="card-header"style="background-color: darkgreen">
                        Notice Board
                    </div>
                    <ul class="list-group list-group-flush">
                        <li class="list-group-item">An item</li>
                        <li class="list-group-item">A second item</li>
                        <li class="list-group-item">A third item</li>
                    </ul>
                </div><br>

                <div class="card" style="width: 18rem;">
                    <div class="card-header"style="background-color: darkgreen">
                        Result
                    </div>
                    <ul class="list-group list-group-flush">
                        <li class="list-group-item">An item</li>
                        <li class="list-group-item">A second item</li>
                        <li class="list-group-item">A third item</li>
                    </ul>
                </div>

            </div>

        </div>



    </div>
</section>




@endsection