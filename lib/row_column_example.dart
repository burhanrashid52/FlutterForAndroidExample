import 'package:flutter/material.dart';

class RowWidget extends StatelessWidget {
  MainAxisAlignment _mainAxisAlignment;
  CrossAxisAlignment _crossAxisAlignment;
  MainAxisSize _mainAxisSize;

  RowWidget(
      this._mainAxisAlignment, this._crossAxisAlignment, this._mainAxisSize);

  @override
  Widget build(BuildContext context) {
    return new Row(
      mainAxisAlignment: _mainAxisAlignment,
      crossAxisAlignment: _crossAxisAlignment,
      mainAxisSize: _mainAxisSize,
      children: getWidgets(),
    );
  }
}

class ColumnWidget extends StatelessWidget {
  MainAxisAlignment _mainAxisAlignment;
  CrossAxisAlignment _crossAxisAlignment;
  MainAxisSize _mainAxisSize;

  ColumnWidget(
      this._mainAxisAlignment, this._crossAxisAlignment, this._mainAxisSize);

  @override
  Widget build(BuildContext context) {
    return new Column(
      mainAxisAlignment: _mainAxisAlignment,
      crossAxisAlignment: _crossAxisAlignment,
      mainAxisSize: _mainAxisSize,
      children: getWidgets(),
    );
  }
}

List<Widget> getWidgets() {
  List<Widget> widgets = new List<Widget>();
  widgets.add(new CircleAvatar(
    minRadius: 25.0,
    child: new Text("1"),
  ));
  widgets.add(new Padding(
    padding: const EdgeInsets.all(8.0),
    child: new CircleAvatar(
      minRadius: 50.0,
      child: new Text("2"),
    ),
  ));
  widgets.add(new CircleAvatar(
    minRadius: 25.0,
    child: new Text("3"),
  ));
  return widgets;
}
