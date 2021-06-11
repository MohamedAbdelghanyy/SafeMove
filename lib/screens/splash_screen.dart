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

import 'package:SafeMove/data/global.dart';
import 'package:SafeMove/models/floorplan_model.dart';
import 'package:SafeMove/screens/admin_view.dart';
import 'package:SafeMove/screens/map_screen.dart';
import 'package:SafeMove/screens/sign_in.dart';
import 'package:SafeMove/services/data_manager.dart';
import 'package:flutter/material.dart';

import 'dart:async';

import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:provider/provider.dart';

class SplashScreen extends StatefulWidget {
  static const routeName = '/';

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  var model;

  Future<Function> iniApp() async {
    await DataManager.mPrefManager.loadDataFromLocalMemory();
    if (DataManager.mPrefManager.isLoggedIn()) {
      await DataManager.getRoomsData();
      model.setRoomsData(DataManager.roomsData);
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
              return MapScreen();
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
    model = Provider.of<FloorPlanModel>(context);
    return Scaffold(
      backgroundColor: Global.secondaryColor,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(0.0),
        child: AppBar(
          brightness: Brightness.dark,
        ),
      ),
      body: Stack(
        children: [
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.all(30.0),
            child: Image.asset(
              'assets/covidlogo.png',
              width: 200,
            ),
          ),
          Padding(
            padding:
                EdgeInsets.only(top: MediaQuery.of(context).size.height - 150),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: SpinKitSquareCircle(
                color: Global.primaryColor,
                size: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
