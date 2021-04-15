import 'package:flutter/material.dart';
// ## study
// import 'package:blue_sky/study/my_text.dart';
// import 'package:blue_sky/study/my_container.dart';
// import 'package:blue_sky/study/my_img.dart';
// import 'package:blue_sky/study/my_listview.dart';
// import 'package:blue_sky/study/my_listview_h.dart';
// import 'package:blue_sky/study/my_listview_2.dart';
// import 'package:blue_sky/study/my_gridview.dart';
// import 'package:blue_sky/study/layout_row.dart';
// import 'package:blue_sky/study/layout_column.dart';
// import 'package:blue_sky/study/layout_stack.dart';

// ## app
import 'package:blue_sky/app/main.dart';

// ## study
// void main() => runApp(new MainApp());
// void main() => runApp(new MyText());
// void main() => runApp(new MyContainer());
// void main() => runApp(new MyImg());
// void main() => runApp(new MyList2());
// void main() => runApp(new ListView2(mItems: List.generate(500, (index) => "item $index")));
// void main() => runApp(new MyGridView());
// void main() => runApp(new MyRow());
// void main() => runApp(new MyColumn());
// void main() => runApp(new MyStackWidget());

// ## app
void main() => runApp(new App());

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      showSemanticsDebugger: false,
      title: "Hello Flutter",
      home: Scaffold(
        appBar: AppBar(
          title: Text("MainApp"),
          backgroundColor: Colors.yellow,
          ),
        body: Center(child: Text("Hello Flutter!")),
      ),
    );
  }
}
