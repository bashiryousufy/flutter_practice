import 'package:flutter/material.dart';
import 'package:student_details/classes/class_1_alignment.dart';

import 'home.dart';

void main() {
  runApp(MyApp());
}

// dart
// [] - list
// {} - Map

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => Home(),
        '/first_class': (context) => ClassOneAlignment(),
      },
    );
  }
}
