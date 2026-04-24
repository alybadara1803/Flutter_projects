// import 'package:flutter/material.dart';

// class TodoTile extends StatelessWidget {
//    TodoTile({
//     super.key,
//     required this.taskName,
//     required this.taskCompleted,
//     required this.onChanged
//     });

//   //variables
//   final String taskName;
//   final bool taskCompleted;
//   Function(bool?)? onChanged;

//   //function

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(25.0),
//       child: Container(
//         padding: EdgeInsets.all(24),
//         // margin: EdgeInsets.all(25),
//         decoration: BoxDecoration(
//           color: Colors.yellow,
//           borderRadius: BorderRadius.circular(12),
//         ),
//         child: Row(
//           children: [
//             //checkbox
//             Checkbox(value: taskCompleted, onChanged: onChanged),

//             //task name
//             Text(taskName),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class ToDoTile extends StatelessWidget {
  final String taskName;
  final bool taskCompleted;
  Function(bool?)? onChanged;

   ToDoTile({super.key, required this.taskName, required this.taskCompleted, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Container(
        padding: EdgeInsets.all(24),
        child: Row(
          children: [
            // value variable in chekcbox tells us if we did a task or not,
            // onchanged allows us to switch between
            Checkbox(value: taskCompleted, onChanged: onChanged),

            //task name
            Text(taskName),
          ],
        ),
        decoration: BoxDecoration(
          color: Colors.orange,
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}
