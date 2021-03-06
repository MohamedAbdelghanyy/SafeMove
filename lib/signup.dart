import 'package:SafeMove/home.dart';
import 'package:SafeMove/services/perference_manager.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import './services/auth.dart';
import 'package:fluttertoast/fluttertoast.dart';

class SignupFormSeller extends StatefulWidget {
  static const routeName = '/signup';
  @override
  SignupFormSellerState createState() {
    return SignupFormSellerState();
  }
}

class SignupFormSellerState extends State<SignupFormSeller> {
  final _formKeysignupS = GlobalKey<FormState>();
  var authHandler = new Auth();

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: ListView(children: [
      Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/background.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            //Logo section
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image(
                  image: AssetImage("assets/logo.png"),
                  width: 350,
                  height: 150,
                )
              ],
            ),
            //Email textfield
            Form(
                key: _formKeysignupS,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(
                                  left: 20.0, right: 20.0, bottom: 10),
                              child: Container(
                                  alignment: Alignment.center,
                                  height: 60.0,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(9.0)),
                                  child: TextFormField(
                                      validator: (value) {
                                        if (value.isEmpty) {
                                          return 'Please enter your username';
                                        }
                                        if (value.contains(" ")) {
                                          return 'Username cannot contain spaces';
                                        }
                                        if (value.length < 6) {
                                          return 'Minimum length for username is 6 characters';
                                        }
                                        return null;
                                      },
                                      decoration: InputDecoration(
                                          enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.grey[500]),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(9))),
                                          focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.green[300]),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(9))),
                                          prefixIcon:
                                              Icon(Icons.account_circle),
                                          hintText: 'Username'),
                                      style: TextStyle(
                                          fontSize: 20.0,
                                          color: Colors.black))),
                            ),
                          )
                        ],
                      ),
                      //email textfield
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(
                                  left: 20.0, right: 20.0, bottom: 10),
                              child: Container(
                                  alignment: Alignment.center,
                                  height: 60.0,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(9.0)),
                                  child: TextFormField(
                                      controller: emailController,
                                      validator: (value) {
                                        if (value.isEmpty) {
                                          return 'Please enter your email';
                                        }
                                        if (!value.contains("@") ||
                                            !value.contains(".")) {
                                          return 'Please enter email in the correct format';
                                        }
                                        return null;
                                      },
                                      decoration: InputDecoration(
                                          enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.grey[500]),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(9))),
                                          focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.green[300]),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(9))),
                                          prefixIcon: Icon(Icons.email),
                                          hintText: 'Email'),
                                      style: TextStyle(
                                          fontSize: 20.0,
                                          color: Colors.black))),
                            ),
                          )
                        ],
                      ),
                      //mobile number
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(
                                  left: 20.0, right: 20.0, bottom: 10.0),
                              child: Container(
                                  alignment: Alignment.center,
                                  height: 60.0,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(9.0)),
                                  child: TextFormField(
                                      validator: (value) {
                                        if (value.isEmpty) {
                                          return 'Please enter your mobile number';
                                        }
                                        if (value.length < 11) {
                                          return 'Please enter 11 numbers';
                                        }
                                        return null;
                                      },
                                      decoration: InputDecoration(
                                          enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.grey[500]),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(9))),
                                          focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.green[300]),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(9))),
                                          prefixIcon: Icon(Icons.add_call),
                                          hintText: 'Mobile number'),
                                      style: TextStyle(
                                          fontSize: 20.0,
                                          color: Colors.black))),
                            ),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(
                                  left: 20.0, right: 20.0, bottom: 10),
                              child: Container(
                                  alignment: Alignment.center,
                                  height: 60.0,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(9.0)),
                                  child: TextFormField(
                                      validator: (value) {
                                        if (value.isEmpty) {
                                          return 'Please enter your National ID number';
                                        }
                                        if (value.length < 14) {
                                          return 'Please enter 14 numbers';
                                        }
                                        return null;
                                      },
                                      decoration: InputDecoration(
                                          enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.grey[500]),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(9))),
                                          focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.green[300]),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(9))),
                                          prefixIcon: Icon(Icons.badge),
                                          hintText: 'National ID'),
                                      style: TextStyle(
                                          fontSize: 20.0,
                                          color: Colors.black))),
                            ),
                          )
                        ],
                      ),

                      //Password textfield
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(
                                  left: 20.0, right: 20.0, bottom: 10.0),
                              child: Container(
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(9.0)),
                                  child: TextFormField(
                                    controller: passwordController,
                                    validator: (value) {
                                      if (value.isEmpty) {
                                        return 'Please enter your password';
                                      }
                                      if (value.length < 6) {
                                        return 'Minimum length for password 6 characters';
                                      }
                                      return null;
                                    },
                                    decoration: InputDecoration(
                                        enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.grey[500]),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(9))),
                                        focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.green[300]),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(9))),
                                        prefixIcon: Icon(Icons.lock),
                                        hintText: 'Password'),
                                    style: TextStyle(
                                        fontSize: 20.0, color: Colors.black),
                                    obscureText: true,
                                  )),
                            ),
                          )
                        ],
                      ),
                      //signup button
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(right: 100, left: 100),
                              child: Container(
                                alignment: Alignment.center,
                                height: 60.0,
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(9.0)),
                                child: FlatButton(
                                  child: Text("Signup",
                                      style: TextStyle(
                                          fontSize: 20.0, color: Colors.white)),
                                  onPressed: () {
                                    var email = emailController.text;
                                    var password = passwordController.text;
                                    if (_formKeysignupS.currentState
                                        .validate()) {
                                      authHandler
                                          .handleSignUp(email, password)
                                          .then((FirebaseUser user) {
                                        new PrefManager()
                                            .setLoggedInData(email, password);
                                        Navigator.popAndPushNamed(context, '/');
                                      }).catchError((e) {
                                        print(e);
                                        if (e.toString().contains(
                                            "ERROR_EMAIL_ALREADY_IN_USE")) {
                                          Fluttertoast.showToast(
                                            msg: "This email already exists",
                                            toastLength: Toast.LENGTH_SHORT,
                                          );
                                        } else if (e.toString().contains(
                                            "ERROR_NETWORK_REQUEST_FAILED")) {
                                          Fluttertoast.showToast(
                                            msg:
                                                "Please check your internet connection.",
                                            toastLength: Toast.LENGTH_SHORT,
                                          );
                                        } else {
                                          Fluttertoast.showToast(
                                            msg:
                                                "An error occurred, please try again later.",
                                            toastLength: Toast.LENGTH_SHORT,
                                          );
                                        }
                                      });
                                    }
                                  },
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ]))
          ],
        ),
      ),
    ])));
  }
}
