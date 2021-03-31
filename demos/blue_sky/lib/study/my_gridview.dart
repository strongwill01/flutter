import 'dart:ui';

import 'package:flutter/material.dart';

class MyGridView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "listview dynamic",
      home: Scaffold(
        appBar: new AppBar(
          title: Text("listview widget"),
        ),
        body: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 6,
            crossAxisSpacing: 5,
            childAspectRatio: 0.75,
          ),
          children: [
            Image.network(
              'http://img5.mtime.cn/mt/2021/03/01/180828.70304425_1280X720X2.jpg',
              fit: BoxFit.cover,
            ),
            Image.network(
              'http://img5.mtime.cn/mt/2021/03/10/195950.96032038_1280X720X2.jpg',
              fit: BoxFit.cover,
            ),
            Image.network(
              'http://img5.mtime.cn/mt/2021/02/14/145625.44623343_1280X720X2.jpg',
              fit: BoxFit.cover,
            ),
            Image.network(
              'http://img5.mtime.cn/mt/2021/02/14/143408.99321231_1280X720X2.jpg',
              fit: BoxFit.cover,
            ),
            Image.network(
              'http://img5.mtime.cn/mt/2021/03/18/165420.12433223_1280X720X2.jpg',
              fit: BoxFit.cover,
            ),
            Image.network(
              'http://img5.mtime.cn/mt/2020/10/09/144501.63977609_1280X720X2.jpg',
              fit: BoxFit.cover,
            ),
            Image.network(
              'http://img5.mtime.cn/mt/2021/02/26/162204.78461345_1280X720X2.jpg',
              fit: BoxFit.cover,
            ),
            Image.network(
              'http://img5.mtime.cn/mt/2021/01/19/131806.75427869_1280X720X2.jpg',
              fit: BoxFit.cover,
            ),
            Image.network(
              'http://img5.mtime.cn/mt/2019/06/06/104113.66331913_1280X720X2.jpg',
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),
    );
  }
}

/* class MyGridView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "listview dynamic",
      home: Scaffold(
        appBar: new AppBar(
          title: Text("listview widget"),
        ),
        body: GridView.count(
          padding: const EdgeInsets.all(20.0),
          crossAxisSpacing: 10,
          crossAxisCount: 3,
          children: [
            const Text(
              "hello world!",
              style: TextStyle(
                  color: Colors.lightBlue,
                  backgroundColor: Colors.yellow,
                  fontSize: 25),
              textAlign: TextAlign.center,
            ),
            const Text("hello flutter!"),
            const Text("hello android!"),
            const Text("hello ios!"),
            const Text("hello technology!"),
            const Text("hello world!"),
          ],
        ),
      ),
    );
  }
} */
