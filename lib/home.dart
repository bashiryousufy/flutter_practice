import 'package:flutter/material.dart';
import 'package:student_details/classes/class_1_alignment.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/first_class');
              },
              child: Text(' Go to Alignment'),
            ),
          ],
        ),
      ),
    );
  }
}
