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
            SizedBox(
              height: 20,
            ),
            Text(
              "Profile",
              style: TextStyle(fontSize: 25),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage('assets/profile.jpg'), fit: BoxFit.fill),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text("First Name: Ahmed"),
            SizedBox(
              height: 15,
            ),
            Text("Last Name: Mohamed"),
            SizedBox(
              height: 15,
            ),
            Text("Age: 22"),
            SizedBox(
              height: 15,
            ),
            Text("Gender: Male"),
            SizedBox(
              height: 15,
            ),
            Text("Ahmed1705293@miuegypt.edu.eg"),
          ],
        )
      ],
    );
  }
}
