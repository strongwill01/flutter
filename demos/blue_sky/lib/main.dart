import 'package:flutter/material.dart';
// import 'package:blue_sky/study/my_text.dart';
// import 'package:blue_sky/study/my_container.dart';
// import 'package:blue_sky/study/my_img.dart';
// import 'package:blue_sky/study/my_listview.dart';
import 'package:blue_sky/study/my_listview_h.dart';

// void main() => runApp(new MainApp());
// void main() => runApp(new MyText());
// void main() => runApp(new MyContainer());
// void main() => runApp(new MyImg());
void main() => runApp(new MyList2());

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Hello Flutter",
      home: Scaffold(
        appBar: AppBar(
          title: Text("MainApp")
        ),
        body: Center(
          child: Text("Hello Flutter!")
        ),
      ),
    );
  }
  
}