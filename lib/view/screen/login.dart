import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page Title'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text('Hello World'),
      ),
    );
  }
}