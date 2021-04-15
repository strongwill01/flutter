import 'package:flutter/material.dart';

class MyRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "row widget",
      home: Scaffold(
        appBar: AppBar(
          title: Text("布局"),
        ),
        body: Row(children: [
          Expanded(
              child: new RaisedButton(
            onPressed: () {},
            color: Colors.redAccent,
            child: Text('red button'),
          )),
          new RaisedButton(
            onPressed: () {},
            color: Colors.lightBlue,
            child: Text('blue'),
          ),
          new RaisedButton(
            onPressed: () {},
            color: Colors.yellowAccent,
            child: Text('yellow'),
          ),
        ]),
      ),
    );
  }
}
