import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  //variable
  int _counter = 0;

  //method
  void _incrementCounter() {
    //setstate rebuilds the app (without it the change won't be reflected in the app)
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  //UI (User Interface)
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Counter page',
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Tu as appuyé sur le boutton ce nombre de fois'),
              // Text(_counter.toString()),
              Text(_counter.toString(), style: TextStyle(fontSize: 40)),
              Center(
                child: Row(
                  spacing: 10,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: _decrementCounter,
                      child: Text('Decrémenter'),
                    ),
                    ElevatedButton(
                      onPressed: _incrementCounter,
                      child: Text('Incrémenter'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
