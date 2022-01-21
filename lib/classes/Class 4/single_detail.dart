import 'dart:ffi';

import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  // final Map<String, dynamic> userDetail;
  // final int length;
  // final int height;
  const DetailPage({
    Key? key,
  }) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    print(args['firstName']);
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView(children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundImage: true
                    ? NetworkImage(args['image'])
                    : AssetImage('assets/images/noImageAvailable.png')
                        as ImageProvider,
                radius: 80.0,
              ),
              SizedBox(
                height: 50,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'First Name: ${args["firstName"]}',
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Text('Last Name: ${args["lastName"]}'),
                  SizedBox(
                    height: 15.0,
                  ),
                  Text('Email: ${args["email"]}'),
                  SizedBox(
                    height: 15.0,
                  ),
                  Text('Street: ${args["street"]}'),
                  SizedBox(
                    height: 15.0,
                  ),
                  Text('Street name: ${args["streetname"]}'),
                  SizedBox(
                    height: 15.0,
                  ),
                  Text('Latitude: ${args["latitude"]}'),
                  SizedBox(
                    height: 15.0,
                  ),
                  Text('Longitude: ${args["longitude"]}'),
                  SizedBox(
                    height: 15.0,
                  ),
                ],
              )
              // Container(
              //   height: 200.0,
              //   width: 200.0,
              //   child: Image.network(widget.userDetail['image']),
              // ),
              // Text("Name: ${widget.userDetail['firstName']}"),
              // Text("Last Name: ${widget.userDetail['lastName']}"),`
              // Text("Email: ${widget.userDetail['email']}"),
              // Text("Street: ${widget.userDetail['street']}"),
              // Text("Street Name: ${widget.userDetail['streetname']}"),
              // Text("Latitude: ${widget.userDetail['latitude']}"),
              // Text("Longtitude: ${widget.userDetail['longitude']}"),
            ],
          ),
        ]),
      ),
    );
  }
}
