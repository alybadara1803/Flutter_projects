import 'package:flutter/material.dart';

class TodoPage extends StatefulWidget {
  const TodoPage({super.key});

  @override
  State<TodoPage> createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {
  // Text editing controler to get access to what the user typed
  TextEditingController myControler = TextEditingController();

  String greetingMessage = "";
  //method
  void greetUser() {
    setState(() {
      greetingMessage = 'Hello, ' + myControler.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(greetingMessage, style: TextStyle(
                  fontSize: 20,
                ),),
                TextField(
                  textAlign: TextAlign.center,
                  controller: myControler,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Type your name ..',
                  ),
                ),
                ElevatedButton(
                  onPressed: greetUser,
                  child: Text('Tap')
                  )
              ],
            ),
          ),
        ),
      ),
    );
  }
}


