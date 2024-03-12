//implementation of a basic user interface layout in Flutter using both single-childand multi-child layout widgets.

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FlutterLogo(
              size: 100,
            ),
            SizedBox(height: 20),
            _buildTextField("Username"),
            SizedBox(height: 20),
            _buildTextField("Password"),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTextField(String labelText) {
    return Container(
      width: 300,
      child: TextField(
        decoration: InputDecoration(
          labelText: labelText,
          border: OutlineInputBorder(),
        ),
      ),
    );
  }
}
