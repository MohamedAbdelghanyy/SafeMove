import 'package:SafeMove/wifi_screen.dart';
import 'package:flutter/material.dart';

import './login.dart';
import './home.dart';
import './wifi_screen.dart';
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
      initialRoute: '/',
      routes: {
        '/': (ctx) => WifiScreen(),
        ProfileScreen.routeName: (ctx) => ProfileScreen(),
        LoginFormState.routeName: (ctx) => LoginForm(),
        WifiScreen.routeName: (ctx) => WifiScreen(),
      },
    );
  }
}
