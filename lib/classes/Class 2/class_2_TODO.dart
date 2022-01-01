import 'package:flutter/material.dart';

class Todo extends StatefulWidget {
  const Todo({Key? key}) : super(key: key);

  @override
  _TodoState createState() => _TodoState();
}

class _TodoState extends State<Todo> {
  List<String> tasks = [
    'Clean Dishes',
    'Clean your room',
    'Study',
    'Get groceries',
    'aaa'
  ];

  List<bool> isTaskDone = [];

  @override
  void initState() {
    isTaskDone = List<bool>.filled(tasks.length, false);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Todo'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: tasks.length,
        itemBuilder: (context, index) {
          return CheckboxListTile(
            title: Text(
              tasks[index],
              style: TextStyle(
                  decoration:
                      isTaskDone[index] ? TextDecoration.lineThrough : null),
            ),
            onChanged: (value) {
              setState(() {
                isTaskDone[index] = value!;
              });
            },
            value: isTaskDone[index],
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (context) {
                return Container();
              });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
