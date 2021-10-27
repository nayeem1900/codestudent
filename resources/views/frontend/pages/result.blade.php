

@extends('frontend.layouts.master')
@section('content')<br>
<section class="baner">
    <div class="container">


        <img src="{{url('frontend/image/nur1.jpg')}}" style="width:100%;height:auto">




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
                        <table class="table table-bordered border-primary" style="overflow-x:auto;">
                            <tr>
                                <th>Sl</th>
                                <th>Exam Name</th>
                                <th>Download</th>
                            </tr>
                            <tr>

                                @foreach($results as $key=>$result)

                                    <td>{{$key+1}}</td>
                                    <td>{{$result->title}}</td>
                                    <td> <a href="upload/result_images/{{($result->t_download)}}" download="{{($result->t_download)}}">
                                            <button type="button" class="btn btn-primary">
                                                <i class="glyphicon glyphicon-download">
                                                </i>Download</button>
                                        </a>


                                    </td>

                            </tr>
                            @endforeach

                        </table>


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

        </div>



    </div>
</section>




@endsection

