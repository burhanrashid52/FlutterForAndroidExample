import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("LinearLayout Example"),
        ),
        body: new Container(
          color: Colors.yellowAccent,
          child: new Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              new Icon(
                Icons.access_time,
                size: 50.0,
              ),
              new Icon(
                Icons.pie_chart,
                size: 100.0,
              ),
              new Icon(
                Icons.email,
                size: 50.0,
              )
            ],
          ),
        ),
      ),
    );
  }
}
