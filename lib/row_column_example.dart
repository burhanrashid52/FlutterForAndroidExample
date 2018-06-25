import 'package:flutter/material.dart';

class RowWidget extends StatelessWidget {
  MainAxisAlignment mainAxisAlignment;
  CrossAxisAlignment crossAxisAlignment;
  MainAxisSize mainAxisSize;

  RowWidget(
      {this.mainAxisAlignment = MainAxisAlignment.start,
      this.crossAxisAlignment = CrossAxisAlignment.start,
      this.mainAxisSize = MainAxisSize.min});

  @override
  Widget build(BuildContext context) {
    return new Row(
      mainAxisAlignment: mainAxisAlignment,
      crossAxisAlignment: crossAxisAlignment,
      mainAxisSize: mainAxisSize,
      children: getIconWidgets(),
    );
  }
}

class ColumnWidget extends StatelessWidget {
  MainAxisAlignment mainAxisAlignment;
  CrossAxisAlignment crossAxisAlignment;
  MainAxisSize mainAxisSize;

  ColumnWidget(
      {this.mainAxisAlignment = MainAxisAlignment.start,
      this.crossAxisAlignment = CrossAxisAlignment.start,
      this.mainAxisSize = MainAxisSize.min});

  @override
  Widget build(BuildContext context) {
    return new Column(
      mainAxisAlignment: mainAxisAlignment,
      crossAxisAlignment: crossAxisAlignment,
      mainAxisSize: mainAxisSize,
      children: getIconWidgets(),
    );
  }
}

List<Widget> getWidgets() {
  List<Widget> widgets = new List<Widget>();
  widgets.add(new CircleAvatar(
    radius: 25.0,
    child: new Text("1"),
  ));
  widgets.add(new Padding(
    padding: const EdgeInsets.all(8.0),
    child: new CircleAvatar(
      radius: 50.0,
      child: new Text("2"),
    ),
  ));
  widgets.add(new CircleAvatar(
    radius: 25.0,
    child: new Text("3"),
  ));
  return widgets;
}

List<Widget> getIconWidgets() {
  List<Widget> widgets = new List<Widget>();
  widgets.add(new Icon(
    Icons.access_time,
    size: 50.0,
  ));
  widgets.add(new Icon(
    Icons.pie_chart,
    size: 100.0,
  ));
  widgets.add(new Icon(
    Icons.email,
    size: 50.0,
  ));
  return widgets;
}
