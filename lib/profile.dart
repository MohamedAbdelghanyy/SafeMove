import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage('assets/profile.jpg'), fit: BoxFit.fill),
              ),
            ),
            Text("Ahmed"),
            Text("Mohamed"),
            Text("22"),
            Text("Ahmed1705293@miuegypt.edu.eg"),
          ],
        )
      ],
    );
  }
}
