import 'package:safemove/data/global.dart';
import 'package:safemove/models/map_model.dart';
import 'package:safemove/screens/map_screen.dart';
import 'package:safemove/screens/sign_in.dart';
import 'package:safemove/screens/splash_screen.dart';
import 'package:safemove/screens/symptoms.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<MapModel>(create: (context) => MapModel()),
      ],
      child: MaterialApp(
        title: 'Safe Move',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          buttonTheme: ButtonThemeData(buttonColor: Global.secondaryColor),
        ),
        initialRoute: SplashScreen.routeName,
        routes: {
          '/': (context) => SplashScreen(),
          ProfileScreen.routeName: (context) => ProfileScreen(),
          RoomsScreen.routeName: (context) => RoomsScreen(),
          SignInScreen.routeName: (context) => SignInScreen(),
          SignUpScreen.routeName: (context) => SignUpScreen(),
          Symptoms.routeName: (context) => Symptoms(),
          MapScreen.routeName: (context) => MapScreen(),
        },
      ),
    );
  }
}
