<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use App\Model\Notice;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class NoticeController extends Controller
{
    public function view(){

        $data['allData'] = Notice::all();
        return view('backend.notice.view-notice',$data);

    }
    public function add()
    {

        return view('backend.notice.add-notice');

    }
    public function store(Request $request)
    {

        $data = new Notice();
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
        return redirect()->route('notice.view');
    }
    public function edit($id)
    {

        $editData = Notice::find($id);
        return view('backend.notice.edit-notice',compact('editData'));
    }

    public function update(Request $request, $id)
    {

        $data =Notice::find($id);
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
        return redirect()->route('notice.view');
    }


    public function delete($id){

        $result=Notice::find($id);

        if(file_exists('upload/results_images/' .$result->t_download)AND !empty($result->t_download)){
            unlink('upload/results_images/' .$result->t_download);
        }
        $result->delete();
        return redirect()->route('notice.view')->with('success', 'Data Deleted successfully');
    }
}
