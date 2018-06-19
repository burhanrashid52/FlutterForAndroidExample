import 'package:flutter/material.dart';
import 'package:sample_flutter_app/row_column_example.dart';

class Controller extends StatefulWidget {
  @override
  _ControllerState createState() => new _ControllerState();
}

class _ControllerState extends State<Controller> {
  bool _isRow = true;
  MainAxisAlignment _mainAxisAlignment = MainAxisAlignment.start;
  CrossAxisAlignment _crossAxisAlignment = CrossAxisAlignment.start;
  MainAxisSize _mainAxisSize = MainAxisSize.min;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("LinearLayout Example"),
        bottom: new PreferredSize(
            child: new Container(
              color: Colors.red,
              child: new Column(
                children: <Widget>[
                  new Row(
                    children: <Widget>[
                      new FlatButton(
                          onPressed: () {
                            setState(() {
                              _isRow = true;
                            });
                          },
                          child: new Text("Row")),
                      new FlatButton(
                          onPressed: () {
                            setState(() {
                              _isRow = false;
                            });
                          },
                          child: new Text("Column")),
                    ],
                  ),
                  new Row(
                    children: <Widget>[
                      new FlatButton(
                          onPressed: () {
                            setState(() {
                              _mainAxisSize = MainAxisSize.min;
                            });
                          },
                          child: new Text("Min")),
                      new FlatButton(
                          onPressed: () {
                            setState(() {
                              _mainAxisSize = MainAxisSize.max;
                            });
                          },
                          child: new Text("Max")),
                    ],
                  ),
                  new Row(
                    children: <Widget>[
                      new FlatButton(
                          onPressed: () {
                            setState(() {
                              _mainAxisAlignment = MainAxisAlignment.start;
                            });
                          },
                          child: new Text("M Start")),
                      new FlatButton(
                          onPressed: () {
                            setState(() {
                              _mainAxisAlignment = MainAxisAlignment.center;
                            });
                          },
                          child: new Text("M Center")),
                      new FlatButton(
                          onPressed: () {
                            setState(() {
                              _mainAxisAlignment = MainAxisAlignment.end;
                            });
                          },
                          child: new Text("M End")),
                    ],
                  ),
                  new Row(
                    children: <Widget>[
                      new FlatButton(
                          onPressed: () {
                            setState(() {
                              _mainAxisAlignment =
                                  MainAxisAlignment.spaceAround;
                            });
                          },
                          child: new Text("Around")),
                      new FlatButton(
                          onPressed: () {
                            setState(() {
                              _mainAxisAlignment =
                                  MainAxisAlignment.spaceEvenly;
                            });
                          },
                          child: new Text("Evenly")),
                      new FlatButton(
                          onPressed: () {
                            setState(() {
                              _mainAxisAlignment =
                                  MainAxisAlignment.spaceBetween;
                            });
                          },
                          child: new Text("Between")),
                    ],
                  ),
                  new Row(
                    children: <Widget>[
                      new FlatButton(
                          onPressed: () {
                            setState(() {
                              _crossAxisAlignment = CrossAxisAlignment.start;
                            });
                          },
                          child: new Text("C Start")),
                      new FlatButton(
                          onPressed: () {
                            setState(() {
                              _crossAxisAlignment = CrossAxisAlignment.center;
                            });
                          },
                          child: new Text("C Center")),
                      new FlatButton(
                          onPressed: () {
                            setState(() {
                              _crossAxisAlignment = CrossAxisAlignment.end;
                            });
                          },
                          child: new Text("C End")),
                      new FlatButton(
                          onPressed: () {
                            setState(() {
                              _crossAxisAlignment = CrossAxisAlignment.stretch;
                            });
                          },
                          child: new Text("Strech")),
                    ],
                  ),
                ],
              ),
            ),
            preferredSize: Size(0.0, 180.0)),
      ),
      body: new Container(
        color: Colors.yellowAccent,
        child: _isRow
            ? new RowWidget(
                _mainAxisAlignment, _crossAxisAlignment, _mainAxisSize)
            : ColumnWidget(
                _mainAxisAlignment, _crossAxisAlignment, _mainAxisSize),
      ),
    );
  }
}
