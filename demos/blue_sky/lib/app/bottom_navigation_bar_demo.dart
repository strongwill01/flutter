import 'package:flutter/material.dart';

class BottomNavigationBarDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _BottomNavigationBarDemoState();
  }
}

class _BottomNavigationBarDemoState extends State<BottomNavigationBarDemo> {
  int _currentIndex = 0;

  void _onTapHandler(int value) {
    setState(() {
      _currentIndex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _currentIndex,
      onTap: _onTapHandler,
      type: BottomNavigationBarType.fixed,
      fixedColor: Colors.black,
      items: [
        BottomNavigationBarItem(
          // 首页
          icon: Icon(Icons.first_page),
          title: Text('首页'),
        ),
        BottomNavigationBarItem(
          // 学习
          icon: Icon(Icons.star),
          title: Text(
            '学习',
            style: TextStyle(color: Colors.black),
          ),
        ),
        BottomNavigationBarItem(
          // 发现
          icon: Icon(Icons.search),
          title: Text('发现'),
        ),
        BottomNavigationBarItem(
          // 我的
          icon: Icon(Icons.person),
          title: Text('我的'),
        ),
      ],
    );
  }
}
