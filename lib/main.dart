import 'package:flutter/material.dart';

import './home.dart';
import './wifi_screen.dart';
import './profile.dart';
import './admin-panel.dart';
import './rooms_screen.dart';

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
        '/': (context) => HomePage(),
        ProfileScreen.routeName: (context) => ProfileScreen(),
        WifiScreen.routeName: (context) => WifiScreen(),
        AdminPanel.routeName: (context) => AdminPanel(),
        RoomsScreen.routeName: (context) => RoomsScreen(),
      },
    );
  }
}
