import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("EPOCH TIME APP"),
      ),
      body: Material(
        color: Colors.white10,
        child: Center(
          child: Text(
            "ecpoch is " + date(),
            textDirection: TextDirection.rtl,
            style: TextStyle(color: Colors.green, fontSize: 20.0),
          ),
        ),
      ),
    );
  }

  String date() {
    DateTime now = DateTime.now();
    return now.millisecondsSinceEpoch.toString();
  }
}
