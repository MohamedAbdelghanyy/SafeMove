import 'package:SafeMove/data/global.dart';
import 'package:SafeMove/screens/main_drawer.dart';
import 'package:SafeMove/services/data_manager.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SelfReport extends StatefulWidget {
  static const routeName = '/self-report';

  @override
  _SelfReportState createState() => _SelfReportState();
}

class _SelfReportState extends State<SelfReport> {
  bool valuefirst = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Global.primaryColor,
        elevation: 0,
        title: Text(
          'Self Report',
        ),
      ),
      drawer: MainDrawer(),
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
                  image: AssetImage('assets/bluetooth.png'),
                ),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(10),
                child: Text(
                  "Before Self Reporting, please Make sure\n that you are actually ill",
                  style: GoogleFonts.montserrat(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Text(
                  "By Self Reporting, you acknowledge that you tested postive for COVID-19",
                  style: GoogleFonts.montserrat(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Text(
                  "We Will warn any users that will come in close proximity with you",
                  style: GoogleFonts.montserrat(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Checkbox(
                    checkColor: Colors.white,
                    activeColor: Global.secondaryColor,
                    value: this.valuefirst,
                    onChanged: (bool value) {
                      setState(() {
                        this.valuefirst = value;
                      });
                    },
                  ),
                  Text(
                    'I Understand',
                    style: GoogleFonts.montserrat(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 10, bottom: 20),
                child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    primary: Global.secondaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(50),
                      ),
                    ),
                    elevation: 2,
                    minimumSize: Size(150, 50),
                  ),
                  onPressed: () {
                    if (this.valuefirst) {
                      DataManager.setSelfReportData(1)
                          .then((value) => Navigator.of(context).pop());
                    }
                  },
                  icon: Icon(Icons.bluetooth),
                  label: Text(
                    "Self Report",
                    style: GoogleFonts.montserrat(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ],
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
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
