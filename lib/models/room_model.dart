import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Room {
  String location;
  String name;
  IconData icon;
  bool status;
  List<double> position;
  List<double> doorPosition;
  List<double> corridorPosition;
  int tile;

  Room.fromMap(Map data) {
    this.location = data['location'] ?? 'No location.';
    this.name = data['name'] ?? 'No name.';
    this.icon = data['icon'] ?? Icons.room_outlined;
    this.status = data['status'] ?? false;
    this.position = data['position'] ?? [0.0];
    this.doorPosition = data['door_position'] ?? [0.0];
    this.corridorPosition = data['corridor_position'] ?? [0.0];
    this.tile = data['tile'] ?? 0;
  }
}

class RouteData {
  Room roomX;
  Room roomY;

  RouteData(this.roomX, this.roomY);
}
