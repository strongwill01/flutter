import 'package:flutter/material.dart';

class ListView2 extends StatelessWidget {
  final List mItems;

  ListView2({Key key, @required this.mItems}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "listview dynamic",
      home: Scaffold(
        appBar: new AppBar(
          title: Text("listview widget"),
        ),
        body: new ListView.builder(
            itemCount: mItems.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text("${mItems[index]}"),
              );
            }),
      ),
    );
  }
}
