import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Text widget",
      home: Scaffold(
        body: Center(
          child: Text(
            "纸上得来终觉浅， 绝知此事要躬行。——陆游《冬夜读书示子聿》",
            textAlign: TextAlign.start,
            maxLines: 1,
            overflow: TextOverflow.ellipsis, // fade 渐变(渐弱，褪色)
            style: TextStyle(
              fontSize: 20.0,
              color: Color.fromARGB(200, 128, 128, 128),
              decoration: TextDecoration.underline,
              decorationStyle: TextDecorationStyle.dotted,
            ),
          ),
        ),
      ),
    );
  }
}
