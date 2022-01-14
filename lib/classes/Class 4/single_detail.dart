import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  final Map<String, dynamic> userDetail;
  final int length;
  final int height;
  const DetailPage(
      {Key? key,
      required this.userDetail,
      required this.length,
      required this.height})
      : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    print(widget.userDetail);
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 200.0,
                width: 200.0,
                child: Image.network(widget.userDetail['image']),
              ),
              Text("Name: ${widget.userDetail['firstName']}"),
              Text("Last Name: ${widget.userDetail['lastName']}"),
              Text("Email: ${widget.userDetail['email']}"),
              Text("Street: ${widget.userDetail['street']}"),
              Text("Street Name: ${widget.userDetail['streetname']}"),
              Text("Latitude: ${widget.userDetail['latitude']}"),
              Text("Longtitude: ${widget.userDetail['longitude']}"),
            ],
          ),
        ),
      ),
    );
  }
}
