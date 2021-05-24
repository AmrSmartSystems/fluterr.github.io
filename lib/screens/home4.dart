import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home4 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Sc4TestingNewThings();
  }
}

class Sc4TestingNewThings extends State<Home4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CUTIE ANU"),
      ),
      body: ListView(
        children: [
          Padding(padding: EdgeInsets.only(top: 15.0)),
          LogoImage(),
          Padding(padding: EdgeInsets.only(top: 15.0)),
          LogoImage(),
          Padding(padding: EdgeInsets.only(top: 15.0)),
          LogoImage(),
          Padding(padding: EdgeInsets.only(top: 15.0)),
          LogoImage(),
          Padding(padding: EdgeInsets.only(top: 15.0)),
          LogoImage(),
          Padding(padding: EdgeInsets.only(top: 15.0)),
          LogoImage(),
        ],
      ),
    );
  }
}

class LogoImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage logo = AssetImage('images/a.jpg');
    Image image = Image(
      image: logo,
      height: 300.0,
      width: 100.0,
    );
    return Container(child: image);
  }
}
