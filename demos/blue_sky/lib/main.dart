import 'package:flutter/material.dart';
// import 'package:blue_sky/study/my_text.dart';
// import 'package:blue_sky/study/my_container.dart';
// import 'package:blue_sky/study/my_img.dart';
// import 'package:blue_sky/study/my_listview.dart';
// import 'package:blue_sky/study/my_listview_h.dart';
// import 'package:blue_sky/study/my_listview_2.dart';
import 'package:blue_sky/study/my_gridview.dart';

// void main() => runApp(new MainApp());
// void main() => runApp(new MyText());
// void main() => runApp(new MyContainer());
// void main() => runApp(new MyImg());
// void main() => runApp(new MyList2());
// void main() => runApp(new ListView2(mItems: List.generate(500, (index) => "item $index")));
void main() => runApp(new MyGridView());

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      showSemanticsDebugger: false,
      title: "Hello Flutter",
      home: Scaffold(
        appBar: AppBar(title: Text("MainApp")),
        body: Center(child: Text("Hello Flutter!")),
      ),
    );
  }
}
