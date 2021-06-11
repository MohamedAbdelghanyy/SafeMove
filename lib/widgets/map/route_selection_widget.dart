import 'package:SafeMove/models/floorplan_model.dart';
import 'package:SafeMove/models/room_data_model.dart';
import 'package:SafeMove/screens/rooms_screen.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class RouteSelectionWidget extends StatefulWidget {
  @override
  _RouteSelectionWidgetState createState() => _RouteSelectionWidgetState();
}

class _RouteSelectionWidgetState extends State<RouteSelectionWidget> {
  RoomDataModel roomX;
  RoomDataModel roomY;
  var model;

  Future<List<RoomDataModel>> getRoomData(String filter) async {
    List<RoomDataModel> searchResult = [];
    for (int i = 0; i < model.rooms.length; i++) {
      if (model.rooms[i].location.toString().contains(filter) ||
          filter.contains(model.rooms[i].location.toString())) {
        searchResult.add(model.rooms[i]);
      }
    }
    return searchResult;
  }

  void setRoomX(RoomDataModel room) {
    this.roomX = room;
    drawRoute();
  }

  void setRoomY(RoomDataModel room) {
    this.roomY = room;
    ScaffoldMessenger.of(context).clearSnackBars();
    final snackBar = SnackBar(
      content: Text(
          'Room ' + room.name + ' is ' + (room.isSafe ? 'safe' : 'not safe')),
      duration: Duration(days: 365),
      action: SnackBarAction(
        label: 'View Room Crowding',
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => RoomsScreen(
                currRoomName: room.name.toString(),
              ),
            ),
          );
        },
      ),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
    drawRoute();
  }

  void drawRoute() {
    if (this.roomX != null && this.roomY != null) {
      model.setRouteData(RouteData(roomX, roomY));
    }
  }

  void clearRoute(int room) {
    if (room == 0) {
      this.roomX = null;
    } else if (room == 1) {
      this.roomY = null;
      ScaffoldMessenger.of(context).clearSnackBars();
    }
    model.setRouteData(null);
  }

  @override
  Widget build(BuildContext context) {
    model = Provider.of<FloorPlanModel>(context);
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 30, left: 15, right: 15),
          child: DropdownSearch<RoomDataModel>(
            dropdownSearchDecoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(25.0),
                ),
              ),
              contentPadding: EdgeInsets.all(5),
              prefixIcon: Icon(Icons.location_pin),
              fillColor: Colors.white,
              filled: true,
              floatingLabelBehavior: FloatingLabelBehavior.never,
            ),
            showClearButton: true,
            showSearchBox: true,
            mode: Mode.BOTTOM_SHEET,
            label: "From",
            onFind: (String filter) => getRoomData(filter),
            itemAsString: (RoomDataModel room) => room.location,
            onChanged: (RoomDataModel room) {
              if (room != null && room.name != null) {
                setRoomX(room);
              } else {
                clearRoute(0);
              }
            },
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 10, left: 15, right: 15),
          child: DropdownSearch<RoomDataModel>(
            dropdownSearchDecoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(25.0),
                ),
              ),
              contentPadding: EdgeInsets.all(5),
              prefixIcon: Icon(Icons.location_pin),
              fillColor: Colors.white,
              filled: true,
              floatingLabelBehavior: FloatingLabelBehavior.never,
            ),
            showClearButton: true,
            showSearchBox: true,
            mode: Mode.BOTTOM_SHEET,
            label: "To",
            onFind: (String filter) => getRoomData(filter),
            itemAsString: (RoomDataModel room) => room.location,
            onChanged: (RoomDataModel room) {
              if (room != null && room.name != null) {
                setRoomY(room);
              } else {
                clearRoute(1);
              }
            },
          ),
        ),
      ],
    );
  }
}
