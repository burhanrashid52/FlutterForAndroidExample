import 'package:flutter/material.dart';
import 'package:sample_flutter_app/frameLayout/stack_align_example.dart';
import 'frame_attribute_controller.dart';

class FrameLayoutScreen extends StatefulWidget {
  AlignmentGeometry alignmentGeometry = AlignmentDirectional.center;

  @override
  _FrameLayoutScreenState createState() => _FrameLayoutScreenState();
}

class _FrameLayoutScreenState extends State<FrameLayoutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("FrameLayout"),
          bottom: PreferredSize(
              child: FrameAttributeControllerWidget(
                frameAttributeSelection: (AlignmentGeometry direction) {
                  setState(() {
                    widget.alignmentGeometry = direction;
                  });
                },
              ),
              preferredSize: new Size(0.0, 150.0)),
        ),
        body: Container(
          color: Colors.grey,
          constraints: BoxConstraints.expand(),
          child: StackWidgets(widget.alignmentGeometry),
        ));
  }
}
