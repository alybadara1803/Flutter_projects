import 'package:flutter/material.dart';

class InfoPage extends StatelessWidget {
  const InfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'INFO PAGE',
      home: Scaffold(
        appBar: AppBar(
          title: Text('I N F O'),
          backgroundColor: Colors.lightBlue[200],
          centerTitle: true,
        ),
      ),
    );
  }
}