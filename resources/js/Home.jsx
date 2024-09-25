import React, { useEffect, useState } from 'react';
import '../css/app.css';
import axios from 'axios';

function Home() {
  const [tasks, setTasks] = useState([]);
  const [newTask, setNewTask] = useState("");
  const [allTask, setAllTask] = useState(false);
  const [errorMessage, setErrorMessage] = useState("");


  // Add Task
  const addTask = (e) => {
    debugger
    e.preventDefault();
    setAllTask(false);
    // if (newTask.trim() && !tasks.find(task => task.name === newTask)) {
      axios.post('/api/tasks', { name: newTask })
      .then(response => {
          if(response?.status==200){
            setErrorMessage("")
            setNewTask("");
            window.alert("Task added successfully!");
            axios.get('/api/tasks')
      .then(response => {
        if(response?.status==200){
          setTasks(response?.data);
        }
      }).catch(error => console.log(error));
          }
      })
      .catch(error => {
        if (error.response && error.response.data) {
          setErrorMessage(error.response.data.message);
        } else {
          setErrorMessage("An error occurred while adding the task."); 
        }
      });
    // }
  };

  // Delete Task
  const deleteTask = (id) => {
    setAllTask(false);
    const confirmDelete = window.confirm("Are you sure you want to delete this task?");
    if (confirmDelete){
      axios.delete(`/api/tasks/${id}`)
      .then(response => {
          if(response?.status==200){
            window.alert("Task deleted successfully!");
            axios.get('/api/tasks')
      .then(response => {
        if(response?.status==200){
          setTasks(response?.data);
        }
      }).catch(error => console.log(error));
          }
      })
      .catch(error => console.log(error));
    }
  };

  // Mark as Done
  const markAsDone = (id) => {
      axios.post(`/api/tasks/${id}/mark-completed`)
      .then(response => {
          if(response?.status==200){
            window.alert("Task Completed successfully!");
            axios.get('/api/tasks', { name: newTask })
      .then(response => {
        if(response?.status==200){
          setTasks(response?.data);
        }
      }).catch(error => console.log(error));
          }
      })
      .catch(error => console.log(error));
  };

  const allTasks = () => {
    setAllTask(true);
    axios.get(`/api/all/tasks`)
    .then(response => {
        if(response?.status==200){
          setTasks(response?.data);
        }
    })
    .catch(error => console.log(error));
};

useEffect(() => {
  const handleKeyPress = (e) => {
    if (e.key === 'Enter') {
      e.preventDefault();
      allTasks(); 
    }
  };

  window.addEventListener('keydown', handleKeyPress);

  return () => {
    window.removeEventListener('keydown', handleKeyPress);
  };
}, []);

  return (
    <div className="container">
      <h2>PHP - Simple To Do List App (React)</h2>

      <form onSubmit={addTask}>
        <input
          type="text"
          value={newTask}
          onChange={(e) => setNewTask(e.target.value)}
          placeholder="Enter task"
          required
        />
        <button type="submit" >Add Task</button>
        <button type="button" onClick={allTasks}>All Task</button>
      </form>

      {errorMessage && (
        <div style={{ color: 'red', marginTop: '10px' }}>
          {errorMessage}
        </div>
      )}
        

      <table className="task-table">
        <thead>

          <tr>
            <th>#</th>
            <th>Task</th>
            <th>Status</th>
            { allTask ? '' : <th>Action</th> } 
          </tr>
        </thead>
        <tbody>
          {tasks.map((task, index) => (
            <tr key={task.id}>
              <td>{index + 1}</td>
              <td>{task.name}</td>
              <td>{task.status}</td>
              { allTask ? '' : <td>
                <button className="done-btn" onClick={() => markAsDone(task.id)}>
                  <i className="fa fa-check"></i>
                </button>
                {/* <input type='checkbox' /> */}
                <button className="delete-btn" onClick={() => deleteTask(task.id)}>
                  <i className="fa fa-trash"></i>
                </button>
              </td>}
            </tr>
          ))}
        </tbody>
      </table>
    </div>
  );
}

export default Home;
