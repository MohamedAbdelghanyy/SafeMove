import 'dart:async';

import 'package:safemove/data/global.dart';
import 'package:safemove/models/fingerprint_model.dart';
import 'package:safemove/models/map_model.dart';
import 'package:safemove/screens/main_drawer.dart';
import 'package:safemove/screens/rooms_screen.dart';
import 'package:safemove/widgets/map/map_widget.dart';
import 'package:safemove/widgets/map/raw_gesture_detector_widget.dart';
import 'package:safemove/widgets/map/route_selection_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:wifi_iot/wifi_iot.dart';

class MapScreen extends StatefulWidget {
  static const routeName = '/map-screen';

  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  var model;

  @override
  void initState() {
    startScanning();
    super.initState();
  }

  Future<void> startScanning() async {
    Timer.periodic(Duration(seconds: 5), (Timer t) {
      WiFiForIoTPlugin.isEnabled().then((val) async {
        if (val) {
          List<WifiNetwork> _scanResult;
          print("Rescanning...");
          try {
            _scanResult = await WiFiForIoTPlugin.loadWifiList();
            print("Loaded!");
            if (_scanResult != null && _scanResult.length > 0) {
              print('WIFI LIST FOUND! + ' + _scanResult.length.toString());
              _scanResult.forEach((wifiNetwork) {
                print(wifiNetwork.bssid.toString() +
                    wifiNetwork.level.toString());
              });
              await FingerprintModel.findGrid(_scanResult).then(
                (value) => {
                  if (value != null) {model.setLocationGrid(value)}
                },
              );
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
  Widget build(BuildContext context) {
    model = Provider.of<MapModel>(context);
    return Scaffold(
      backgroundColor: Global.primaryColor,
      appBar: AppBar(
        backgroundColor: Global.primaryColor,
        elevation: 0,
        title: Text(
          'MIU Map',
          style: TextStyle(color: Global.secondaryColor),
        ),
        iconTheme: IconThemeData(color: Global.secondaryColor),
      ),
      drawer: MainDrawer(),
      floatingActionButton:
          model.isScaled || model.pos.x != 0 || model.pos.y != 0
              ? FloatingActionButton(
                  onPressed: () {
                    model.reset();
                  },
                  child: Icon(
                    Icons.fullscreen_exit_rounded,
                    size: 35,
                  ),
                  backgroundColor: Global.secondaryColor,
                )
              : SizedBox(),
      body: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
        child: Container(
          color: Global.secondaryColor,
          child: Center(
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Column(
                  children: <Widget>[
                    RouteSelectionWidget(),
                    RawGestureDetectorWidget(
                      child: MapWidget(),
                    ),
                  ],
                ),
                model.showBottomModal
                    ? Container(
                        alignment: Alignment.center,
                        width: MediaQuery.of(context).size.width,
                        height: ((MediaQuery.of(context).size.width + 60) / 3),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(25),
                              topRight: Radius.circular(25)),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 20.0,
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(15),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    alignment: Alignment.center,
                                    width: ((MediaQuery.of(context).size.width -
                                            60) /
                                        3),
                                    height:
                                        ((MediaQuery.of(context).size.width -
                                                60) /
                                            3),
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        width: 3,
                                        color: Global.secondaryColor,
                                      ),
                                      borderRadius: BorderRadius.circular(25),
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey,
                                          blurRadius: 20.0,
                                        ),
                                      ],
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          model.routeData.roomY.location +
                                              ' is ',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                            color: Global.secondaryColor,
                                          ),
                                        ),
                                        SizedBox(height: 4),
                                        Text(
                                          (model.routeData.roomY.isSafe
                                              ? 'SAFE'
                                              : 'NOT SAFE'),
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                            color: model.routeData.roomY.isSafe
                                                ? Colors.green
                                                : Colors.red,
                                          ),
                                        ),
                                        SizedBox(height: 7),
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 6),
                                          child: Container(
                                            height: 30,
                                            alignment: Alignment.center,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(25),
                                              color: Global.secondaryColor,
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.grey,
                                                  blurRadius: 20.0,
                                                ),
                                              ],
                                            ),
                                            child: InkWell(
                                              onTap: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                        RoomsScreen(
                                                      roomData:
                                                          model.routeData.roomY,
                                                    ),
                                                  ),
                                                );
                                              },
                                              child: Text(
                                                'View Details',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(width: 15),
                                  Container(
                                    alignment: Alignment.center,
                                    width: ((MediaQuery.of(context).size.width -
                                            60) /
                                        3),
                                    height:
                                        ((MediaQuery.of(context).size.width -
                                                60) /
                                            3),
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        width: 3,
                                        color: Colors.green,
                                      ),
                                      borderRadius: BorderRadius.circular(25),
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey,
                                          blurRadius: 20.0,
                                        ),
                                      ],
                                    ),
                                    child: Text(
                                      'You will pass by ' +
                                          model.routeSafeRoomsCount.toString() +
                                          ' safe room(s)',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.green,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 15),
                                  Container(
                                    alignment: Alignment.center,
                                    width: ((MediaQuery.of(context).size.width -
                                            60) /
                                        3),
                                    height:
                                        ((MediaQuery.of(context).size.width -
                                                60) /
                                            3),
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        width: 3,
                                        color: Colors.red,
                                      ),
                                      borderRadius: BorderRadius.circular(25),
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey,
                                          blurRadius: 20.0,
                                        ),
                                      ],
                                    ),
                                    child: Text(
                                      'You will pass by ' +
                                          model.routeUnSafeRoomsCount
                                              .toString() +
                                          ' unsafe room(s)',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.red,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      )
                    : SizedBox()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
