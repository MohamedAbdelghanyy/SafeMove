import 'package:SafeMove/models/grid_model.dart';
import 'package:SafeMove/services/data_manager.dart';
import 'dart:async';

import 'package:wifi_iot/wifi_iot.dart';

class FingerprintModel {
  static Future<GridModel> findGrid(List<WifiNetwork> scanResult) async {
    int rangeExpander = 0;
    for (int i = 0; i < DataManager.gridsData.length; i++) {
      bool foundL1 = false, foundL2 = false, foundL3 = false;
      bool foundR1 = false, foundR2 = false, foundR3 = false;
      scanResult.forEach((wifiNetwork) {
        if (DataManager.gridsData[i].fingerPrintL1[0] == wifiNetwork.bssid &&
            !foundL1) {
          if (DataManager.gridsData[i].fingerPrintL1[1] + rangeExpander ==
              wifiNetwork.frequency) {
            foundL1 = true;
          }
        }
        if (DataManager.gridsData[i].fingerPrintL2[0] == wifiNetwork.bssid &&
            !foundL2) {
          if (DataManager.gridsData[i].fingerPrintL2[1] + rangeExpander ==
              wifiNetwork.frequency) {
            foundL2 = true;
          }
        }
        if (DataManager.gridsData[i].fingerPrintL3[0] == wifiNetwork.bssid &&
            !foundL3) {
          if (DataManager.gridsData[i].fingerPrintL3[1] + rangeExpander ==
              wifiNetwork.frequency) {
            foundL3 = true;
          }
        }
        if (DataManager.gridsData[i].fingerPrintR1[0] == wifiNetwork.bssid &&
            !foundR1) {
          if (DataManager.gridsData[i].fingerPrintR1[1] + rangeExpander ==
              wifiNetwork.frequency) {
            foundR1 = true;
          }
        }
        if (DataManager.gridsData[i].fingerPrintR2[0] == wifiNetwork.bssid &&
            !foundR2) {
          if (DataManager.gridsData[i].fingerPrintR2[1] + rangeExpander ==
              wifiNetwork.frequency) {
            foundR2 = true;
          }
        }
        if (DataManager.gridsData[i].fingerPrintR3[0] == wifiNetwork.bssid &&
            !foundR3) {
          if (DataManager.gridsData[i].fingerPrintR3[1] + rangeExpander ==
              wifiNetwork.frequency) {
            foundR3 = true;
          }
        }
      });
      if ((foundL1 && foundL2 && foundL3) || (foundR1 && foundR2 && foundR3)) {
        return DataManager.gridsData[i];
      }
    }
    return null;
  }
}
