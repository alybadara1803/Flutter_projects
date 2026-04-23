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

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //variable
  TextEditingController myControler = TextEditingController();
  String greetMessage = '';
  List<String> goals = ['aly', 'badara', 'coulibaly'];

  //function
  void greetUser() {
    setState(() {
      // greetMessage = 'Hello, ' + myControler.text;
      // goals.add(myControler.text);
      if (myControler.text != '' ){
            goals.add(myControler.text);
                    ListView.builder(
        itemCount: goals.length,
        itemBuilder: (context, index) {
          return Text(goals[index]);
        },
      );  
      }
  
  
    });
  }

  void removGoal() {
    setState(() {
      if (goals.isNotEmpty){
              goals.removeLast();
      }

    });
  }

  //UI (user interface)
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('HOME PAGE'), centerTitle: true),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(goals.toString()),
            TextField(controller: myControler),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: greetUser, child: Text('Tap')),
                ElevatedButton(onPressed: removGoal, child: Text('REMOVE')),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
