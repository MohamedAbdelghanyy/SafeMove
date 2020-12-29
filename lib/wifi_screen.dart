import 'package:flutter/material.dart';
import './main_drawer.dart';
import 'package:flutter/services.dart';
import 'package:wifi_iot/wifi_iot.dart';
import 'dart:io';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  runApp(WifiScreen());
}

class WifiScreen extends StatefulWidget {
  static const routeName = '/wifi-screen';
  @override
  _WifiScreenState createState() => _WifiScreenState();
}

class _WifiScreenState extends State<WifiScreen> {
  List<WifiNetwork> _scanResult;
  final dbRef = FirebaseDatabase.instance.reference();

  void checkWifi() {
    WiFiForIoTPlugin.isEnabled().then((val) {
      if (val) {
        startScanning();
      } else {
        print("Wifi is disabled!");
      }
    });
  }

  Future<void> startScanning() async {
    while (true) {
      print("rescanning...");
      _scanResult = await loadWifiList();
      setState(() {});
      sleep(Duration(seconds: 5));
    }
  }

  Future<List<WifiNetwork>> loadWifiList() async {
    print("Loading wifi list");
    List<WifiNetwork> htResultNetwork;
    try {
      htResultNetwork = await WiFiForIoTPlugin.loadWifiList();
    } on PlatformException {
      htResultNetwork = List<WifiNetwork>();
    }

    return htResultNetwork;
  }

  Widget getWidgets() {
    if (_scanResult != null && _scanResult.length > 0) {
      List<ListTile> wifiWList = List();

      _scanResult.forEach((wifiNetwork) {
        dbRef
            .child("data")
            .child("users")
            .child("wifi-data")
            .child("abdelghany")
            .child(wifiNetwork.bssid)
            .set({
          'bssid': wifiNetwork.bssid,
          'frequency': wifiNetwork.frequency,
          'rssi': wifiNetwork.level,
          "ssid": wifiNetwork.ssid,
          "timestamp": DateTime.now().millisecondsSinceEpoch
        });

        setState(() {
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
  Widget build(BuildContext poContext) {
    checkWifi();
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Wifi Scanner'),
        ),
        body: getWidgets(),
      ),
    );
  }
}
