import 'dart:convert';

import 'package:safemove/models/room_data_model.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;
import 'package:safemove/services/data_manager.dart';

class FirebaseManager {
  // ignore: unused_field
  static final Future<FirebaseApp> _future = Firebase.initializeApp();
  static final databaseRef = FirebaseDatabase.instance.reference();
  static const url =
      'https://safe-move-da6ea-default-rtdb.firebaseio.com/data/';

  static Future<List> getRoomsData() async {
    var path = url + 'locations/MIU/rooms.json';
    final List<RoomDataModel> items = [];
    try {
      final response = await http.get(Uri.parse(path));
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

  static Future<Map<String, dynamic>> getCrowdingData() async {
    var path = url + 'locations/MIU/crowding.json';
    Map<String, dynamic> dbData;
    try {
      final response = await http.get(Uri.parse(path));
      dbData = json.decode(response.body) as Map<String, dynamic>;
    } on Exception catch (e) {
      print(e.toString());
      throw (e);
    }
    return dbData;
  }

  static Future<bool> setCurrentLocation(int gridId) async {
    var path = url + 'locations/MIU/crowding.json';
    try {
      final response = await http.patch(
        Uri.parse(path),
        body: jsonEncode(
          {
            gridId.toString(): {
              DataManager.mPrefManager.getId().toString():
                  DateTime.now().millisecondsSinceEpoch
            }
          },
        ),
      );
      return true;
    } catch (e) {
      return false;
    }
  }
}
