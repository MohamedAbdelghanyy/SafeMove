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

  static Future<void> setSelfReportData(int selfReportStatus) async {
    await FirebaseManager.setSelfReport(selfReportStatus);
  }

  static Future<void> setCurrentLocation(int gridId) async {
    await FirebaseManager.setCurrentLocation(gridId);
  }
}
