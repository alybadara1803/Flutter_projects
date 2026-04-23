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
