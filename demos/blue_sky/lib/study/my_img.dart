import 'dart:ui';

import 'package:flutter/material.dart';

class MyImg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    Image getImage(String url,[Function() onError]){
      Image img = new Image.network(url);
      var resolve = img.image.resolve(ImageConfiguration.empty);
      resolve.addListener(ImageStreamListener((_,__){
        print('load success.');
        },onError: (exception, stackTrace) {
          print("load fail.");
        },
      ));
      return img;
    }

    return MaterialApp(
      title: "container",
      home: Scaffold(
        body: Center(
          child: Container(
            child: getImage('https://img.icons8.com/office/2x/google-logo.png'),
            width:500.0,
            height: 300.0,
            color: Colors.lightBlue,
          ),
        ),
      ),
    );
  }

  EdgeInsets getContainerMargin() => const EdgeInsets.all(16);

}