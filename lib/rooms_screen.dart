import 'package:flutter/material.dart';

import './main_drawer.dart';

class RoomsScreen extends StatelessWidget {
  static const routeName = '/rooms-screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Rooms"),
      ),
      drawer: MainDrawer(),
      body: Center(child: Text("Rooms")),
    );
  }
}
