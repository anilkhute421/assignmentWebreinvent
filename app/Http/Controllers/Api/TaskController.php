<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Task;
use Illuminate\Http\Request;

class TaskController extends Controller
{
    public function pendingTask()
    {
        return Task::where('status', 'pending')->orderBy('id','desc')->get();
    }

    public function index()
    {
        return Task::orderBy('id','desc')->get();
    }

    public function store(Request $request)
    {
        $this->validate($request, [
            'name' => 'required|unique:tasks',
        ]);

        $task = Task::create([
            'name' => $request->name,
            'status' => 'pending'
        ]);

        return response()->json(['task' => $task , 'suceess' => 'true' , 'status' => 201]);
    }

    public function markCompleted(Request $request, $id)
    {
        $task = Task::find($id);
        $task->status = 'completed';
        $task->save();

        return response()->json('Task status updated!');
    }

    public function destroy($id)
    {
        Task::find($id)->delete();

        return response()->json('Task deleted successfully!');
    }
}

