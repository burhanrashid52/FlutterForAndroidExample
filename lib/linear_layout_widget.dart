import 'package:flutter/material.dart';
import 'package:sample_flutter_app/attribute_controller.dart';
import 'package:sample_flutter_app/row_column_example.dart';

class LinearLayoutScreen extends StatefulWidget {
  @override
  _LinearLayoutScreenState createState() => new _LinearLayoutScreenState();
}

class _LinearLayoutScreenState extends State<LinearLayoutScreen> {
  Widget _rowColumnWidget = new RowWidget();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        bottom: new PreferredSize(
            child: new AttributeControllerWidget(attributeSelection: (isRow,
                _mainAxisAlignment, _mainAxisSize, _crossAxisAlignment) {
              setState(() {
                if (isRow) {
                  _rowColumnWidget = new RowWidget(
                    mainAxisAlignment: _mainAxisAlignment,
                    mainAxisSize: _mainAxisSize,
                    crossAxisAlignment: _crossAxisAlignment,
                  );
                } else {
                  _rowColumnWidget = new ColumnWidget(
                    mainAxisAlignment: _mainAxisAlignment,
                    mainAxisSize: _mainAxisSize,
                    crossAxisAlignment: _crossAxisAlignment,
                  );
                }
              });
            }),
            preferredSize: new Size(0.0, 248.0)),
      ),
      body: new Container(
        color: Colors.yellowAccent,
        child: _rowColumnWidget,
      ),
    );
  }
}
