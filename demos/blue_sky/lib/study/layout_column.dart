import 'package:flutter/material.dart';

class MyColumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "row widget",
      home: Scaffold(
        appBar: AppBar(
          title: Text("c垂直布局"),
        ),
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
              Text("Hello"),
              Expanded(
                  child: Text(
                "build your dream!",
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                  backgroundColor: Colors.grey,
                ),
              )),
              Text("World"),
            ])),
      ),
    );
  }
}
