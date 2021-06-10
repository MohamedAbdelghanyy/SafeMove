import 'package:SafeMove/data/global.dart';
import 'package:SafeMove/models/floorplan_model.dart';
import 'package:SafeMove/models/models.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class RouteSelectionWidget extends StatefulWidget {
  @override
  _RouteSelectionWidgetState createState() => _RouteSelectionWidgetState();
}

class _RouteSelectionWidgetState extends State<RouteSelectionWidget> {
  Room roomX;
  Room roomY;
  var model;

  Future<List<Room>> getRoomData(String filter) async {
    List<Room> searchResult = [];
    for (int i = 0; i < Global.rooms.length; i++) {
      if (Global.rooms[i]['location'].toString().contains(filter) ||
          filter.contains(Global.rooms[i]['location'].toString())) {
        searchResult.add(Room.fromMap(Global.rooms[i]));
      }
    }
    return searchResult;
  }

  void setRoomX(Room room) {
    this.roomX = room;
    drawRoute();
  }

  void setRoomY(Room room) {
    this.roomY = room;
    drawRoute();
  }

  void drawRoute() {
    if (this.roomX != null && this.roomY != null) {
      model.setRouteData(RouteData(roomX, roomY));
    }
  }

  @override
  Widget build(BuildContext context) {
    model = Provider.of<FloorPlanModel>(context);
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 30, left: 15, right: 15),
          child: DropdownSearch<Room>(
            mode: Mode.BOTTOM_SHEET,
            label: "From",
            onFind: (String filter) => getRoomData(filter),
            itemAsString: (Room room) => room.location,
            onChanged: (Room room) => setRoomX(room),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          child: DropdownSearch<Room>(
            mode: Mode.BOTTOM_SHEET,
            label: "To",
            onFind: (String filter) => getRoomData(filter),
            itemAsString: (Room room) => room.location,
            onChanged: (Room room) => setRoomY(room),
          ),
        ),
      ],
    );
  }
}
