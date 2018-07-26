import 'package:flutter/material.dart';

class FrameAttributeControllerWidget extends StatefulWidget {
  final FrameAttributeSelection frameAttributeSelection;
  FrameAttributeControllerWidget({this.frameAttributeSelection});
  @override
  _FrameAttributeControllerWidgetState createState() =>
      _FrameAttributeControllerWidgetState();
}

class _FrameAttributeControllerWidgetState
    extends State<FrameAttributeControllerWidget> {
  AlignmentGeometry _alignmentGeometry = AlignmentDirectional.center;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.all(4.0),
          child: Text(
            "Gravity",
            style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _buildGravityButton("TS", AlignmentDirectional.topStart),
            _buildGravityButton("TC", AlignmentDirectional.topCenter),
            _buildGravityButton("TE", AlignmentDirectional.topEnd),
            _buildGravityButton("CS", AlignmentDirectional.centerStart),
            _buildGravityButton("C", AlignmentDirectional.center),
            _buildGravityButton("CE", AlignmentDirectional.centerEnd),
            _buildGravityButton("BE", AlignmentDirectional.bottomStart),
            _buildGravityButton("BC", AlignmentDirectional.bottomCenter),
            _buildGravityButton("BE", AlignmentDirectional.bottomEnd),
          ],
        ),
        Divider(
          color: Colors.white,
        ),
        Padding(
          padding: EdgeInsets.all(4.0),
          child: Text(
            "Layout Gravity",
            style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _buildGravityButton("TS", AlignmentDirectional.topStart),
            _buildGravityButton("TC", AlignmentDirectional.topCenter),
            _buildGravityButton("TE", AlignmentDirectional.topEnd),
            _buildGravityButton("CS", AlignmentDirectional.centerStart),
            _buildGravityButton("C", AlignmentDirectional.center),
            _buildGravityButton("CE", AlignmentDirectional.centerEnd),
            _buildGravityButton("BE", AlignmentDirectional.bottomStart),
            _buildGravityButton("BC", AlignmentDirectional.bottomCenter),
            _buildGravityButton("BE", AlignmentDirectional.bottomEnd),
          ],
        ),
      ],
    );
  }

  Widget _buildGravityButton(String buttonText, AlignmentGeometry gravity) {
    return GestureDetector(
        onTap: () {
          setState(() {
            _alignmentGeometry = gravity;
          });
          widget.frameAttributeSelection(gravity);
        },
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Text(
            buttonText,
            style: TextStyle(
              color:
                  _alignmentGeometry == gravity ? Colors.white : Colors.black,
            ),
          ),
        ));
  }
}

typedef void FrameAttributeSelection(AlignmentGeometry gravity);
