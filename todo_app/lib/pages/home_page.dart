// import 'package:flutter/material.dart';
// import 'package:todo_app/util/todo_tile.dart';

// class HomePage extends StatefulWidget {
//   const HomePage({super.key});

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   //list of todo tasks
//   List toDoList = [
//     ["Make tutorial", false],
//     ['Do exercise', false],
//   ];

//   //checkbox was changed
//   void checkBoxChanged(){

//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'HOME PAGE',
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         backgroundColor: Colors.yellow[200],
//         appBar: AppBar(
//           backgroundColor: Colors.yellow,
//           title: Text('TO DO'),
//           elevation: 0,
//           centerTitle: true,
//         ),
//         body: ListView.builder(
//           itemCount: toDoList.length,
//           itemBuilder: (context, index) {
//             return TodoTile(
//               taskName: toDoList[index][0],
//               taskCompleted: toDoList[index][1],
//               onChanged: (value) => checkBoxChanged,
//             );
//           },
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:todo_app/util/todo_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // list of todo tasks

  List toDoList = [
    ['Read 10 books', false],
    ['Go to the gym', false],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[200],
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('TO DO LIST'),
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView.builder(
        itemCount: toDoList.length,
        itemBuilder: (context, index) {
          return ToDoTile(
            taskName: toDoList[index][0],
            taskCompleted: toDoList[index][1],
            onChanged: (p0) {},
          );
        },
      ),
    );
  }
}
