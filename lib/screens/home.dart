import 'package:SafeMove/screens/main_drawer.dart';
import 'package:flutter/material.dart';
import './main_drawer.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = '/home-screen';
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: MainDrawer(),
        appBar: AppBar(
          title: const Text('Home'),
        ),
        body: Center(child: Text("Home")));
  }
}
