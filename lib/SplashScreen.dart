import 'package:flutter/material.dart';
import 'dart:math';

class MyHeart extends StatelessWidget {
  final double left;
  final double top;
  final bool small;

  MyHeart({required this.left, required this.top, required this.small});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: left,
      top: top,
      child: Transform.rotate(
        angle: -1,
        child: Icon(
          Icons.favorite,
          color: Color(0xffFFABB0),
          size: small ? 20 : 30,
        ),
      ),
    );
  }
}

class MyScreen extends StatelessWidget {
  List<MyHeart> _generateHearts(
    int count,
    double maxWidth,
    double maxHeight,
  ) {
    final Random random = Random(10);
    List<MyHeart> hearts = [];

    for (int i = 0; i < count; i++) {
      double left = random.nextDouble() * maxWidth;
      double top = random.nextDouble() * maxHeight;

      hearts.add(MyHeart(
        left: left,
        top: top,
        small: random.nextBool(),
      ));
    }

    return hearts;
  }

  @override
  Widget build(BuildContext context) {
    double maxWidth = MediaQuery.of(context).size.width;
    double maxHeight = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        body: Container(
          color: Color(0xff762A39), // Dark red background color
          child: Stack(
            children: [
              Center(child: Image.asset('assets/Logo.png')),
              ..._generateHearts(25, maxWidth, maxHeight)
            ], // Generate 20 hearts
          ),
        ),
      ),
    );
  }
}
