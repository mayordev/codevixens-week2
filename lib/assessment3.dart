//Exploring MaterialApp, Scaffold, Center, and ElevatedButton widgets

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Button Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ButtonScreen(),
    );
  }
}

class ButtonScreen extends StatefulWidget {
  @override
  _ButtonScreenState createState() => _ButtonScreenState();
}

class _ButtonScreenState extends State<ButtonScreen> {
  String buttonText = 'Click Me';

  void _updateButtonText() {
    setState(() {
      buttonText = 'Button Clicked';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Button'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: _updateButtonText,
          child: Text(buttonText),
        ),
      ),
    );
  }
}
