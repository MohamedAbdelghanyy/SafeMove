import 'package:SafeMove/screens/map_screen.dart';
import 'package:SafeMove/screens/sign_in.dart';
import 'package:SafeMove/screens/admin_view.dart';
import 'package:SafeMove/screens/self_report.dart';
import 'package:SafeMove/screens/splash_screen.dart';
import 'package:SafeMove/screens/symptoms.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'screens/home.dart';
import 'screens/wifi_screen.dart';
import 'screens/profile.dart';
import 'screens/rooms_screen.dart';
import 'screens/sign_in.dart';
import 'screens/sign_up.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Safe Move',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        buttonTheme: ButtonThemeData(buttonColor: Colors.white),
        primaryColor: Colors.white,
      ),
      initialRoute: SplashScreen.routeName, //LoginForm.routeName,
      routes: {
        '/': (context) => SplashScreen(),
        HomeScreen.routeName: (context) => HomeScreen(),
        ProfileScreen.routeName: (context) => ProfileScreen(),
        WifiScreen.routeName: (context) => WifiScreen(),
        RoomsScreen.routeName: (context) => RoomsScreen(),
        SignInScreen.routeName: (context) => SignInScreen(),
        SignUpScreen.routeName: (context) => SignUpScreen(),
        Symptoms.routeName: (context) => Symptoms(),
        SelfReport.routeName: (context) => SelfReport(),
        AdminView.routeName: (context) => AdminView(),
        MapView.routeName: (context) => MapView(),
      },
    );
  }
}
