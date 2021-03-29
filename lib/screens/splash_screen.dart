/*
import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    super.initState();

    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 2))
          ..repeat();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [Color(0xFFff8e89), Color(0xFFff7366)],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: AnimatedBuilder(
                  animation: _controller,
                  builder: (_, child) {
                    return Transform.rotate(
                      angle: _controller.value * 2 * math.pi,
                      child: child,
                    );
                  },
                  child: Image(
                    image: AssetImage("assets/covidlogo.png"),
                    width: 350,
                    height: 250,
                  )),
            ),
            Text(
              "SafeMove",
              style: GoogleFonts.montserrat(
                  fontSize: 35,
                  fontWeight: FontWeight.w700,
                  color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}


*/

import 'package:SafeMove/screens/admin_view.dart';
import 'package:SafeMove/screens/home.dart';
import 'package:SafeMove/screens/sign_in.dart';
import 'package:SafeMove/services/data_manager.dart';
import 'package:flutter/material.dart';

import 'dart:async';

import 'package:flutter_spinkit/flutter_spinkit.dart';

class SplashScreen extends StatefulWidget {
  static const routeName = '/';

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Future<Function> iniApp() async {
    await DataManager.mPrefManager.loadDataFromLocalMemory();
    if (DataManager.mPrefManager.isLoggedIn()) {
      /*await DataManager.iniUserAddresses();
      await DataManager.iniMainMenuCategories();
      await DataManager.iniMainMenuItems();*/
    }
    return Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) {
          if (DataManager.mPrefManager.isLoggedIn()) {
            print("Already Logged In");
            if (DataManager.mPrefManager.getType() != 'admin') {
              return HomeScreen();
            } else {
              return AdminView();
            }
          } else {
            return SignInScreen();
          }
        },
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    iniApp();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(0.0),
        child: AppBar(
          brightness: Brightness.dark,
          flexibleSpace: Container(
            decoration: new BoxDecoration(
              gradient: LinearGradient(
                colors: <Color>[
                  Color(0xFF00d466),
                  Color(0xFF00af87),
                ],
              ),
            ),
          ),
        ),
      ),
      body: Stack(
        children: [
          Container(
            constraints: BoxConstraints.expand(),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [Color(0xFFff8e89), Color(0xFFff7366)],
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.all(30.0),
            child: Image.asset(
              'assets/covidlogo.png',
              width: 300,
            ),
          ),
          Padding(
            padding:
                EdgeInsets.only(top: MediaQuery.of(context).size.height - 150),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: SpinKitSquareCircle(
                color: Color(0xFFff8e89),
                size: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
