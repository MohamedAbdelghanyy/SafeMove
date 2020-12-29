import 'package:flutter/material.dart';
import './main_drawer.dart';

class WifiScreen extends StatelessWidget {
  static const routeName = '/wifi-screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Wifi"),
      ),
      drawer: MainDrawer(),
      body: Text("Placeholder"),
    );
  }
}
