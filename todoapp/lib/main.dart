import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:sizer/sizer.dart';
import 'package:todoapp/Todo1stpage.dart';
import 'package:todoapp/todoapp.dart';

void main() async {
  runApp(await const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: ((context, orientation, deviceType) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          home: Todo(),
          theme: ThemeData(primaryColor: Colors.purple.shade500),
        );
      }),
    );
  }
}

  // This widget is the root of your application.
 