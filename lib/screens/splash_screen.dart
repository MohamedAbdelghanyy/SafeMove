import 'package:safemove/data/global.dart';
import 'package:safemove/models/map_model.dart';
import 'package:safemove/screens/admin_view.dart';
import 'package:safemove/screens/map_screen.dart';
import 'package:safemove/screens/sign_in.dart';
import 'package:safemove/services/data_manager.dart';
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
      await DataManager.getGridsData();
      model.setRoomsData(DataManager.roomsData);
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
    model = Provider.of<MapModel>(context);
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
              'assets/images/logo.png',
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
