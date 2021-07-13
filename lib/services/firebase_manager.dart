import 'dart:convert';

import 'package:safemove/models/room_data_model.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;
import 'package:safemove/services/data_manager.dart';

class FirebaseManager {
  static final Future<FirebaseApp> _future = Firebase.initializeApp();
  static final databaseRef = FirebaseDatabase.instance.reference();
  static const url =
      'https://safe-move-da6ea-default-rtdb.firebaseio.com/data/';

  static Future<List> getRoomsData() async {
    var path = 'locations/MIU/rooms.json';
    final List<RoomDataModel> items = [];
    try {
      final response = await http.get(url + path);
      final dbData = json.decode(response.body) as List<dynamic>;
      dbData.forEach((data) {
        items.add(RoomDataModel.fromMap(data));
      });
    } on Exception catch (e) {
      print(e.toString());
      throw (e);
    }
    return items;
  }

  static Future<bool> setSelfReport(int selfReportStatus) async {
    try {
      //WifiInfoWrapper mWifiInfo = await WifiInfoPlugin.wifiDetails;
      var dbRef2 = databaseRef.child('data').child('reports');
      await dbRef2.child(DataManager.mPrefManager.getId().toString()).set({
        'user_id': DataManager.mPrefManager.getId().toString(),
        //'address': mWifiInfo.macAddress,
        'status': selfReportStatus,
      }).then((value) {
        Fluttertoast.showToast(
          msg:
              "Self report was successfully submitted, thank you for being honest.",
          toastLength: Toast.LENGTH_LONG,
        );
      });
      return true;
    } catch (e) {
      Fluttertoast.showToast(
        msg: e.message.toString(),
        toastLength: Toast.LENGTH_LONG,
      );
      return false;
    }
  }

  static Future<bool> setCurrentLocation(int gridId) async {
    try {
      //WifiInfoWrapper mWifiInfo = await WifiInfoPlugin.wifiDetails;
      var dbRef2 = databaseRef
          .child('data')
          .child('locations')
          .child('MIU')
          .child('crowding');
      await dbRef2.child(gridId.toString()).set({
        DataManager.mPrefManager.getId().toString():
            DateTime.now().millisecondsSinceEpoch
      });
      return true;
    } catch (e) {
      return false;
    }
  }
}
