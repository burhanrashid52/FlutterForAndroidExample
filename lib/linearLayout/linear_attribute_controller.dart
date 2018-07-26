import 'package:flutter/material.dart';

class LinearAttributeControllerWidget extends StatelessWidget {
  AttributeSelection attributeSelection;
  bool _isRow;
  MainAxisAlignment _mainAxisAlignment;
  CrossAxisAlignment _crossAxisAlignment;
  MainAxisSize _mainAxisSize;

  LinearAttributeControllerWidget(this._isRow, this._mainAxisAlignment,
      this._crossAxisAlignment, this._mainAxisSize,
      {this.attributeSelection});

  @override
  Widget build(BuildContext context) {
    return new Container(
      color: Colors.red,
      child: new Column(
        children: <Widget>[
          new Row(
            children: <Widget>[
              new Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: new Text("Oreintation"),
                  ),
                  new Row(
                    children: <Widget>[
                      new FlatButton(
                          onPressed: () {
                            _isRow = true;
                            updateAttributes();
                          },
                          child: new Text(
                            "Row",
                            style: new TextStyle(
                                color: _isRow ? Colors.white : Colors.black),
                          )),
                      new FlatButton(
                          onPressed: () {
                            _isRow = false;
                            updateAttributes();
                          },
                          child: new Text(
                            "Column",
                            style: new TextStyle(
                                color: _isRow ? Colors.black : Colors.white),
                          )),
                    ],
                    mainAxisAlignment: MainAxisAlignment.center,
                  ),
                ],
              ),
              new Divider(
                color: Colors.white,
              ),
              new Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: new Text("Wrap/Match"),
                  ),
                  new Row(
                    children: <Widget>[
                      new FlatButton(
                          onPressed: () {
                            _mainAxisSize = MainAxisSize.min;
                            updateAttributes();
                          },
                          child: new Text(
                            "Min",
                            style: new TextStyle(
                              color: _mainAxisSize == MainAxisSize.min
                                  ? Colors.white
                                  : Colors.black,
                            ),
                          )),
                      new FlatButton(
                          onPressed: () {
                            _mainAxisSize = MainAxisSize.max;
                            updateAttributes();
                          },
                          child: new Text("Max",
                              style: new TextStyle(
                                color: _mainAxisSize == MainAxisSize.max
                                    ? Colors.white
                                    : Colors.black,
                              ))),
                    ],
                  ),
                ],
              ),
            ],
          ),
          new Divider(
            color: Colors.white,
          ),
          new Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: new Text("Gravity on Main Axis"),
              ),
              new Row(
                children: <Widget>[
                  new FlatButton(
                      onPressed: () {
                        _mainAxisAlignment = MainAxisAlignment.start;
                        updateAttributes();
                      },
                      child: new Text(
                        "Start",
                        style: new TextStyle(
                            color: _mainAxisAlignment == MainAxisAlignment.start
                                ? Colors.white
                                : Colors.black),
                      )),
                  new FlatButton(
                      onPressed: () {
                        _mainAxisAlignment = MainAxisAlignment.center;
                        updateAttributes();
                      },
                      child: new Text(
                        "Center",
                        style: new TextStyle(
                            color:
                                _mainAxisAlignment == MainAxisAlignment.center
                                    ? Colors.white
                                    : Colors.black),
                      )),
                  new FlatButton(
                      onPressed: () {
                        _mainAxisAlignment = MainAxisAlignment.end;
                        updateAttributes();
                      },
                      child: new Text(
                        "End",
                        style: new TextStyle(
                            color: _mainAxisAlignment == MainAxisAlignment.end
                                ? Colors.white
                                : Colors.black),
                      )),
                ],
                mainAxisAlignment: MainAxisAlignment.center,
              ),
            ],
          ),
          new Divider(
            color: Colors.white,
          ),
          new Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: new Text("Main Axis Aligment (Chains)"),
              ),
              new Row(
                children: <Widget>[
                  new FlatButton(
                      onPressed: () {
                        _mainAxisAlignment = MainAxisAlignment.spaceAround;
                        updateAttributes();
                      },
                      child: new Text(
                        "Around",
                        style: new TextStyle(
                            color: _mainAxisAlignment ==
                                    MainAxisAlignment.spaceAround
                                ? Colors.white
                                : Colors.black),
                      )),
                  new FlatButton(
                      onPressed: () {
                        _mainAxisAlignment = MainAxisAlignment.spaceEvenly;
                        updateAttributes();
                      },
                      child: new Text(
                        "Evenly",
                        style: new TextStyle(
                            color: _mainAxisAlignment ==
                                    MainAxisAlignment.spaceEvenly
                                ? Colors.white
                                : Colors.black),
                      )),
                  new FlatButton(
                      onPressed: () {
                        _mainAxisAlignment = MainAxisAlignment.spaceBetween;
                        updateAttributes();
                      },
                      child: new Text(
                        "Between",
                        style: new TextStyle(
                            color: _mainAxisAlignment ==
                                    MainAxisAlignment.spaceBetween
                                ? Colors.white
                                : Colors.black),
                      )),
                ],
                mainAxisAlignment: MainAxisAlignment.center,
              ),
            ],
          ),
          new Divider(
            color: Colors.white,
          ),
          new Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: new Text("Gravity on Cross Axis"),
              ),
              new Row(
                children: <Widget>[
                  new FlatButton(
                      onPressed: () {
                        _crossAxisAlignment = CrossAxisAlignment.start;
                        updateAttributes();
                      },
                      child: new Text(
                        "Start",
                        style: new TextStyle(
                            color:
                                _crossAxisAlignment == CrossAxisAlignment.start
                                    ? Colors.white
                                    : Colors.black),
                      )),
                  new FlatButton(
                      onPressed: () {
                        _crossAxisAlignment = CrossAxisAlignment.center;
                        updateAttributes();
                      },
                      child: new Text(
                        "Center",
                        style: new TextStyle(
                            color:
                                _crossAxisAlignment == CrossAxisAlignment.center
                                    ? Colors.white
                                    : Colors.black),
                      )),
                  new FlatButton(
                      onPressed: () {
                        _crossAxisAlignment = CrossAxisAlignment.end;
                        updateAttributes();
                      },
                      child: new Text(
                        "End",
                        style: new TextStyle(
                            color: _crossAxisAlignment == CrossAxisAlignment.end
                                ? Colors.white
                                : Colors.black),
                      )),
                  new FlatButton(
                      onPressed: () {
                        _crossAxisAlignment = CrossAxisAlignment.stretch;
                        updateAttributes();
                      },
                      child: new Text(
                        "Stretch",
                        style: new TextStyle(
                            color: _crossAxisAlignment ==
                                    CrossAxisAlignment.stretch
                                ? Colors.white
                                : Colors.black),
                      )),
                ],
                mainAxisAlignment: MainAxisAlignment.center,
              ),
            ],
          ),
          new SizedBox(
            width: 8.0,
            height: 8.0,
          )
        ],
      ),
    );
  }

  void updateAttributes() {
    attributeSelection(
        _isRow, _mainAxisAlignment, _mainAxisSize, _crossAxisAlignment);
  }
}

typedef void AttributeSelection(bool isRow, MainAxisAlignment mainAxisAlignment,
    MainAxisSize mainAxisSize, CrossAxisAlignment crossAxisAlignment);
