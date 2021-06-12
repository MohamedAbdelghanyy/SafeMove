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
      print('Searching for grid...');
      print('Expanded Range is set to ' + rangeExpander.toString());
      for (int i = 0; i < DataManager.gridsData.length; i++) {
        bool foundL1 = false, foundL2 = false, foundL3 = false;
        bool foundR1 = false, foundR2 = false, foundR3 = false;
        print(scanResult.length);
        scanResult.forEach((wifiNetwork) {
          print(wifiNetwork.bssid + wifiNetwork.level.toString());
          if (DataManager.gridsData[i].fingerPrintL1[0] == wifiNetwork.bssid &&
              !foundL1) {
            print('Found bssid L1');
            if (DataManager.gridsData[i].fingerPrintL1[1] - rangeExpander <=
                    wifiNetwork.level &&
                DataManager.gridsData[i].fingerPrintL1[1] + rangeExpander >=
                    wifiNetwork.level) {
              foundL1 = true;
              print('Found Fingerprint L1');
            }
          }
          if (DataManager.gridsData[i].fingerPrintL2[0] == wifiNetwork.bssid &&
              !foundL2) {
            print('Found bssid L2');
            if (DataManager.gridsData[i].fingerPrintL2[1] - rangeExpander <=
                    wifiNetwork.level &&
                DataManager.gridsData[i].fingerPrintL2[1] + rangeExpander >=
                    wifiNetwork.level) {
              foundL2 = true;
              print('Found Fingerprint L2');
            }
          }
          if (DataManager.gridsData[i].fingerPrintL3[0] == wifiNetwork.bssid &&
              !foundL3) {
            print('Found bssid L3');
            if (DataManager.gridsData[i].fingerPrintL3[1] - rangeExpander <=
                    wifiNetwork.level &&
                DataManager.gridsData[i].fingerPrintL3[1] + rangeExpander >=
                    wifiNetwork.level) {
              foundL3 = true;
              print('Found Fingerprint L3');
            }
          }
          if (DataManager.gridsData[i].fingerPrintR1[0] == wifiNetwork.bssid &&
              !foundR1) {
            print('Found bssid R1');
            if (DataManager.gridsData[i].fingerPrintR1[1] - rangeExpander <=
                    wifiNetwork.level &&
                DataManager.gridsData[i].fingerPrintR1[1] + rangeExpander >=
                    wifiNetwork.level) {
              foundR1 = true;
              print('Found Fingerprint R1');
            }
          }
          if (DataManager.gridsData[i].fingerPrintR2[0] == wifiNetwork.bssid &&
              !foundR2) {
            print('Found bssid R2');
            if (DataManager.gridsData[i].fingerPrintR2[1] - rangeExpander <=
                    wifiNetwork.level &&
                DataManager.gridsData[i].fingerPrintR2[1] + rangeExpander >=
                    wifiNetwork.level) {
              foundR2 = true;
              print('Found Fingerprint R2');
            }
          }
          if (DataManager.gridsData[i].fingerPrintR3[0] == wifiNetwork.bssid &&
              !foundR3) {
            print('Found bssid R3 |' +
                (DataManager.gridsData[i].fingerPrintR3[1] - rangeExpander)
                    .toString());
            if (DataManager.gridsData[i].fingerPrintR3[1] - rangeExpander <=
                    wifiNetwork.level &&
                DataManager.gridsData[i].fingerPrintR3[1] + rangeExpander >=
                    wifiNetwork.level) {
              foundR3 = true;
              print('Found Fingerprint R3');
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
