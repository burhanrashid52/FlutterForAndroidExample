import 'package:flutter/material.dart';
import 'package:sample_flutter_app/home.dart';

void main() => runApp(new MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyTestGravityState createState() => new _MyTestGravityState();
//  _MyTestAppState createState() => new _MyTestAppState();
// _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: new ThemeData(accentColor: Colors.pinkAccent),
      debugShowCheckedModeBanner: false,
      home: new HomeScreen(),
    );
  }
}

class _MyTestAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("FrameLayout"),
        ),
        body: new Container(
          constraints: new BoxConstraints.expand(),
          color: Colors.tealAccent,
          child: new Stack(
            alignment: AlignmentDirectional.bottomEnd,
            children: [
              Container(
                height: 200.0,
                width: 200.0,
                color: Colors.red,
              ),
              Container(
                height: 150.0,
                width: 150.0,
                color: Colors.blue,
              ),
              Container(
                height: 100.0,
                width: 100.0,
                color: Colors.green,
              ),
              Container(
                height: 50.0,
                width: 50.0,
                color: Colors.yellow,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _MyTestGravityState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("FrameLayout"),
        ),
        body: new Container(
          color: Colors.tealAccent,
          child: new Stack(
            children: [
              Align(
                child: Container(
                  height: 200.0,
                  width: 200.0,
                  color: Colors.red,
                ),
                alignment: AlignmentDirectional.topStart,
              ),
              Align(
                child: Container(
                  height: 150.0,
                  width: 150.0,
                  color: Colors.blue,
                ),
                alignment: AlignmentDirectional.topEnd,
              ),
              Align(
                child: Container(
                  height: 100.0,
                  width: 100.0,
                  color: Colors.green,
                ),
                alignment: AlignmentDirectional.bottomStart,
              ),
              Align(
                child: Container(
                  height: 50.0,
                  width: 50.0,
                  color: Colors.yellow,
                ),
                alignment: AlignmentDirectional.bottomEnd,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
