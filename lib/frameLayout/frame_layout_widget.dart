import 'package:flutter/material.dart';
import 'package:sample_flutter_app/frameLayout/stack_align_example.dart';
import 'frame_attribute_controller.dart';

class FrameLayoutScreen extends StatefulWidget {
  AlignmentGeometry alignmentGeometry = AlignmentDirectional.center;
  bool isAligned = false;

  @override
  _FrameLayoutScreenState createState() => _FrameLayoutScreenState();
}

class _FrameLayoutScreenState extends State<FrameLayoutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("FrameLayout"),
          bottom: FrameAttributeControllerWidget(
            frameAttributeSelection:
                (AlignmentGeometry direction, bool isAligned) {
              setState(() {
                widget.alignmentGeometry = direction;
                widget.isAligned = isAligned;
              });
            },
          ),
        ),
        body: Container(
          color: Colors.grey,
          constraints: BoxConstraints.expand(),
          child: widget.isAligned
              ? StackAlignWidgets(widget.alignmentGeometry)
              : StackWidgets(widget.alignmentGeometry),
        ));
  }
}
