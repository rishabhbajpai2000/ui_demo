import 'package:flutter/material.dart';
import 'package:ui_demo/login_signup.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const LoginSignup()),
          );
        },
        child: Scaffold(
          body: Container(
            color: const Color(0xff762A39),
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
