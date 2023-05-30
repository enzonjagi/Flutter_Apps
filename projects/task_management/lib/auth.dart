import 'package:flutter/material.dart';
import 'package:task_management/task_list.dart';

// Login
class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton.icon(
          style: ElevatedButton.styleFrom(
            shadowColor: Colors.transparent,
            backgroundColor: Colors.redAccent,
          ),
          onPressed: () {
            // Login
            Navigator.pushReplacement(
              context, 
              MaterialPageRoute(
                builder: (context) => const TaskList() 
              )
            );
          }, 
          icon: const Icon(Icons.login),
          label: const Text('Login'),
        ),
      ),
    );
  }
}


// Signup
class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}