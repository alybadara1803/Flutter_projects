import 'package:flutter/material.dart';

class TodoPage extends StatefulWidget {
  const TodoPage({super.key});

  @override
  State<TodoPage> createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(
      body: Center(
        child: TextField(
          cursorColor: Colors.red,
          textAlign: TextAlign.center,
        ),
        ),
    ));
  }
}
