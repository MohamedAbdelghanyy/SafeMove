import 'package:flutter/material.dart';
import './main_drawer.dart';

class ProfileScreen extends StatelessWidget {
  static const routeName = '/profile-screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Profile")),
      drawer: MainDrawer(),
      body: ListView(
        children: [
          Column(
            children: [
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
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text("Ahmed Mohamed"),
              SizedBox(
                height: 20,
              ),
              Text("Ahmed1705293@miuegypt.edu.eg"),
              SizedBox(
                height: 20,
              ),
              Text("22"),
              SizedBox(
                height: 20,
              ),
              Text("Male"),
            ],
          ),
        ],
      ),
    );
  }
}
