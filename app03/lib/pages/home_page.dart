import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Text editing controler to get access to what the user typed
  TextEditingController myControler = TextEditingController();

  String greetingMessage = "";
  //method
  void greetUser() {

    String userName = myControler.text;
    setState(() {
      greetingMessage = 'Hello,  + $userName';
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

