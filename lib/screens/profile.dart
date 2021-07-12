import 'package:SafeMove/data/global.dart';
import 'package:SafeMove/screens/main_drawer.dart';
import 'package:SafeMove/services/data_manager.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileScreen extends StatelessWidget {
  static const routeName = '/profile-screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Global.primaryColor,
        elevation: 0,
        title: Text(
          'Profile',
          style: TextStyle(color: Global.secondaryColor),
        ),
        iconTheme: IconThemeData(color: Global.secondaryColor),
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
                  colors: [Color(0xFF91b3fa), Global.secondaryColor],
                ),
                image: DecorationImage(
                  image: AssetImage(
                    'assets/images/vectors/profile.png',
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 10,
            ),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary: Color(0xFFF5F6F9),
                padding: EdgeInsets.all(20),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              child: Text(
                DataManager.mPrefManager.name,
                style: GoogleFonts.montserrat(
                  textStyle: Theme.of(context).textTheme.headline4,
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 10,
            ),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary: Color(0xFFF5F6F9),
                padding: EdgeInsets.all(20),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              child: Text(
                DataManager.mPrefManager.email,
                style: GoogleFonts.montserrat(
                  textStyle: Theme.of(context).textTheme.headline4,
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 10,
            ),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary: Color(0xFFF5F6F9),
                padding: EdgeInsets.all(20),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              child: Text(
                DataManager.mPrefManager.phone,
                style: GoogleFonts.montserrat(
                  textStyle: Theme.of(context).textTheme.headline4,
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
          /*
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 10,
            ),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary: Color(0xFFF5F6F9),
                padding: EdgeInsets.all(20),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              child: Text(
                "Bluetooh Address",
                style: GoogleFonts.montserrat(
                  textStyle: Theme.of(context).textTheme.headline4,
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
          )
          */
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
