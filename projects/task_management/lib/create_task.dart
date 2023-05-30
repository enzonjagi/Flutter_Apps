import 'package:flutter/material.dart';
import 'package:task_management/themes/config.dart';

class CreateTask extends StatefulWidget {
  const CreateTask({super.key});

  @override
  State<CreateTask> createState() => _CreateTaskState();
}

class _CreateTaskState extends State<CreateTask> {

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text('Create a task'),
        actions: [
            IconButton(
              icon: const Icon(Icons.brightness_4),
              onPressed: () => currentTheme.toggleTheme(),
            ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextFormField(
                    enableSuggestions: true,
                    decoration: const InputDecoration(
                      hintText: "Do...",
                      labelText: "Task Name",
                    ),
                    validator:(value) {
                      if (value == null || value.isEmpty) {
                        return 'Fill in the task';
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    enableSuggestions: true,
                    decoration: const InputDecoration(
                      hintText: "I want to...",
                      labelText: "Task Description",
                    ),
                    validator:(value) {
                      if (value == null || value.isEmpty) {
                        return 'Fill in the task';
                      }
                      return null;
                    },
                  ),
                  ElevatedButton.icon(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text("Creating Task"))
                        );
                        Navigator.pop(context);
                      }
                    }, 
                    icon: const Icon(
                      Icons.create
                    ), 
                    label: const Text("Create Task")
                ),
                ],
              ),
            ),
      ),     
    );
  }
}