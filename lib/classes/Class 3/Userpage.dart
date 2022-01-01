import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Userpage extends StatelessWidget {
  Userpage({Key? key}) : super(key: key);

  String _url =
      "https://fakerapi.it/api/v1/persons?_quantity=5&_gender=male&_birthday_start=2005-01-01";

  _getDataFromApi() async {
    var response = await http.get(Uri.parse(_url));
    var userJsonData = jsonDecode(response.body);
    //print(userJsonData["data"][1]['lastname']);

    List<Map<String, String>> _users = [];

    userJsonData["data"].asMap().forEach((index, value) {
      //print(value["email"]);

      _users.add({
        "first": value['firstname'],
        "last": value['lastname'],
        "@email": value['email'],
      });
    });

    print(_users);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ElevatedButton(
          child: Text("Get Data"),
          onPressed: () => _getDataFromApi(),
        ),
      ),
    );
  }
}
