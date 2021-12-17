import 'package:flutter/material.dart';

class ClassOneAlignment extends StatefulWidget {
  const ClassOneAlignment({Key? key}) : super(key: key);

  @override
  _ClassOneAlignmentState createState() => _ClassOneAlignmentState();
}

class _ClassOneAlignmentState extends State<ClassOneAlignment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Widget Alignment'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(right: 10),
                  height: 80,
                  width: 150,
                  color: Colors.blue,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Text(
                          'Hello',
                          style: TextStyle(fontSize: 20),
                          textAlign: TextAlign.center,
                        ),
                        ElevatedButton(onPressed: () {}, child: Text('Text'))
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 50,
                  width: 105,
                  color: Colors.red,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  color: Colors.amber,
                ),
                Container(
                  height: 50,
                  width: 25,
                  color: Colors.brown,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
