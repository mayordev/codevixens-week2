// a simple responsive layout that displays a message centered on the screen.

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Responsive Layout Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ResponsiveLayoutDemo(),
    );
  }
}

class ResponsiveLayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Responsive Layout'),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth < 600) {
            return _buildMessage('Small Screen');
          } else if (constraints.maxWidth < 900) {
            return _buildMessage('Medium Screen');
          } else {
            return _buildMessage('Large Screen');
          }
        },
      ),
    );
  }

  Widget _buildMessage(String message) {
    return Center(
      child: Text(
        message,
        style: TextStyle(fontSize: 24),
      ),
    );
  }
}
