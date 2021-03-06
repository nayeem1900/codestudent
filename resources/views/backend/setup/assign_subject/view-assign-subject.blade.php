@extends('backend.layouts.master')

@section('content')
 @php
    $access = App\Role::orderBy('id', 'ASC')->where('id', '=', Auth::user()->role_id)->first();
    $access_submenu = App\Role_submenu::orderBy('id', 'ASC')->where('id', '=', Auth::user()->role_id)->first();
    $access_action = App\Role_action::orderBy('id', 'ASC')->where('id', '=', Auth::user()->role_id)->first();
    @endphp
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <div class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1 class="m-0 text-dark">Manage Assign Subject</h1>
                    </div><!-- /.col -->
                    <div class="col-sm-6">
                        <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a href="#">Home</a></li>
                            <li class="breadcrumb-item active">Assign Subject</li>
                        </ol>
                    </div><!-- /.col -->
                </div><!-- /.row -->
            </div><!-- /.container-fluid -->
        </div>
        <!-- /.content-header -->

        <!-- Main content -->
        <section class="content">
            <div class="container-fluid">
                <!-- Small boxes (Stat box) -->

                <!-- /.row -->
                <!-- Main row -->
                <div class="row">
                    <!-- Left col -->
                    <section class="col-md-12">
                        <!-- Custom tabs (Charts with tabs)-->


                        <div class="card">
                            <div class="card-header">
                                <h3>Assign Subject List

                                      @if($access_action->assign_subject_act)
                                    <a class="btn btn-success float-right btn-sm" href="{{route('setups.assign.subject.add')}}"><i class="fa fa-plus-circle"></i> Add Assign Subject</a>
                                    @endif
                                </h3>

                            </div><!-- /.card-header -->
                            <div class="card-body">

                                <table id="example1" class="table table-bordered table-hover">

                                    <thead>
                                    <tr>
                                        <th>SL</th>
                                        <th>Class Name</th>
                                        @if($access_action->assign_subject_act)
                                        <th>Action</th>
                                        @endif
                                    </tr>
                                    </thead>
                                    <tbody>
                                    @foreach($allData as $key=>$value)
                                        <tr class="{{$value->id}}">
                                            <td>{{$key+1}}</td>
                                            <td>{{$value['student_class']['name']}}</td>
                                            @if($access_action->assign_subject_act)
                                            <td>
                                                <a title="Details" class="btn btn-sm btn-success" href="{{route('setups.assign.subject.details',$value->class_id)}}"><i class="fa fa-eye"></i></a>

                                                <a title="Edit" class="btn btn-sm btn-primary" href="{{route('setups.assign.subject.edit',$value->class_id)}}"><i class="fa fa-edit"></i></a>


                                            </td>
                                            @endif
                                        </tr>
                                    @endforeach


                                    </tbody>



                                </table>

                            </div><!-- /.card-body -->
                        </div>



                    </section>

                </div>

            </div>
        </section>
        <!-- /.content -->
    </div>

@endsection