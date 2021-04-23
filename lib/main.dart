import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'moduels/bmi/screens/bmi_screen.dart';
import 'package:animated_splash/animated_splash.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimatedSplash(
        imagePath: 'assets/images/bmi.png',
        home: BMIScreen(),
        duration: 3000,
        type: AnimatedSplashType.StaticDuration,
      ),
    );
  }
}
