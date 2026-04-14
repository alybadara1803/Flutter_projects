import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SETTINGS PAGE',
      home: Scaffold(
        appBar: AppBar(
          title: Text('S E T T I N G S'),
          backgroundColor: Colors.lightBlue[200],
          centerTitle: true,
        ),
      ),
    );
  }
}