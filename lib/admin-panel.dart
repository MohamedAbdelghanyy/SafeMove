import 'package:flutter/material.dart';
import './main_drawer.dart';

class AdminPanel extends StatelessWidget {
  static const routeName = '/admin-panel';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MainDrawer(),
      appBar: AppBar(
        title: const Text(
          ("Admin Panel"),
        ),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              SizedBox(
                height: 90,
              ),
              ButtonTheme(
                minWidth: 150,
                child: RaisedButton(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(color: Colors.red)),
                  child: Text("View Cameras"),
                  onPressed: () {},
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ButtonTheme(
                minWidth: 150,
                child: RaisedButton(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(color: Colors.red)),
                  child: Text("View Users"),
                  onPressed: () {},
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ButtonTheme(
                minWidth: 150,
                child: RaisedButton(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(color: Colors.red)),
                  child: Text("Send Notifications"),
                  onPressed: () {},
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
