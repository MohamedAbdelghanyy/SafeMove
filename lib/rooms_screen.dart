import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'dart:io';

import './main_drawer.dart';

class RoomsScreen extends StatefulWidget {
  static const routeName = '/rooms-screen';
  @override
  _RoomsScreenState createState() => _RoomsScreenState();
}

class _RoomsScreenState extends State<RoomsScreen> {
  var roomsData = "";
  List<ListTile> roomsDataList = List();
  final dbRef = FirebaseDatabase.instance.reference();

  Future<void> startReading() async {
    while (true) {
      dbRef.reference().child('counter').once().then((DataSnapshot snapshot) {
        print('Connected to second database and read ${snapshot.value}');
        setState(() {
          roomsData = snapshot.value;
        });
      });
      sleep(Duration(seconds: 5));
    }
  }

  @override
  Widget build(BuildContext context) {
    startReading();
    return Scaffold(
      appBar: AppBar(
        title: Text("Rooms"),
      ),
      drawer: MainDrawer(),
      body: Center(child: Text(roomsData)),
    );
  }
}
