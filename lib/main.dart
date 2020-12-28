import 'package:flutter/material.dart';

import './signup.dart';
import './login.dart';
import './profile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        buttonTheme: ButtonThemeData(buttonColor: Colors.white),
        primaryColor: Colors.white,
      ),
      home: Scaffold(
        body: Profile(),
      ),
    );
  }
}
