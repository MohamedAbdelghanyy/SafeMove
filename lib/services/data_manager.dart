import 'dart:convert';

import 'package:safemove/data/global.dart';
import 'package:safemove/models/grid_model.dart';
import 'package:safemove/services/firebase_manager.dart';
import 'dart:async';
import 'package:safemove/services/perference_manager.dart';

class DataManager {
  static PrefManager mPrefManager = new PrefManager();
  static List roomsData = new List();
  static List<GridModel> gridsData = new List();

  static Future<void> getRoomsData() async {
    DataManager.roomsData = await FirebaseManager.getRoomsData();
  }

  static Future<void> getGridsData() async {
    for (int i = 0; i < Global.grids.length; i++) {
      DataManager.gridsData.add(GridModel.fromMap(Global.grids[i]));
    }
  }

  static Future<void> getCrowdingData() async {
    Map<String, dynamic> crowdingData = await FirebaseManager.getCrowdingData();
    crowdingData.forEach((gridId, data) {
      for (int i = 0; i < DataManager.gridsData.length; i++) {
        if (DataManager.gridsData[i].id.toString() == gridId) {
          int currCrowding = 0;
          var data2 = data as Map<String, dynamic>;
          data2.forEach((userId, timeStamp) {
            Duration diff = DateTime.now().difference(
                DateTime.fromMillisecondsSinceEpoch(
                    (int.parse(timeStamp.toString()))));
            if (diff.inMinutes < 5) {
              currCrowding++;
              print(userId.toString() +
                  ' - Last Active: ' +
                  diff.inMinutes.toString() +
                  ' mins. ago');
            }
          });
          DataManager.gridsData[i].crowding = currCrowding;
        }
      }
    });
  }

  static Future<void> setSelfReportData(int selfReportStatus) async {
    await FirebaseManager.setSelfReport(selfReportStatus);
  }

  static Future<void> setCurrentLocation(int gridId) async {
    await FirebaseManager.setCurrentLocation(gridId);
  }
}
