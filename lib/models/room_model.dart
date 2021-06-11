import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Room {
  String location;
  String name;
  IconData icon;
  String layout;
  bool status;
  List<double> position;
  List<double> doorPosition;
  List<double> corridorPosition;
  int tile;
  bool isVertical;

  Room.fromMap(Map data) {
    this.location = data['location'] ?? 'No location.';
    this.name = data['name'] ?? 'No name.';
    this.icon = data['icon'] ?? Icons.room_outlined;
    this.layout = data['layout'] ?? 'vertical';
    this.status = data['status'] ?? false;
    this.position = data['position'] ?? [0.0];
    this.doorPosition = data['door_position'] ?? [0.0];
    this.corridorPosition = data['corridor_position'] ?? [0.0];
    this.tile = data['tile'] ?? 0;
    this.isVertical = (this.layout == 'vertical');
  }
}

class RouteData {
  Room roomX;
  Room roomY;

  RouteData(this.roomX, this.roomY);
}
