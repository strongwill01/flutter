import 'package:flutter/material.dart';

class MyList2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "listview landscape",
      theme: ThemeData(primarySwatch: Colors.yellow),
      home: Scaffold(
        appBar: AppBar(title: Text("ListView landscape")),
        body: Column(
          children: [
            Container(
              height: 160.0,
              child: ColorList(),
            ),
            Container(
              height: 500.0,
              child: ColorList2(),
            )
          ],
        ),
      ),
    );
  }
}

class ColorList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // return ListView(
    //   scrollDirection: Axis.horizontal,
    //   children: <Widget>[
    //     new Container(width: 120.0, color: Colors.yellow),
    //     new Container(width: 120.0, color: Colors.lightBlue),
    //     new Container(width: 120.0, color: Colors.blueGrey),
    //     new Container(width: 120.0, color: Colors.purple),
    //     new Container(width: 120.0, color: Colors.cyan),
    //     new Container(width: 120.0, color: Colors.orange)
    //   ],
    // );

    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 300,
        itemBuilder: (context, index) {
          return Card(
            child: Text('horizontal--$index'),
          );
        });
  }
}

class ColorList2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      itemCount: 200,
      itemBuilder: (context, index) {
        return GestureDetector(
          child: Text(
            'vertical-$index',
            style: TextStyle(
              color: Colors.blue,
            ),
          ),
          onTap: () => Scaffold.of(context).showSnackBar(
            SnackBar(
              content: Text("click-$index"),
            ),
          ),
        );
      },
    );
  }
}
