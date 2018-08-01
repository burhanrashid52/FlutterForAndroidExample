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
            _buildGravityButton("TS", AlignmentDirectional.topStart, false),
            _buildGravityButton("TC", AlignmentDirectional.topCenter, false),
            _buildGravityButton("TE", AlignmentDirectional.topEnd, false),
            _buildGravityButton("CS", AlignmentDirectional.centerStart, false),
            _buildGravityButton("C", AlignmentDirectional.center, false),
            _buildGravityButton("CE", AlignmentDirectional.centerEnd, false),
            _buildGravityButton("BE", AlignmentDirectional.bottomStart, false),
            _buildGravityButton("BC", AlignmentDirectional.bottomCenter, false),
            _buildGravityButton("BE", AlignmentDirectional.bottomEnd, false),
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
            _buildGravityButton("TS", AlignmentDirectional.topStart, true),
            _buildGravityButton("TC", AlignmentDirectional.topCenter, true),
            _buildGravityButton("TE", AlignmentDirectional.topEnd, true),
            _buildGravityButton("CS", AlignmentDirectional.centerStart, true),
            _buildGravityButton("C", AlignmentDirectional.center, true),
            _buildGravityButton("CE", AlignmentDirectional.centerEnd, true),
            _buildGravityButton("BE", AlignmentDirectional.bottomStart, true),
            _buildGravityButton("BC", AlignmentDirectional.bottomCenter, true),
            _buildGravityButton("BE", AlignmentDirectional.bottomEnd, true),
          ],
        ),
      ],
    );
  }

  Widget _buildGravityButton(
      String buttonText, AlignmentGeometry gravity, bool isAligned) {
    return GestureDetector(
        onTap: () {
          setState(() {
            _alignmentGeometry = gravity;
          });
          widget.frameAttributeSelection(gravity, isAligned);
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

typedef void FrameAttributeSelection(AlignmentGeometry gravity, bool isAligned);
