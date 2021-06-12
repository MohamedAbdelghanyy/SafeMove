import 'package:SafeMove/models/grid_model.dart';
import 'package:SafeMove/services/data_manager.dart';
import 'dart:async';

import 'package:wifi_iot/wifi_iot.dart';

class FingerprintModel {
  static Future<GridModel> findGrid(List<WifiNetwork> scanResult) async {
    int maxRangeExpanger = 10;
    for (int rangeExpander = 0;
        rangeExpander < maxRangeExpanger;
        rangeExpander++) {
      print('finding');
      for (int i = 0; i < DataManager.gridsData.length; i++) {
        print('loop: ' + i.toString());
        bool foundL1 = false, foundL2 = false, foundL3 = false;
        bool foundR1 = false, foundR2 = false, foundR3 = false;
        print(scanResult.length);
        scanResult.forEach((wifiNetwork) {
          print(wifiNetwork.bssid + wifiNetwork.level.toString());
          if (DataManager.gridsData[i].fingerPrintL1[0] == wifiNetwork.bssid &&
              !foundL1) {
            print('bssid L1');
            if (DataManager.gridsData[i].fingerPrintL1[1] - rangeExpander <=
                    wifiNetwork.level &&
                DataManager.gridsData[i].fingerPrintL1[1] + rangeExpander >=
                    wifiNetwork.level) {
              foundL1 = true;
              print('foundL1');
            }
          }
          if (DataManager.gridsData[i].fingerPrintL2[0] == wifiNetwork.bssid &&
              !foundL2) {
            print('bssid L2');
            if (DataManager.gridsData[i].fingerPrintL2[1] - rangeExpander <=
                    wifiNetwork.level &&
                DataManager.gridsData[i].fingerPrintL2[1] + rangeExpander >=
                    wifiNetwork.level) {
              foundL2 = true;
              print('foundL2');
            }
          }
          if (DataManager.gridsData[i].fingerPrintL3[0] == wifiNetwork.bssid &&
              !foundL3) {
            print('bssid L3');
            if (DataManager.gridsData[i].fingerPrintL3[1] - rangeExpander <=
                    wifiNetwork.level &&
                DataManager.gridsData[i].fingerPrintL3[1] + rangeExpander >=
                    wifiNetwork.level) {
              foundL3 = true;
              print('foundL3');
            }
          }
          if (DataManager.gridsData[i].fingerPrintR1[0] == wifiNetwork.bssid &&
              !foundR1) {
            print('bssid R1');
            if (DataManager.gridsData[i].fingerPrintR1[1] - rangeExpander <=
                    wifiNetwork.level &&
                DataManager.gridsData[i].fingerPrintR1[1] + rangeExpander >=
                    wifiNetwork.level) {
              foundR1 = true;
              print('foundR1');
            }
          }
          if (DataManager.gridsData[i].fingerPrintR2[0] == wifiNetwork.bssid &&
              !foundR2) {
            print('bssid R2');
            if (DataManager.gridsData[i].fingerPrintR2[1] - rangeExpander <=
                    wifiNetwork.level &&
                DataManager.gridsData[i].fingerPrintR2[1] + rangeExpander >=
                    wifiNetwork.level) {
              foundR2 = true;
              print('foundR2');
            }
          }
          if (DataManager.gridsData[i].fingerPrintR3[0] == wifiNetwork.bssid &&
              !foundR3) {
            print('bssid R3 |' +
                (DataManager.gridsData[i].fingerPrintR3[1] - rangeExpander)
                    .toString());
            if (DataManager.gridsData[i].fingerPrintR3[1] - rangeExpander <=
                    wifiNetwork.level &&
                DataManager.gridsData[i].fingerPrintR3[1] + rangeExpander >=
                    wifiNetwork.level) {
              foundR3 = true;
              print('foundR3');
            }
          }
        });
        if ((foundL1 && foundL2 && foundL3) ||
            (foundR1 && foundR2 && foundR3)) {
          print('GRID FOUND - id: ' +
              DataManager.gridsData[i].id.toString() +
              ' - Expanded Range: ' +
              rangeExpander.toString());
          return DataManager.gridsData[i];
        }
      }
    }
    return null;
  }
}
