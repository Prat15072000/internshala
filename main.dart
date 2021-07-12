import 'package:flutter/material.dart';
import 'package:task/dashboard.dart';
import 'package:task/orderStatus.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: OrderStatus(),
    );
  }
}
