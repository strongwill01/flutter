import 'package:flutter/material.dart';

class BasicDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // return RichTextDemo();
    return ContainerDemo();
  }
}

class ContainerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[100],
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Icon(
              Icons.pool,
              size: 32.0,
              color: Colors.white,
            ),
            // color: Color.fromRGBO(3, 50, 255, 1.0),
            // padding: EdgeInsets.only(left:16.0, top: 16.0),
            padding: EdgeInsets.all(8.0),
            margin: EdgeInsets.all(16.0),
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              color: Color.fromRGBO(3, 50, 255, 1.0),
              border: Border.all(
                  color: Colors.yellow, width: 5, style: BorderStyle.solid),
              // borderRadius: BorderRadius.all(Radius.circular(16.0)),
              borderRadius: BorderRadius.circular(16.0),
            ),
          ),
          Container(
            child: Icon(
              Icons.pool,
              size: 32.0,
              color: Colors.white,
            ),
            padding: EdgeInsets.all(8.0),
            // margin: EdgeInsets.all(16.0),
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              color: Color.fromRGBO(3, 50, 255, 1.0),
              border: Border.all( 
                  color: Colors.yellow, width: 5, style: BorderStyle.solid),
              // borderRadius: BorderRadius.only(
              //   topLeft: Radius.circular(60.0),
              //   bottomLeft: Radius.circular(60.0),
              // ),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0.0, 12.0),
                  color: Color.fromRGBO(13, 50, 255, 1.0),
                  blurRadius: 20,
                  spreadRadius: -5
                )
              ]
              ,shape: BoxShape.circle,
            //   gradient: RadialGradient(
            //     colors: [
            //       Color.fromRGBO(7, 102, 255, 1.0),
            //       Color.fromRGBO(3, 28, 128 , 1.0),
            //     ]
            //   )
            gradient: LinearGradient(
                colors: [
                  Color.fromRGBO(7, 102, 255, 1.0),
                  Color.fromRGBO(3, 28, 128 , 1.0),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
            )
            ),
          )
        ],
      ),
    );
  }
}

class RichTextDemo extends StatelessWidget {
  String _title = "沁园春 雪";

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: '''《$_title》 
北国风光，千里冰封，万里雪飘。
望长城内外，惟余莽莽；大河上下，顿失滔滔。
山舞银蛇，原驰蜡象，欲与天公试比高。
须晴日，看红装素裹，分外妖娆。
江山如此多娇，引无数英雄竞折腰。
惜秦皇汉武，略输文采；唐宗宋祖，稍逊风骚。
一代天骄，成吉思汗，只识弯弓射大雕。
俱往矣，数风流人物，还看今朝。''',
        style: TextStyle(
          fontWeight: FontWeight.w400,
          letterSpacing: 2.0,
          fontSize: 16.0,
        ),
        children: [
          TextSpan(
            text: '.com',
            style: TextStyle(fontSize: 12.0),
          ),
        ],
      ),
      textAlign: TextAlign.center,
    );
  }
}
