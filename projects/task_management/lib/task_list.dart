import 'package:flutter/material.dart';
import 'package:task_management/auth.dart';
import 'package:task_management/create_task.dart';

class TaskList extends StatefulWidget {
  const TaskList({super.key});

  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('KaziManager'),
        actions: [
          IconButton(
            onPressed: (){
              // Should logout and call the login page
              Navigator.pushReplacement(
                context, 
                MaterialPageRoute(builder: (context) => const Login())
              );
            }, 
            icon: const Icon(
              Icons.logout
            ),
          )
        ],
      ),
      body: Container(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Should push a window to add the task
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const CreateTask()
            )
          );
        },
        child: const Icon(
          Icons.add
        ),
      ),
    );
  }
}