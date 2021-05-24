import 'package:amruth_flutter_test1/screens/home2.dart';
import 'package:amruth_flutter_test1/screens/home.dart';
import 'package:amruth_flutter_test1/screens/home4.dart';
import 'package:flutter/material.dart';

import 'home6.dart';

class Home3 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _NameGetter();
  }
}

class _NameGetter extends State<Home3> {
  String name = '';
  int hitter = 1;
  int slapper = 1;
  int kicker = 1;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(0),
        child: Column(
          children: <Widget>[
            /*TextField(
              decoration: InputDecoration(
                hintText: "enter your name",
              ),
              onSubmitted: (String str) {
                setState(() {
                  if (str == 'anu')
                    name = "anu is mad";
                  else
                    name = "amruth is great";
                });
              },
            ),*/

            Text("\n"),
            RaisedButton(
              color: Colors.lightBlueAccent,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              textColor: Colors.red,
              onPressed: () {
                setState(() {
                  hitter++;
                  if (hitter % 5 == 0) {
                    Navigator.of(context).push(_createRoute_SL(Home()));
                  }
                });
              },
              child: Text(
                "PUNCH ANU",
                textScaleFactor: 2.5,
              ),
            ),
            Text('      You PUNCHED Anu this many times'),
            Text(
              hitter.toString(),
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 10.0)),

            //second Button
            RaisedButton(
              color: Colors.lightBlueAccent.shade200,
              textColor: Colors.yellowAccent,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25)),
              onPressed: () {
                setState(() {
                  slapper++;
                  if (slapper % 5 == 0) {
                    Navigator.of(context).push(_createRoute(Home4()));
                  }
                });
              },
              child: Text(
                "SLAP ANU",
                textScaleFactor: 2.5,
              ),
            ),

            Text('You Slapped Anu this many times'),
            Text(
              slapper.toString(),
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 10.0)),

            //Thrid Button
            RaisedButton(
              color: Colors.blueAccent.shade100,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              textColor: Colors.pinkAccent.shade700,
              onPressed: () {
                setState(() {
                  kicker++;
                  if (kicker % 5 == 0) {
                    Navigator.of(context).push(_createRoute_SL(Home2()));
                  }
                });
              },
              child: Text(
                "KICK ANU",
                textScaleFactor: 2.5,
              ),
            ),
            Text('You KICKED Anu this many times'),
            Text(
              kicker.toString(),
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 20.0)),
            //4th button
            RaisedButton(
              color: Colors.blueAccent.shade100,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              textColor: Colors.pinkAccent.shade700,
              onPressed: () {
                setState(() {
                  Navigator.of(context).push(_createRoute(RandomWords()));
                });
              },
              child: Text(
                "anu would",
                textScaleFactor: 2.5,
              ),
            ),

            Text(
              "STUPID ANU LOoKS LIKE THIS ",
              style: TextStyle(
                color: Colors.pink[300],
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 5.0)),
            LogoImage(),
            Padding(padding: EdgeInsets.only(top: 5.0)),
            Text(
              "CRY BABY ANU KAKOOS ",
              style: TextStyle(
                color: Colors.green[300],
                backgroundColor: Colors.pink,
              ),
            ),
          ],
        ));
  }
}

class LogoImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage logo = AssetImage('images/a.jpg');
    Image image = Image(
      image: logo,
      height: 100.0,
      width: 100.0,
    );
    return Container(child: image);
  }
}

class _DropDown extends State<Home3> {
  String dropdownValue = 'One';
  @override
  Widget build(BuildContext context) {
    DropdownButton _dp = DropdownButton<String>(
      value: dropdownValue,
      icon: const Icon(Icons.add_circle_sharp),
      iconSize: 24,
      elevation: 16,
      style: const TextStyle(color: Colors.deepPurple),
      underline: Container(
        height: 2,
        color: Colors.deepPurpleAccent,
      ),
      onChanged: (String newValue) {
        setState(() {
          dropdownValue = newValue;
        });
      },
      items: <String>['One', 'Two', 'Three', 'Four']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );

    return Container(child: _dp);
  }
}

Route _createRoute(StatefulWidget x) {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => x,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var begin = Offset(0.0, 1.0);
      var end = Offset.zero;
      var curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}

Route _createRoute_SL(StatelessWidget x) {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => x,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var begin = Offset(0.0, 1.0);
      var end = Offset.zero;
      var curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}
