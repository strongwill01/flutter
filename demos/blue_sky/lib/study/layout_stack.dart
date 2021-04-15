import 'package:flutter/material.dart';

class MyStackWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "row widget",
      home: Scaffold(
        appBar: AppBar(
          title: Text("c层叠布局"),
        ),
        body: Stack(
          children: [
            Text("layer-1"),
            Text("layer-22"),
            Text("layer-333"),
          ],
        ),
      ),
    );
  }
}
