import 'package:flutter/material.dart';

class Home2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("PUNCHING APP"),
        ),
        body: Center(
            child: Container(
          alignment: Alignment.center,
          color: Colors.lightGreen,
          margin: EdgeInsets.all(5),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                    child: Text(
                      "amruth ->",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                        fontSize: 25.0,
                        decoration: TextDecoration.underline,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                  Expanded(
                      child: Text("good boy",
                          textDirection: TextDirection.ltr,
                          style: TextStyle(
                            fontSize: 20.0,
                            decoration: TextDecoration.underline,
                            fontStyle: FontStyle.italic,
                          ))),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Text(
                      "anu ->",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                        fontSize: 25.0,
                        decoration: TextDecoration.underline,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                  Expanded(
                      child: Text("bad girl",
                          textDirection: TextDirection.ltr,
                          style: TextStyle(
                            fontSize: 20.0,
                            decoration: TextDecoration.underline,
                            fontStyle: FontStyle.italic,
                          ))),
                ],
              ),
              LogoImage(),
              PunchBtn(),
            ],
          ),
        )));
  }
}

class LogoImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage logo = AssetImage('images/a.jpg');
    Image image = Image(
      image: logo,
      height: 200.0,
      width: 100.0,
    );
    return Container(child: image);
  }
}

class PunchBtn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var Btn = Container(
      margin: EdgeInsets.only(top: 1),
      child: RaisedButton(
        child: Text("Punch Anu Face"),
        color: Colors.red,
        elevation: 1,
        onPressed: () {
          order(context);
        },
      ),
    );
    return Btn;
  }
}

void order(BuildContext context) {
  var alert = AlertDialog(
    title: Text("yay anu crying"),
    content: Text("cry anu anu :("),
  );
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      });
}
