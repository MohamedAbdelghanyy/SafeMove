import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RoomDataModel {
  String location;
  String name;
  IconData icon;
  String layout;
  bool isVertical;
  bool isSafe;
  List<double> position;
  List<double> doorPosition;
  List<double> corridorPosition;
  int totalPeople;
  int distanceViolations;
  int maskViolations;

  RoomDataModel.fromMap(Map data) {
    this.location = data['location'] ?? 'No location.';
    this.name = data['name'].toString() ?? 'No name.';
    if (data['icon'] != null && data['icon'] != '') {
      if (data['icon'].toString() == 'male') {
        this.icon = Icons.male_rounded;
      } else if (data['icon'].toString() == 'female') {
        this.icon = Icons.female_rounded;
      } else if (data['icon'].toString() == 'food') {
        this.icon = Icons.food_bank_rounded;
      }
    } else {
      this.icon = Icons.menu_book_rounded;
    }
    this.layout = data['layout'].toString() ?? 'vertical';
    this.isVertical = (this.layout == 'vertical');
    this.position = data['position'] != null
        ? [data['position'][0], data['position'][1]]
        : [0.0];
    this.doorPosition = data['door_position'] != null
        ? [data['door_position'][0], data['door_position'][1]]
        : [0.0];
    this.corridorPosition = data['corridor_position'] != null
        ? [data['corridor_position'][0], data['corridor_position'][1]]
        : [0.0];
    this.totalPeople = data['total'] ?? 0;
    this.distanceViolations = data['violations'] ?? 0;
    this.maskViolations = data['mask-violations'] ?? 0;
    if (this.totalPeople > 30 ||
        this.distanceViolations > 5 ||
        this.maskViolations > 5) {
      this.isSafe = false;
    } else {
      this.isSafe = true;
    }
  }
}

class RouteData {
  RoomDataModel roomX;
  RoomDataModel roomY;

  RouteData(this.roomX, this.roomY);
}
