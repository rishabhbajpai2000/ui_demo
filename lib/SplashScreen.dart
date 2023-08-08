import 'package:flutter/material.dart';
import 'dart:math';

import 'package:ui_demo/RobertFox.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => RobertFox()),
          );
        },
        child: Scaffold(
          body: Container(
            color: Color(0xff762A39),
            child: Stack(
              children: [
                Center(child: Image.asset('assets/Background.png')),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
