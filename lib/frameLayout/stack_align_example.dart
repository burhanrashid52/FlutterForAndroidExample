import 'package:flutter/material.dart';

class StackWidgets extends StatelessWidget {
  final AlignmentGeometry alignmentGeometry;
  StackWidgets(this.alignmentGeometry);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: alignmentGeometry,
      children: <Widget>[
        _buildBoxContainer(Colors.red, 200.0, "1"),
        _buildBoxContainer(Colors.blue, 150.0, "2"),
        _buildBoxContainer(Colors.green, 100.0, "3"),
        _buildBoxContainer(Colors.orange, 50.0, "4"),
      ],
    );
  }
}

Widget _buildBoxContainer(Color bgColor, double size, String text) {
  return Container(
    color: bgColor,
    height: size,
    width: size,
    child: Center(
      child: Text(
        text,
        style: TextStyle(color: Colors.white, fontSize: 25.0),
      ),
    ),
  );
}

class StackAlignWidgets extends StatelessWidget {
  final AlignmentGeometry alignmentGeometry;
  StackAlignWidgets(this.alignmentGeometry);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Align(
          alignment: AlignmentDirectional.topStart,
          child: _buildBoxContainer(Colors.red, 200.0, "1"),
        ),
        Align(
          alignment: AlignmentDirectional.topEnd,
          child: _buildBoxContainer(Colors.blue, 150.0, "2"),
        ),
        Align(
          alignment: alignmentGeometry,
          child: _buildBoxContainer(Colors.green, 100.0, "3"),
        ),
        Align(
          alignment: AlignmentDirectional.bottomEnd,
          child: _buildBoxContainer(Colors.orange, 50.0, "4"),
        )
      ],
    );
  }
}
