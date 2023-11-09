import 'package:flutter/material.dart';
import 'package:rapid_reels/constants.dart';
import 'package:rapid_reels/view/screens/auth/loginScreen.dart';
import 'package:rapid_reels/view/screens/auth/signupScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shortzy',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: backgroundColor,
      ),
      home: const SignupScreen(),
    );
  }
}
