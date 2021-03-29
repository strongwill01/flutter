import 'package:flutter/material.dart';

class MyList2 extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: "listview landscape",
      theme: ThemeData(primarySwatch: Colors.yellow),
      home: Scaffold(
        appBar: AppBar(title: Text("ListView landscape")),
        body: Center(
          child: Container(
            height: 200.0,
            child: new ListView(
              scrollDirection: Axis.horizontal,
              children: [
                new Container(
                  width: 120.0,
                  color:Colors.yellow
                ),
                new Container(
                  width: 120.0,
                  color:Colors.lightBlue
                ),
                new Container(
                  width: 120.0,
                  color:Colors.blueGrey
                ),
                new Container(
                  width: 120.0,
                  color:Colors.purple
                )
              ],
            )
          ),
        )
    ));
  }
}