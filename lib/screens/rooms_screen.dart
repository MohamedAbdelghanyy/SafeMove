import 'package:SafeMove/models/room_data_model.dart';
import 'package:SafeMove/services/data_manager.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import './main_drawer.dart';

class RoomsScreen extends StatefulWidget {
  static const routeName = '/rooms-screen';
  String currRoomName;

  RoomsScreen({this.currRoomName = ""});

  @override
  _RoomsScreenState createState() => _RoomsScreenState();
}

class _RoomsScreenState extends State<RoomsScreen> {
  RoomDataModel currRoom;
  List roomsData = List();

  @override
  void initState() {
    DataManager.getRoomsData().then((value) {
      roomsData = DataManager.roomsData;
      if (widget.currRoomName == "") {
        roomChanged(roomsData[0]);
      } else {
        for (int i = 0; i < roomsData.length; i++) {
          if ((roomsData[i] as RoomDataModel).name == widget.currRoomName) {
            roomChanged(roomsData[i]);
          }
        }
      }
    });
    super.initState();
  }

  void roomChanged(RoomDataModel newRoom) {
    setState(() {
      currRoom = newRoom;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Rooms"),
      ),
      drawer: MainDrawer(),
      body: roomsData == null || currRoom == null
          ? Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Text('Loading Rooms List...'),
            )
          : ListView(
              children: [
                Column(
                  children: [
                    ClipPath(
                      clipper: MyClipper(),
                      child: Container(
                        height: 350,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            colors: [Color(0xFF91b3fa), Color(0xFF4f52ff)],
                          ),
                          image: DecorationImage(
                            image: AssetImage('assets/admin.png'),
                          ),
                        ),
                        child: Column(
                          children: [
                            Container(
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 20),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Room Id: ',
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.montserrat(
                                        color: Colors.black,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w700,
                                        fontStyle: FontStyle.italic,
                                      ),
                                    ),
                                    SizedBox(width: 10),
                                    DropdownButtonHideUnderline(
                                      child: DropdownButton<RoomDataModel>(
                                        onChanged: roomChanged,
                                        value: currRoom,
                                        items: roomsData.map((value) {
                                          return DropdownMenuItem<
                                              RoomDataModel>(
                                            value: value,
                                            child: Text(
                                              value.name,
                                              style: TextStyle(fontSize: 16),
                                            ),
                                          );
                                        }).toList(),
                                      ),
                                    ),
                                  ],
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
                                    image: AssetImage('assets/masks.png'),
                                  ),
                                  Text(
                                    "Masks Violation",
                                    style: GoogleFonts.montserrat(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700,
                                      fontStyle: FontStyle.italic,
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
                                      fontStyle: FontStyle.italic,
                                    ),
                                  ),
                                  Text(
                                    'people are not wearing masks.',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.montserrat(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700,
                                      fontStyle: FontStyle.italic,
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
                                    image: AssetImage('assets/masks.png'),
                                  ),
                                  Text(
                                    "Masks Commits",
                                    style: GoogleFonts.montserrat(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700,
                                      fontStyle: FontStyle.italic,
                                    ),
                                  ),
                                ],
                              ),
                              back: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    (currRoom.total - currRoom.maskViolations)
                                        .toString(),
                                    style: GoogleFonts.montserrat(
                                      color: Colors.black,
                                      fontSize: 60,
                                      fontWeight: FontWeight.w700,
                                      fontStyle: FontStyle.italic,
                                    ),
                                  ),
                                  Text(
                                    'people are wearing masks.',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.montserrat(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700,
                                      fontStyle: FontStyle.italic,
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
                                    image: AssetImage('assets/distancing.png'),
                                  ),
                                  Text(
                                    "Distancing Violation",
                                    style: GoogleFonts.montserrat(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700,
                                      fontStyle: FontStyle.italic,
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
                                      fontStyle: FontStyle.italic,
                                    ),
                                  ),
                                  Text(
                                    'people are violating the safe social distancing.',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.montserrat(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700,
                                      fontStyle: FontStyle.italic,
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
                                    image: AssetImage('assets/distancing.png'),
                                  ),
                                  Center(
                                    child: Text("Distancing Commits",
                                        style: GoogleFonts.montserrat(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w700,
                                          fontStyle: FontStyle.italic,
                                        )),
                                  ),
                                ],
                              ),
                              back: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    (currRoom.total -
                                            currRoom.distanceViolations)
                                        .toString(),
                                    style: GoogleFonts.montserrat(
                                      color: Colors.black,
                                      fontSize: 60,
                                      fontWeight: FontWeight.w700,
                                      fontStyle: FontStyle.italic,
                                    ),
                                  ),
                                  Text(
                                    'people committed to the safe social distancing.',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.montserrat(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700,
                                      fontStyle: FontStyle.italic,
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
                                    image: AssetImage('assets/total.png'),
                                  ),
                                  Text(
                                    "Total Stats",
                                    style: GoogleFonts.montserrat(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700,
                                      fontStyle: FontStyle.italic,
                                    ),
                                  ),
                                ],
                              ),
                              back: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    currRoom.total.toString(),
                                    style: GoogleFonts.montserrat(
                                      color: Colors.black,
                                      fontSize: 60,
                                      fontWeight: FontWeight.w700,
                                      fontStyle: FontStyle.italic,
                                    ),
                                  ),
                                  Text(
                                    'people are in Room ' + currRoom.name + '.',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.montserrat(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700,
                                      fontStyle: FontStyle.italic,
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
