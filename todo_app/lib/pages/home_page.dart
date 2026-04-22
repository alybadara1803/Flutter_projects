import 'package:flutter/material.dart';
import 'package:todo_app/util/todo_tile.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HOME PAGE',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.yellow[200],
        appBar: AppBar(
          backgroundColor: Colors.yellow,
          title: Text('TO DO'),
          elevation: 0,
          centerTitle: true,
        ),
        body: ListView(
          children: [
            TodoTile(
              taskName: 'Make tutorial',
              taskCompleted: true,
              onChanged: (p0) {},
            ),
            TodoTile(
              taskName: 'Do exercise',
              taskCompleted: true,
              onChanged: (p0) {},
            ),

          ],
        ),
      ),
    );
  }
}