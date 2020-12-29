import 'package:SafeMove/login.dart';
import 'package:flutter/material.dart';

import './home.dart';
import './wifi_screen.dart';
import './profile.dart';
import './admin-panel.dart';
import './rooms_screen.dart';
import './login.dart';
import './signup.dart';
import 'services/perference_manager.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  PrefManager myPrefManager = new PrefManager();

  @override
  Widget build(BuildContext context) {
    if (myPrefManager.getPermission() == 0) {
      return MaterialApp(
        title: 'Safe Move',
        theme: ThemeData(
          buttonTheme: ButtonThemeData(buttonColor: Colors.white),
          primaryColor: Colors.white,
        ),
        initialRoute: LoginForm.routeName,
        routes: {
          '/': (context) => HomePage(),
          ProfileScreen.routeName: (context) => ProfileScreen(),
          WifiScreen.routeName: (context) => WifiScreen(),
          AdminPanel.routeName: (context) => AdminPanel(),
          RoomsScreen.routeName: (context) => RoomsScreen(),
          LoginForm.routeName: (context) => LoginForm(),
          SignupFormSeller.routeName: (context) => SignupFormSeller(),
        },
      );
    } else {
      return MaterialApp(
        title: 'Safe Move',
        theme: ThemeData(
          buttonTheme: ButtonThemeData(buttonColor: Colors.white),
          primaryColor: Colors.white,
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => HomePage(),
          ProfileScreen.routeName: (context) => ProfileScreen(),
          WifiScreen.routeName: (context) => WifiScreen(),
          AdminPanel.routeName: (context) => AdminPanel(),
          RoomsScreen.routeName: (context) => RoomsScreen(),
          LoginForm.routeName: (context) => LoginForm(),
          SignupFormSeller.routeName: (context) => SignupFormSeller(),
        },
      );
    }
  }
}
