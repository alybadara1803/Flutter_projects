import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'HOME PAGE',
      home: Scaffold(
        appBar: AppBar(
          title: Text('H O M E  P A G E'),
          centerTitle: true,
          backgroundColor: Colors.lightBlue[200],
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/settingspage');
            },
            child: Text('Link to settings page'),
          ),
        ),
      ),
    );
  }
}
