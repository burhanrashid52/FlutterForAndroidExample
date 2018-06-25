import 'package:flutter/material.dart';
import 'package:sample_flutter_app/acivity_example.dart';
import 'package:sample_flutter_app/linear_layout_widget.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Flutter For Android Developers"),
      ),
      body: new Center(
        child: new Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: new FlatButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ActivityScreen()),
                  );
                },
                color: Theme.of(context).accentColor,
                child: new Text("Activity UI"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: new FlatButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => LinearLayoutScreen()),
                  );
                },
                color: Theme.of(context).accentColor,
                child: new Text("LinearLayout"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
