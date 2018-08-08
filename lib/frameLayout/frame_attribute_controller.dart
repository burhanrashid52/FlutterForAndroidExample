import 'package:flutter/material.dart';

class FrameAttributeControllerWidget extends StatefulWidget
    implements PreferredSizeWidget {
  final FrameAttributeSelection frameAttributeSelection;
  final int spanCount = 3;
  final double titlePadding = 12.0;
  final double titleFontSize = 14.0;

  FrameAttributeControllerWidget({this.frameAttributeSelection});

  @override
  _FrameAttributeControllerWidgetState createState() =>
      _FrameAttributeControllerWidgetState();

  @override
  Size get preferredSize => new Size(double.infinity, 220.0);
}

class _FrameAttributeControllerWidgetState
    extends State<FrameAttributeControllerWidget> {
  AlignmentGeometry _alignmentGravity = AlignmentDirectional.center;
  AlignmentGeometry _alignmentGravityLayout = AlignmentDirectional.center;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220.0,
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 5,
            child: Column(
              children: <Widget>[
                _buildTitleWidget("android:gravity"),
                _buildGridView(false)
              ],
            ),
          ),
          Container(width: 1.0, color: Colors.red),
          Expanded(
            flex: 5,
            child: Column(
              children: <Widget>[
                _buildTitleWidget("android:layout_gravity"),
                _buildGridView(true)
              ],
            ),
          )
        ],
      ),
    );
  }

  Padding _buildTitleWidget(String text) {
    return Padding(
      padding: EdgeInsets.all(widget.titlePadding),
      child: Text(
        text,
        style: TextStyle(
            fontSize: widget.titleFontSize,
            fontWeight: FontWeight.bold,
            color: Colors.white),
      ),
    );
  }

  GridView _buildGridView(bool isAligned) {
    return GridView
        .count(shrinkWrap: true, crossAxisCount: widget.spanCount, children: [
      _buildGravityButton("TS", AlignmentDirectional.topStart, isAligned),
      _buildGravityButton("TC", AlignmentDirectional.topCenter, isAligned),
      _buildGravityButton("TE", AlignmentDirectional.topEnd, isAligned),
      _buildGravityButton("CS", AlignmentDirectional.centerStart, isAligned),
      _buildGravityButton("C", AlignmentDirectional.center, isAligned),
      _buildGravityButton("CE", AlignmentDirectional.centerEnd, isAligned),
      _buildGravityButton("BS", AlignmentDirectional.bottomStart, isAligned),
      _buildGravityButton("BC", AlignmentDirectional.bottomCenter, isAligned),
      _buildGravityButton("BE", AlignmentDirectional.bottomEnd, isAligned),
    ]);
  }

  Widget _buildGravityButton(
      String buttonText, AlignmentGeometry gravity, bool isAligned) {
    return GestureDetector(
        onTap: () {
          setState(() {
            if (isAligned) {
              _alignmentGravityLayout = gravity;
            } else {
              _alignmentGravity = gravity;
            }
          });
          widget.frameAttributeSelection(gravity, isAligned);
        },
        child: Padding(
          padding: EdgeInsets.all(4.0),
          child: Text(
            buttonText,
            style: TextStyle(
              color: isAligned
                  ? _alignmentGravityLayout == gravity
                      ? Colors.white
                      : Colors.black
                  : _alignmentGravity == gravity ? Colors.white : Colors.black,
            ),
          ),
        ));
  }
}

typedef void FrameAttributeSelection(AlignmentGeometry gravity, bool isAligned);
