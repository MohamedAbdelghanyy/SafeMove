import 'package:SafeMove/main_drawer.dart';
import 'package:flutter/material.dart';
import 'package:wifi_flutter/wifi_flutter.dart';
import './main_drawer.dart';

void main() => runApp(HomePage());

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
    return MaterialApp(
      home: Scaffold(
        drawer: MainDrawer(),
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
          child: ListView.builder(
            itemBuilder: (context, i) => _platformVersion[i],
            itemCount: _platformVersion.length,
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () async {
            final noPermissions = await WifiFlutter.promptPermissions();
            if (noPermissions) {
              return;
            }
            final networks = await WifiFlutter.wifiNetworks;
            setState(() {
              _platformVersion = networks
                  .map((network) => Text(
                      "Ssid ${network.ssid} - Strength ${network.rssi} - Secure ${network.isSecure}"))
                  .toList();
            });
          },
        ),
      ),
    );
  }
}
