import 'dart:html';

import 'package:flutter/material.dart';
import './drawer_demo.dart';
import './bottom_navigation_bar_demo.dart';
import '../study/my_listview.dart';
import '../study/my_gridview.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
      theme: ThemeData(
        primarySwatch: Colors.yellow,
        highlightColor: Color.fromRGBO(255, 255, 255, 0.6),
        splashColor: Colors.white70,
      ),
    );
  }
}

class Home extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          backgroundColor: Colors.grey[300],
          appBar: AppBar(
            backgroundColor: Colors.lightBlue,
            title: Text('TOM'),
            actions: [
              IconButton(
                icon: Icon(Icons.search),
                tooltip: "Search",
                onPressed: () {
                  debugPrint("Search action is pressed.");
                },
              ),
              IconButton(
                icon: Icon(Icons.more_vert),
                tooltip: "More",
                onPressed: () {
                  debugPrint("More action is pressed.");
                },
              )
            ],
            elevation: 0.0,
            bottom: TabBar(
              unselectedLabelColor: Colors.black45,
              indicatorColor: Colors.black54,
              indicatorSize: TabBarIndicatorSize.label,
              indicatorWeight: 1.0,
              tabs: [
                Tab(icon: Icon(Icons.local_activity)),
                Tab(icon: Icon(Icons.local_airport)),
                Tab(icon: Icon(Icons.local_atm)),
              ],
            ),
          ),
          body: TabBarView(children: [
            MyGridView(),
            Icon(Icons.local_airport, size: 128.0, color: Colors.black12),
            Icon(Icons.local_atm, size: 128.0, color: Colors.black12),
          ]),
          drawer: DrawerDemo(),
          bottomNavigationBar: BottomNavigationBarDemo(),
        ));
  }
}
