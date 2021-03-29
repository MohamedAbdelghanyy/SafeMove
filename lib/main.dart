import 'package:SafeMove/screens/login.dart';
import 'package:SafeMove/screens/admin_view.dart';
import 'package:SafeMove/screens/self_report.dart';
import 'package:SafeMove/screens/splash_screen.dart';
import 'package:SafeMove/screens/symptoms.dart';
import 'package:flutter/material.dart';

import 'screens/home.dart';
import 'screens/wifi_screen.dart';
import 'screens/profile.dart';
import 'screens/admin-panel.dart';
import 'screens/rooms_screen.dart';
import 'screens/login.dart';
import 'screens/signup.dart';
import 'package:SafeMove/services/perference_manager.dart';

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
        initialRoute: RoomsScreen.routeName, //LoginForm.routeName,
        routes: {
          '/': (context) => HomePage(),
          ProfileScreen.routeName: (context) => ProfileScreen(),
          WifiScreen.routeName: (context) => WifiScreen(),
          RoomsScreen.routeName: (context) => RoomsScreen(),
          LoginForm.routeName: (context) => LoginForm(),
          SignupFormSeller.routeName: (context) => SignupFormSeller(),
          Symptoms.routeName: (context) => Symptoms(),
          SelfReport.routeName: (context) => SelfReport(),
          AdminView.routeName: (context) => AdminView(),
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
          '/': (context) => AdminView(),
          ProfileScreen.routeName: (context) => ProfileScreen(),
          WifiScreen.routeName: (context) => WifiScreen(),
          AdminPanel.routeName: (context) => AdminPanel(),
          RoomsScreen.routeName: (context) => RoomsScreen(),
          LoginForm.routeName: (context) => LoginForm(),
          SignupFormSeller.routeName: (context) => SignupFormSeller(),
          AdminView.routeName: (context) => AdminView(),
          SelfReport.routeName: (context) => SelfReport(),
        },
      );
    }
  }
}
