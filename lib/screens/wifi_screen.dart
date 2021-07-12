import 'dart:async';

import 'package:SafeMove/data/global.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:wifi_iot/wifi_iot.dart';
import 'package:firebase_database/firebase_database.dart';
import './main_drawer.dart';

void main() async {
  runApp(WifiScreen());
}

class WifiScreen extends StatefulWidget {
  static const routeName = '/wifi-screen';
  @override
  _WifiScreenState createState() => _WifiScreenState();
}

class _WifiScreenState extends State<WifiScreen> {
  final dbRef = FirebaseDatabase.instance.reference();
  List<Widget> mWList = new List();

  @override
  void initState() {
    startScanning();
    super.initState();
  }

  Future<void> startScanning() async {
    WiFiForIoTPlugin.isEnabled().then((val) async {
      if (val) {
        List<WifiNetwork> _scanResult;
        print("Rescanning...");
        try {
          _scanResult = await WiFiForIoTPlugin.loadWifiList();
          print("Loaded!");
          if (_scanResult != null && _scanResult.length > 0) {
            List<ListTile> wifiWList = List();
            _scanResult.forEach((wifiNetwork) {
              wifiWList.add(
                ListTile(
                  title: Text(wifiNetwork.ssid +
                      ", " +
                      wifiNetwork.bssid +
                      ", " +
                      wifiNetwork.level.toString() +
                      ", " +
                      wifiNetwork.frequency.toString()),
                ),
              );
            });
            setState(() {
              mWList.clear();
            });
            setState(() {
              mWList = wifiWList;
            });
          }
          print("Initialized!");
        } on PlatformException {
          print("Error");
        }
      } else {
        print("Wifi is disabled!");
      }
    });
    Timer.periodic(Duration(seconds: 5), (Timer t) {
      WiFiForIoTPlugin.isEnabled().then((val) async {
        if (val) {
          List<WifiNetwork> _scanResult;
          print("Rescanning...");
          try {
            _scanResult = await WiFiForIoTPlugin.loadWifiList();
            print("Loaded!");
            if (_scanResult != null && _scanResult.length > 0) {
              List<ListTile> wifiWList = List();
              _scanResult.forEach((wifiNetwork) {
                wifiWList.add(
                  ListTile(
                    title: Text(wifiNetwork.ssid +
                        ", " +
                        wifiNetwork.bssid +
                        ", " +
                        wifiNetwork.level.toString() +
                        ", " +
                        wifiNetwork.frequency.toString()),
                  ),
                );
              });
              setState(() {
                mWList.clear();
              });
              setState(() {
                mWList = wifiWList;
              });
            }
            print("Initialized!");
          } on PlatformException {
            print("Error");
          }
        } else {
          print("Wifi is disabled!");
        }
      });
    });
  }

  @override
  Widget build(BuildContext poContext) {
    return Scaffold(
      drawer: MainDrawer(),
      appBar: AppBar(
        backgroundColor: Global.primaryColor,
        elevation: 0,
        title: Text(
          'WiFi Data',
          style: TextStyle(color: Global.secondaryColor),
        ),
        iconTheme: IconThemeData(color: Global.secondaryColor),
      ),
      body: ListView(
        padding: kMaterialListPadding,
        children: mWList != null || mWList.length > 0
            ? mWList
            : Text('Scanning Wifi...'),
      ),
    );
  }
}
