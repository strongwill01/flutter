import 'package:flutter/material.dart';

class MyList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "listview",
      theme: ThemeData(primarySwatch: Colors.yellow),
      home: Scaffold(
        appBar: AppBar(
          title: Text("ListView"),
        ),
        body: new ListView(children: <Widget>[
          new ListTile(
            leading: new Icon(Icons.search_rounded),
            title: Text("search button"),
          ),
          new ListTile(
            leading: new Icon(Icons.zoom_out_map),
            title: Text("zoom button"),
          ),
          new ListTile(
            leading: new Icon(Icons.access_time_rounded),
            title: Text("time button"),
          )
        ]),
      ),
    );
  }
}
