import 'package:SafeMove/profile.dart';
import 'package:SafeMove/wifi_screen.dart';
import 'package:flutter/material.dart';
import './profile.dart';
import './wifi_screen.dart';

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
            alignment: Alignment.centerLeft,
            color: Theme.of(context).accentColor,
            child: Text(
              'MyCart',
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 30,
                color: Theme.of(context).primaryColor,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          buildListTitle(
            'Categories',
            Icons.shop,
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
            () {},
          ),
        ],
      ),
    );
  }
}
