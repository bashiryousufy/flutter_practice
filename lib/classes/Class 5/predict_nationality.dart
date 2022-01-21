import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:student_details/classes/Class%205/person.dart';

class PredictNationality extends StatefulWidget {
  PredictNationality({Key? key}) : super(key: key);

  @override
  State<PredictNationality> createState() => _PredictNationalityState();
}

class _PredictNationalityState extends State<PredictNationality> {
  TextEditingController _nameController = TextEditingController();
  //https://api.nationalize.io/?name=bashir
  //https://pub.dev/packages/country_codes?asdas=asdasasd

  var res = [];

  predictNationality(String name) async {
    var url = Uri.https(
      'api.nationalize.io',
      '/',
      {
        'name': name,
      },
    );
    Response response = await get(url);
    //SELECT * FROM person WHERE name = bashir;

    if (response.statusCode == 200) {
      var responseBody = jsonDecode(response.body);

      // List<Person> predictedList = responseBody
      //     .map(
      //       (Map<String, dynamic> item) => Person.fromJson(item),
      //     )
      //     .toList();
      //print(responseBody['name']);
      setState(() {
        res = responseBody['country'];
      });
    } else {
      return [];
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Enter your name to predict your Nationaliy:',
                    style:
                        TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextFormField(
                      controller: _nameController,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Enter your name'),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () async {
                      //print(_nameController.text);
                      await predictNationality(_nameController.text);
                      print(res);
                    },
                    child: Text("Predict"),
                  ),
                  // Text("${_nameController.text}")
                ],
              ),
              ListView.builder(
                shrinkWrap: true,
                itemCount: res.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text("${res[index]['country_id']}"),
                    subtitle: Text("${res[index]['probability']}"),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
