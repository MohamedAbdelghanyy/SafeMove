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
      appBar: AppBar(
        title: Text('Admin View'),
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 30,
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
                        Text("Masks Violation",
                            style: GoogleFonts.montserrat(
                              textStyle: Theme.of(context).textTheme.headline4,
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              fontStyle: FontStyle.italic,
                            )),
                      ],
                    ),
                    back: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [Text("Masks Violations Number")],
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
                        Text("Masks Commits",
                            style: GoogleFonts.montserrat(
                              textStyle: Theme.of(context).textTheme.headline4,
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              fontStyle: FontStyle.italic,
                            )),
                      ],
                    ),
                    back: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [Center(child: Text("92"))],
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
                        Text("Distancing Violation",
                            style: GoogleFonts.montserrat(
                              textStyle: Theme.of(context).textTheme.headline4,
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                              fontStyle: FontStyle.italic,
                            )),
                      ],
                    ),
                    back: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [Text("Masks Violations Number")],
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
                                textStyle:
                                    Theme.of(context).textTheme.headline4,
                                fontSize: 15,
                                fontWeight: FontWeight.w700,
                                fontStyle: FontStyle.italic,
                              )),
                        ),
                      ],
                    ),
                    back: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [Center(child: Text("92"))],
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
                width: 190,
                height: 250,
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
                              textStyle: Theme.of(context).textTheme.headline4,
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
                              textStyle: Theme.of(context).textTheme.headline4,
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
