<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use App\Model\Result;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class ResultController extends Controller
{

    public function view(){

        $data['allData'] = Result::all();
        return view('backend.result.view-result',$data);

    }
    public function add()
    {

        return view('backend.result.add-result');

    }
    public function store(Request $request)
    {

        $data = new Result();
        $data->created_by = Auth::user()->id;
        $data->t_date = $request->t_date;
        $data->deadline = $request->deadline;
        $data->title = $request->title;
        if ($request->file('t_download')) {

            $file = $request->file('t_download');


            $filename = date('YmdHi') . $file->getClientOriginalName();
            $file->move(public_path('upload/result_images'), $filename);
            $data['t_download'] = $filename;
        }
        $data->save();
        session()->flash('success', ' Data save success');
        return redirect()->route('result.view');
    }
    public function edit($id)
    {

        $editData = Result::find($id);
        return view('backend.result.edit-result',compact('editData'));
    }

    public function update(Request $request, $id)
    {

        $data =Result::find($id);
        $data->updated_by = Auth::user()->id;
        $data->t_date = $request->t_date;
        $data->deadline = $request->deadline;
        $data->title = $request->title;
        if ($request->file('t_download')) {

            $file = $request->file('t_download');


            $filename = date('YmdHi') . $file->getClientOriginalName();
            $file->move(public_path('upload/result_images'), $filename);
            $data['t_download'] = $filename;
        }
        $data->save();
        session()->flash('success', ' Data save success');
        return redirect()->route('result.view');
    }


    public function delete($id){

        $result=Result::find($id);

        if(file_exists('upload/results_images/' .$result->t_download)AND !empty($result->t_download)){
            unlink('upload/results_images/' .$result->t_download);
        }
        $result->delete();
        return redirect()->route('result.view')->with('success', 'Data Deleted successfully');
    }




}
