import 'package:flutter/material.dart';

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: 200.0,
              maxWidth: 200.0,
            ),
            child: Container(
              color: Color.fromRGBO(5, 56, 200, 1.0),
            ),
          )
        ],
      ),
    );
  }
}

class AspectRatioDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AspectRatio(
            child: Container(
              color: Color.fromRGBO(5, 56, 200, 1.0),
            ),
            aspectRatio: 16.0 / 9.0,
          )
        ],
      ),
    );
  }
}

class StackDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      // Flexbox
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Stack(
          children: [
            SizedBox(
              child: Container(
                alignment: Alignment.topRight,
                width: 160.0,
                height: 200.0,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(3, 56, 255, 1.0),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Icon(
                  Icons.star,
                  color: Colors.white,
                  size: 16.0,
                ),
              ),
            ),
            SizedBox(
              height: 32.0,
            ),
            SizedBox(
              child: Container(
                // alignment: Alignment.bottomRight,
                width: 100.0,
                height: 100.0,
                decoration: BoxDecoration(
                    color: Color.fromRGBO(114, 54, 255, 1.0),
                    // borderRadius: BorderRadius.circular(8.0),
                    shape: BoxShape.circle,
                    gradient: RadialGradient(colors: [
                      Color.fromRGBO(200, 200, 200, 0.8),
                      Color.fromRGBO(3, 56, 255, 0.1)
                    ])),
                child: Icon(
                  Icons.brightness_2,
                  color: Colors.white,
                  size: 32.0,
                ),
              ),
            ),
            Positioned(
              right: 20.0,
              top: 20.0,
              child: Icon(
                Icons.star,
                color: Colors.white,
                size: 16.0,
              ),
            ),
            Positioned(
              right: 30.0,
              top: 50.0,
              child: Icon(
                Icons.star,
                color: Colors.white,
                size: 13.0,
              ),
            ),
            Positioned(
              right: 60.0,
              top: 80.0,
              child: Icon(
                Icons.star,
                color: Colors.white,
                size: 18.0,
              ),
            ),
            Positioned(
              right: 120.0,
              top: 120.0,
              child: Icon(
                Icons.star,
                color: Colors.white,
                size: 16.0,
              ),
            ),
            Positioned(
              right: 30.0,
              top: 60.0,
              child: Icon(
                Icons.star,
                color: Colors.white,
                size: 12.0,
              ),
            ),
          ],
        )
      ],
    );
  }
}

class IconBadge extends StatelessWidget {
  final IconData mIconData;
  final double mSize;
  final double mAdditinalLimit = 30.0;

  IconBadge(this.mIconData, {this.mSize = 16.0});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Icon(
        mIconData,
        size: mSize * 2,
        color: Colors.white,
      ),
      width: mSize + mAdditinalLimit,
      height: mSize + mAdditinalLimit,
      color: Color.fromRGBO(3, 54, 255, 1.0),
    );
  }
}
