import 'package:flutter/material.dart';
import 'dashboard.dart';

class Click extends StatefulWidget {
  @override
  _ClickState createState() => _ClickState();
}

class _ClickState extends State<Click> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
            child: RaisedButton(
              child: Text('Click me to get the details from API'),
                onPressed:(){
                  Navigator.pushNamed(context, 'dashboard');
                },
                color: Colors.purple,
            ),
          )
      ),
    );
  }
}
