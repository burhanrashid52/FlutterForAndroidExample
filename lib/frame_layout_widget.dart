import 'package:flutter/material.dart';
import 'package:sample_flutter_app/row_column_example.dart';

class FrameLayoutScreen extends StatefulWidget {
  @override
  _FrameLayoutScreenState createState() => _FrameLayoutScreenState();
}

class _FrameLayoutScreenState extends State<FrameLayoutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FrameLayout"),
      ),
      body: Center(
        child: Container(
          color: Colors.orange,
          child: Stack(
            alignment: AlignmentDirectional.topStart,
            children: <Widget>[
              Align(
                alignment: AlignmentDirectional.topStart,
                child: Container(
                  color: Colors.red,
                  width: 200.0,
                  height: 200.0,
                ),
              ),
              Align(
                alignment: AlignmentDirectional.topEnd,
                child: Container(
                  color: Colors.orange,
                  width: 100.0,
                  height: 100.0,
                ),
              ),
              Align(
                alignment: AlignmentDirectional.bottomStart,
                child: Container(
                  color: Colors.green,
                  width: 50.0,
                  height: 50.0,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
