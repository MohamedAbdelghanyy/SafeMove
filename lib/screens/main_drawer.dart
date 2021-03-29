import 'package:SafeMove/screens/map_screen.dart';
import 'package:SafeMove/screens/profile.dart';
import 'package:SafeMove/screens/admin_view.dart';
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
        size: 26,
      ),
      title: Text(
        title,
        style: TextStyle(
          fontFamily: 'RobotoCondensed',
          fontSize: 24,
          fontWeight: FontWeight.bold,
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
            width: double.infinity,
            padding: EdgeInsets.all(20),
            alignment: Alignment.center,
            color: Theme.of(context).accentColor,
            child: Text(
              'Safe Move',
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 30,
                color: Theme.of(context).primaryColor,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          buildListTitle(
            'Home',
            Icons.home,
            () {
              Navigator.of(context).pushNamed('/');
            },
          ),
          buildListTitle(
            'Profile',
            Icons.person,
            () {
              Navigator.of(context).pushNamed(ProfileScreen.routeName);
            },
          ),
          buildListTitle(
            'Scan WIFI',
            Icons.wifi,
            () {
              Navigator.of(context).pushNamed(WifiScreen.routeName);
            },
          ),
          buildListTitle(
            'View Rooms',
            Icons.business,
            () {
              Navigator.of(context).pushNamed(RoomsScreen.routeName);
            },
          ),
          /*
          buildListTitle(
            'Admin Area',
            Icons.admin_panel_settings_outlined,
            () {
              Navigator.of(context).pushNamed(AdminView.routeName);
            },
          ),
          */
          buildListTitle(
            'Self Report',
            Icons.bluetooth,
            () {
              Navigator.of(context).pushNamed(SelfReport.routeName);
            },
          ),
          buildListTitle(
            'Symptomps',
            Icons.info,
            () {
              Navigator.of(context).pushNamed(Symptoms.routeName);
            },
          ),
          /*
          buildListTitle(
            'MapView',
            Icons.info,
            () {
              Navigator.of(context).pushNamed(MapView.routeName);
            },
          ),
          */
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
