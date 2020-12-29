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
  Map<String, String> _recResult;
  List<ListTile> roomsDataList = List();
  final dbRef = FirebaseDatabase.instance.reference();

  void checkDB() {
    startReceiving();
  }

  Future<void> startReceiving() async {
    while (true) {
      print("rescanning...");
      _recResult = await loadData();
      setState(() {});
      sleep(Duration(seconds: 5));
    }
  }

  Future<Map<String, String>> loadData() async {
    print("Loading wifi list");
    Map<String, String> htResultNetwork;
    try {
      dbRef
          .reference()
          .child("data")
          .child("locations")
          .child("MIU")
          .child("rooms")
          .once()
          .then((DataSnapshot snapshot) {
        print('Connected to second database and read ${snapshot.value}');

        htResultNetwork = snapshot.value;
      });
    } on Exception {
      htResultNetwork = null;
    }

    return htResultNetwork;
  }

  Widget getWidgets() {
    if (_recResult != null && _recResult.length > 0) {
      List<ListTile> wifiWList = List();

      _recResult.forEach((k, v) {
        setState(() {
          wifiWList.add(
            ListTile(
              title: Text(k + " - " + v),
            ),
          );
        });
      });

      return ListView(
        padding: kMaterialListPadding,
        children: wifiWList,
      );
    } else {
      return Text("Checking WiFi!");
    }
  }

  @override
  Widget build(BuildContext context) {
    checkDB();
    return Scaffold(
      appBar: AppBar(
        title: Text("Rooms"),
      ),
      drawer: MainDrawer(),
      body: getWidgets(),
    );
  }
}
