import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AdminView extends StatefulWidget {
  static const routeName = '/admin-view';

  @override
  _AdminViewState createState() => _AdminViewState();
}

class _AdminViewState extends State<AdminView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
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
                    margin: EdgeInsets.all(30),
                    child: Text(
                      "Admin View",
                      style: GoogleFonts.montserrat(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.italic,
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
                          "Masks Violations Number",
                          style: GoogleFonts.montserrat(
                            color: Colors.black,
                            fontSize: 15,
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
                        Center(
                          child: Text(
                            "92",
                            style: GoogleFonts.montserrat(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                              fontStyle: FontStyle.italic,
                            ),
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
                          "Masks Violations Number",
                          style: GoogleFonts.montserrat(
                            color: Colors.black,
                            fontSize: 15,
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
                        Center(
                          child: Text(
                            "92",
                            style: GoogleFonts.montserrat(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                        )
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
                        Text("Total Stats",
                            style: GoogleFonts.montserrat(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              fontStyle: FontStyle.italic,
                            )),
                      ],
                    ),
                    back: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Total Stats",
                            style: GoogleFonts.montserrat(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              fontStyle: FontStyle.italic,
                            )),
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
