import 'package:SafeMove/main_drawer.dart';
import 'package:flutter/material.dart';
import './main_drawer.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> _platformVersion = [];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: MainDrawer(),
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(child: Text("Home")));
  }
}
