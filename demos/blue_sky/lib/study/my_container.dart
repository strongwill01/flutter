import 'dart:ui';

import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "container",
      home: Scaffold(
        body: Center(
            child: Container(
          child: Text(
            "my container",
            style: TextStyle(fontSize: 30.0, color: Colors.white),
          ),
          alignment: Alignment.topLeft,
          width: 400.0,
          height: 300.0,
          // color: Colors.lightBlue,
          padding: const EdgeInsets.fromLTRB(16.0, 6.0, 0, 0),
          margin: getContainerMargin(),
          decoration: new BoxDecoration(
              gradient: const LinearGradient(colors: [
                Colors.lightBlue,
                Colors.blueGrey,
                Colors.deepPurple
              ]),
              border: Border.all(color: Colors.yellow, width: 3.0)),
        )),
      ),
    );
  }

  EdgeInsets getContainerMargin() => const EdgeInsets.all(16);
}
