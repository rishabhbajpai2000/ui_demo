import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ui_demo/Providers/LoginProvider.dart';
import 'package:ui_demo/enter_otp.dart';
import 'package:ui_demo/login_signup.dart';
import 'splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
      // specifying the providers for the application.
      MultiProvider(providers: [
    // Provider for ThoughtProvider
    ChangeNotifierProvider(create: (_) => LoginProvider()),
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: LoginSignup(),
    );
  }
}
