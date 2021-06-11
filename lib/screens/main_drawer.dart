import 'package:SafeMove/data/global.dart';
import 'package:SafeMove/screens/profile.dart';
import 'package:SafeMove/screens/self_report.dart';
import 'package:SafeMove/screens/sign_in.dart';
import 'package:SafeMove/screens/symptoms.dart';
import 'package:SafeMove/screens/wifi_screen.dart';
import 'package:SafeMove/services/data_manager.dart';
import 'package:flutter/material.dart';
import './profile.dart';
import './wifi_screen.dart';
import './rooms_screen.dart';

class MainDrawer extends StatelessWidget {
  Widget buildListTitle(String title, IconData icon, Function tapHandler) {
    return ListTile(
      leading: Icon(
        icon,
        size: 24,
      ),
      title: Text(
        title,
        style: TextStyle(
          fontFamily: 'RobotoCondensed',
          fontSize: 18,
        ),
      ),
      onTap: tapHandler,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          Container(
              height: 120,
              alignment: Alignment.center,
              color: Global.secondaryColor,
              child: Image(
                image: AssetImage("assets/covidlogo.png"),
                width: 350,
              )),
          SizedBox(
            height: 20,
          ),
          buildListTitle(
            'Home',
            Icons.home,
            () {
              Navigator.of(context).pushReplacementNamed('/');
            },
          ),
          buildListTitle(
            'Profile',
            Icons.person,
            () {
              Navigator.of(context)
                  .pushReplacementNamed(ProfileScreen.routeName);
            },
          ),
          buildListTitle(
            'Wifi Scan',
            Icons.wifi,
            () {
              Navigator.of(context).pushReplacementNamed(WifiScreen.routeName);
            },
          ),
          buildListTitle(
            'Rooms Crowding',
            Icons.business,
            () {
              Navigator.of(context).pushReplacementNamed(RoomsScreen.routeName);
            },
          ),
          buildListTitle(
            'Self Report',
            Icons.bluetooth,
            () {
              Navigator.of(context).pushReplacementNamed(SelfReport.routeName);
            },
          ),
          buildListTitle(
            'Symptomps',
            Icons.info,
            () {
              Navigator.of(context).pushReplacementNamed(Symptoms.routeName);
            },
          ),
          buildListTitle(
            'Logout',
            Icons.exit_to_app,
            () {
              DataManager.mPrefManager.logOut();
              Navigator.pushReplacementNamed(context, SignInScreen.routeName);
            },
          ),
        ],
      ),
    );
  }
}
