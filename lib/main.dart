import 'package:flutter/material.dart';
import 'splash.dart';
import 'introductory.dart';
import 'dashboard.dart';
import 'clickme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
      routes: {
        'introductory': (context) => Introduction(),
        'dashboard': (context) => Dashboard(),
        'clickme': (context) => Click(),
      },
    );
  }
}


