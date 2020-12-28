import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 10,
              ),
              Text(
                "Profile",
                style: TextStyle(fontSize: 20),
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
                      image: AssetImage('assets/profile.jpg'),
                      fit: BoxFit.fill),
                ),
              ),
              Table(
                children: [
                  TableRow(
                    children: [
                      Text("First Name"),
                      Text("Ahmed"),
                    ],
                  ),
                  TableRow(
                    children: [
                      Text("Last Name:"),
                      Text("Mohamed"),
                    ],
                  ),
                  TableRow(
                    children: [
                      Text("Age"),
                      Text("22"),
                    ],
                  ),
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
