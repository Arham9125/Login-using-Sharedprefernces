// import 'package:flutter/material.dart';
// import 'package:flutter/src/foundation/key.dart';
// import 'package:flutter/src/widgets/framework.dart';

// class Todo extends StatefulWidget {
//   const Todo({Key? key}) : super(key: key);

//   @override
//   State<Todo> createState() => _TodoState();
// }

// class _TodoState extends State<Todo> {
//   List<String> names = [];
//   TextEditingController abc = TextEditingController();
//   addadding() {
//     setState(() {
//       names.add(abc.text);
//     });
//   }

//   TextEditingController abc1 = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           Padding(
//             padding: const EdgeInsets.only(top: 50),
//             child: Container(
//               alignment: Alignment.bottomRight,
//               child: ElevatedButton(
//                 onPressed: () {
//                   addadding();
//                 },
//                 child: Icon(Icons.add),
//               ),
//             ),
//           ),
//           TextField(
//             controller: abc,
//             decoration: InputDecoration(hintText: "Enter"),
//           ),
//           Expanded(
//             flex: 2,
//             child: ListView.builder(
//                 itemCount: names.length,
//                 itemBuilder: (context, int index) {
//                   return ListTile(
//                     title: Text(
//                       names[index],
//                       style: TextStyle(color: Colors.black),
//                     ),
//                     trailing: IconButton(
//                       onPressed: () {
//                         setState(() {
//                           names.remove(names[index]);
//                         });
//                       },
//                       icon: Icon(Icons.remove),
//                     ),
//                     leading: IconButton(
//                         onPressed: () {
//                           showDialog(
//                               context: context,
//                               builder: (context) => AlertDialog(
//                                     title: Text(names[index]),
//                                     content: TextField(
//                                         controller: abc1,
//                                         decoration: InputDecoration(
//                                             hintText: "Change !!")),
//                                     actions: [
//                                       TextButton(
//                                           onPressed: () {
//                                             setState(() {
//                                               names.replaceRange(index,
//                                                   names.length, {abc1.text});
//                                             });
//                                           },
//                                           child: Text("Submit"))
//                                     ],
//                                   ));
//                         },
//                         icon: Icon(Icons.edit)),
//                   );
//                 }),
//           )
//         ],
//       ),
//     );
//   }
// }
