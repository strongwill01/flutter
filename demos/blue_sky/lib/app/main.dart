import 'dart:html';

import 'package:blue_sky/study_hi/layout_demo.dart';
import 'package:blue_sky/study_hi/view_demo.dart';
import 'package:flutter/material.dart';
import './drawer_demo.dart';
import './bottom_navigation_bar_demo.dart';
import '../study/my_gridview.dart';
import '../study_hi/basic_demo.dart';

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
  var _tabs = [
    ViewDemo(),
    LayoutDemo(),
    BasicDemo(),
    MyGridView(),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          backgroundColor: Colors.grey[300],
          appBar: AppBar(
            backgroundColor: Colors.lightBlue,
            title: Text('APP'),
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
                Tab(icon: Icon(Icons.queue_music)),
              ],
            ),
          ),
          body: TabBarView(
            // controller: TabController(length: 3, vsync: null, initialIndex: 1),
            children: _tabs,
          ),
          drawer: DrawerDemo(),
          bottomNavigationBar: BottomNavigationBarDemo(),
        ));
  }
}
