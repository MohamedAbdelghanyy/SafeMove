import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:wifi_iot/wifi_iot.dart';
import 'dart:io';

void main() => runApp(WifiScreen());

class WifiScreen extends StatefulWidget {
  @override
  _WifiScreenState createState() => _WifiScreenState();
}

class _WifiScreenState extends State<WifiScreen> {
  List<WifiNetwork> _scanResult;

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
      _scanResult = await loadWifiList();
      setState(() {});
      sleep(Duration(seconds: 5));
    }
  }

  Future<List<WifiNetwork>> loadWifiList() async {
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
        setState(() {
          wifiWList.add(
            ListTile(
              title: Text(wifiNetwork.ssid),
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
