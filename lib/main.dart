import 'package:flutter/material.dart';
import 'package:student_details/classes/Class%203/Userpage.dart';
import 'package:student_details/classes/Class%203/test1.dart';
import 'package:student_details/classes/Class%204/single_detail.dart';
import 'package:student_details/classes/Class1/class_1_alignment.dart';

import 'classes/Class 2/class_2_TODO.dart';
import 'navigation.dart';

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
        '/': (context) => Userpage(),
        '/first_class': (context) => ClassOneAlignment(),
        '/todo': (context) => Todo(),
        '/users': (context) => Userpage(),
        '/singleUser': (context) => DetailPage()
      },
    );
  }
}


// num % 2 == 0 ? print('true') : print('false')