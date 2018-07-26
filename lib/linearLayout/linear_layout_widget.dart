import 'package:flutter/material.dart';
import 'package:sample_flutter_app/linearLayout/linear_attribute_controller.dart';
import 'package:sample_flutter_app/linearLayout/row_column_example.dart';

class LinearLayoutScreen extends StatefulWidget {
  @override
  _LinearLayoutScreenState createState() => new _LinearLayoutScreenState(true,
      MainAxisAlignment.start, CrossAxisAlignment.start, MainAxisSize.min);
}

class _LinearLayoutScreenState extends State<LinearLayoutScreen> {
  Widget _rowColumnWidget = new RowWidget();
  bool isRow;
  MainAxisAlignment mainAxisAlignment;
  CrossAxisAlignment crossAxisAlignment;
  MainAxisSize mainAxisSize;

  _LinearLayoutScreenState(this.isRow, this.mainAxisAlignment,
      this.crossAxisAlignment, this.mainAxisSize);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        bottom: new PreferredSize(
            child: new LinearAttributeControllerWidget(
                isRow, mainAxisAlignment, crossAxisAlignment, mainAxisSize,
                attributeSelection: (_isRow, _mainAxisAlignment, _mainAxisSize,
                    _crossAxisAlignment) {
              setState(() {
                if (_isRow) {
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
                isRow = _isRow;
                mainAxisSize = _mainAxisSize;
                mainAxisAlignment = _mainAxisAlignment;
                crossAxisAlignment = _crossAxisAlignment;
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
