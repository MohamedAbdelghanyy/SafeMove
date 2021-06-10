import 'package:custom_zoomable_floorplan/core/models/models.dart';
import 'package:custom_zoomable_floorplan/view/shared/global.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/cupertino.dart';

class RouteSelectionWidget extends StatefulWidget {
  @override
  _RouteSelectionWidgetState createState() => _RouteSelectionWidgetState();
}

class _RouteSelectionWidgetState extends State<RouteSelectionWidget> {
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

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
          child: DropdownSearch<Room>(
            label: "Location Name",
            onFind: (String filter) => getRoomData(filter),
            itemAsString: (Room room) => room.location,
            onChanged: (Room data) => print(data),
          ),
        ),
      ],
    );
  }
}
