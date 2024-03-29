import 'package:dropdown_search/dropdown_search.dart';
import 'package:safemove/data/global.dart';
import 'package:safemove/models/map_model.dart';
import 'package:safemove/models/room_data_model.dart';
import 'package:safemove/services/data_manager.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import './main_drawer.dart';

// ignore: must_be_immutable
class RoomsScreen extends StatefulWidget {
  static const routeName = '/rooms-screen';
  RoomDataModel roomData;

  // ignore: avoid_init_to_null
  RoomsScreen({this.roomData = null});

  @override
  _RoomsScreenState createState() => _RoomsScreenState();
}

class _RoomsScreenState extends State<RoomsScreen> {
  RoomDataModel currRoom;
  List roomsData = [];
  var model;

  @override
  void initState() {
    DataManager.getRoomsData().then((value) {
      model.setRoomsData(DataManager.roomsData);
      for (int i = 0; i < model.rooms.length; i++) {
        if ((model.rooms[i] as RoomDataModel).name != "Turn") {
          roomsData.add(model.rooms[i]);
        }
      }
      if (widget.roomData == null) {
        roomChanged(roomsData[0]);
      } else {
        for (int i = 0; i < roomsData.length; i++) {
          if ((roomsData[i] as RoomDataModel).name == widget.roomData.name) {
            roomChanged(roomsData[i]);
          }
        }
      }
    });
    super.initState();
  }

  Future<List<RoomDataModel>> getRoomData(String filter) async {
    List<RoomDataModel> searchResult = [];
    for (int i = 0; i < roomsData.length; i++) {
      if ((roomsData[i].location.toString().contains(filter) ||
              filter.contains(roomsData[i].location.toString())) &&
          roomsData[i].name != "Turn") {
        searchResult.add(roomsData[i]);
      }
    }
    return searchResult;
  }

  void roomChanged(RoomDataModel newRoom) {
    setState(() {
      currRoom = newRoom;
    });
  }

  @override
  Widget build(BuildContext context) {
    model = Provider.of<MapModel>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Global.primaryColor,
        elevation: 0,
        title: Text(
          'Rooms Crowding',
          style: TextStyle(color: Global.secondaryColor),
        ),
        iconTheme: IconThemeData(color: Global.secondaryColor),
      ),
      drawer: MainDrawer(),
      body: roomsData == null || currRoom == null
          ? Padding(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: SpinKitSquareCircle(
                  color: Global.secondaryColor,
                  size: 20,
                ),
              ),
            )
          : ListView(
              children: [
                Column(
                  children: [
                    ClipPath(
                      clipper: MyClipper(),
                      child: Container(
                        height: 550,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            colors: [Color(0xFF91b3fa), Global.secondaryColor],
                          ),
                          image: DecorationImage(
                            image:
                                AssetImage('assets/images/vectors/admin.png'),
                          ),
                        ),
                        child: Column(
                          children: [
                            Container(
                              child: Padding(
                                padding: EdgeInsets.only(
                                    top: 30, left: 15, right: 15),
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
                                    floatingLabelBehavior:
                                        FloatingLabelBehavior.never,
                                  ),
                                  showSearchBox: true,
                                  mode: Mode.DIALOG,
                                  label: currRoom.location,
                                  onFind: (String filter) =>
                                      getRoomData(filter),
                                  itemAsString: (RoomDataModel room) =>
                                      room.location,
                                  onChanged: roomChanged,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 190,
                          height: 250,
                          child: Card(
                            child: FlipCard(
                              front: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image(
                                    image: AssetImage(
                                        'assets/images/vectors/masks.png'),
                                  ),
                                  Text(
                                    "Masks Violation",
                                    style: GoogleFonts.montserrat(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              ),
                              back: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    currRoom.maskViolations.toString(),
                                    style: GoogleFonts.montserrat(
                                      color: Colors.black,
                                      fontSize: 60,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  Text(
                                    'people are not wearing masks.',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.montserrat(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 190,
                          height: 250,
                          child: Card(
                            child: FlipCard(
                              front: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image(
                                    image: AssetImage(
                                        'assets/images/vectors/masks.png'),
                                  ),
                                  Text(
                                    "Masks Commits",
                                    style: GoogleFonts.montserrat(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              ),
                              back: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    (currRoom.totalPeople -
                                            currRoom.maskViolations)
                                        .toString(),
                                    style: GoogleFonts.montserrat(
                                      color: Colors.black,
                                      fontSize: 60,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  Text(
                                    'people are wearing masks.',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.montserrat(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 190,
                          height: 250,
                          child: Card(
                            child: FlipCard(
                              front: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image(
                                    image: AssetImage(
                                        'assets/images/vectors/distancing.png'),
                                  ),
                                  Text(
                                    "Distancing Violation",
                                    style: GoogleFonts.montserrat(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              ),
                              back: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    currRoom.distanceViolations.toString(),
                                    style: GoogleFonts.montserrat(
                                      color: Colors.black,
                                      fontSize: 60,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  Text(
                                    'people are violating the safe social distancing.',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.montserrat(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 190,
                          height: 250,
                          child: Card(
                            child: FlipCard(
                              front: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image(
                                    image: AssetImage(
                                        'assets/images/vectors/distancing.png'),
                                  ),
                                  Center(
                                    child: Text("Distancing Commits",
                                        style: GoogleFonts.montserrat(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w700,
                                        )),
                                  ),
                                ],
                              ),
                              back: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    (currRoom.totalPeople -
                                            currRoom.distanceViolations)
                                        .toString(),
                                    style: GoogleFonts.montserrat(
                                      color: Colors.black,
                                      fontSize: 60,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  Text(
                                    'people committed to the safe social distancing.',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.montserrat(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 380,
                          height: 480,
                          child: Card(
                            child: FlipCard(
                              front: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image(
                                    image: AssetImage(
                                        'assets/images/vectors/total.png'),
                                  ),
                                  Text(
                                    "Total Stats",
                                    style: GoogleFonts.montserrat(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              ),
                              back: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    currRoom.totalPeople.toString(),
                                    style: GoogleFonts.montserrat(
                                      color: Colors.black,
                                      fontSize: 60,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  Text(
                                    'people are in Room ' + currRoom.name + '.',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.montserrat(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    )
                  ],
                ),
              ],
            ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - 80);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height - 80);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
