import 'package:amruth_flutter_test1/screens/home3.dart';
import 'package:amruth_flutter_test1/screens/home6.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(FirstScreen());
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Amr.Smart.Systems",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("BAD ANU"),
        ),
        body: Home3(),
      ),
    );
  }
}
