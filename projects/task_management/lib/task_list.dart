import 'package:flutter/material.dart';
import 'package:task_management/auth.dart';
import 'package:task_management/create_task.dart';
import 'package:task_management/themes/config.dart';

class TaskList extends StatefulWidget {
  const TaskList({super.key});

  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  // Will use this to build a List of tasks after setting up the rest api
  late List<List>? _Tasks = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('KaziManager'),
        actions: [
          IconButton(
            icon: const Icon(Icons.brightness_4),
            onPressed: () => currentTheme.toggleTheme(),
          ),

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
      body: _Tasks == null || _Tasks!.isEmpty
        ? const Center(
          child: Text("Waiting for tasks..."),
        )
        :ListView.builder(
          itemCount: _Tasks!.length,
          prototypeItem: const ListTile(
            title: Text('First Item'),
          ),
          itemBuilder: (context, index) {
            // we'll include the List Items here
            return const ListTile(
              title: Text("List Item Name"),
            );
          },
        ),
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