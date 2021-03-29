import 'package:SafeMove/screens/home.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:SafeMove/services/auth.dart';
import 'package:fluttertoast/fluttertoast.dart';
import './signup.dart';
import 'package:SafeMove/services/perference_manager.dart';
import './home.dart';

class LoginForm extends StatefulWidget {
  static const routeName = '/login-screen';
  @override
  LoginFormState createState() {
    return LoginFormState();
  }
}

class LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();
  var authHandler = new Auth();

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [Color(0xFFff8e89), Color(0xFFff7366)],
        ),
      ),
      child: ListView(children: [
        Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              //Logo section
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image(
                    image: AssetImage("assets/covidlogo.png"),
                    width: 350,
                    height: 300,
                  )
                ],
              ),
              //Email textfield
              Form(
                  key: _formKey,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Expanded(
                              child: Padding(
                                padding:
                                    EdgeInsets.only(left: 20.0, right: 20.0),
                                child: Container(
                                    alignment: Alignment.center,
                                    height: 60.0,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(50)),
                                    child: TextFormField(
                                        controller: emailController,
                                        validator: (value) {
                                          if (value.isEmpty) {
                                            return 'Please enter your email';
                                          }
                                          return null;
                                        },
                                        decoration: InputDecoration(
                                            enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.grey[500]),
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(50))),
                                            focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.green[300]),
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(50))),
                                            prefixIcon: Icon(Icons.email),
                                            hintText: 'Email'),
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
                                    left: 20.0, right: 20.0, top: 10.0),
                                child: Container(
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(50)),
                                    child: TextFormField(
                                      controller: passwordController,
                                      validator: (value) {
                                        if (value.isEmpty) {
                                          return 'Please enter your password';
                                        }
                                        return null;
                                      },
                                      decoration: InputDecoration(
                                          enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.grey[500]),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(50))),
                                          focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.green[300]),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(50))),
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
                        SizedBox(
                          height: 30,
                        ),
                        //login button
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.only(
                                    right: 100, left: 100, top: 10),
                                child: Container(
                                  alignment: Alignment.center,
                                  height: 60.0,
                                  decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                        begin: Alignment.topRight,
                                        end: Alignment.bottomLeft,
                                        colors: [
                                          Color(0xFF91b3fa),
                                          Color(0xFF4f52ff)
                                        ],
                                      ),
                                      borderRadius: BorderRadius.circular(50)),
                                  child: FlatButton(
                                    child: Text("Login",
                                        style: TextStyle(
                                            fontSize: 20.0,
                                            color: Colors.white)),
                                    onPressed: () {
                                      var email = emailController.text;
                                      var password = passwordController.text;
                                      if (_formKey.currentState.validate()) {
                                        authHandler
                                            .handleSignInEmail(email, password)
                                            .then((FirebaseUser user) {
                                          new PrefManager()
                                              .setLoggedInData(email, password);
                                          Navigator.popAndPushNamed(
                                              context, '/');
                                        }).catchError((e) {
                                          print(e);
                                          if (e.toString().contains(
                                                  "ERROR_USER_NOT_FOUND") ||
                                              e.toString().contains(
                                                  "ERROR_WRONG_PASSWORD")) {
                                            Fluttertoast.showToast(
                                              msg: "Invalid email or password",
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
                                      //checking if the email and password are correct
                                    },
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        //sign up navigation
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Expanded(
                              child: Container(
                                alignment: Alignment.center,
                                height: 60.0,
                                child: GestureDetector(
                                    child: RichText(
                                  text: TextSpan(
                                    text: "Don't have an account? ",
                                    style: TextStyle(
                                      fontSize: 20.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                )),
                              ),
                            ),
                          ],
                        ),
                        Center(
                          child: Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      begin: Alignment.topRight,
                                      end: Alignment.bottomLeft,
                                      colors: [
                                        Color(0xFF91b3fa),
                                        Color(0xFF4f52ff)
                                      ],
                                    ),
                                    borderRadius: BorderRadius.circular(50)),
                                child: FlatButton(
                                  onPressed: () {
                                    onPressed:
                                    Navigator.of(context)
                                        .pushNamed(SignupFormSeller.routeName);
                                  },
                                  child: Text(
                                    "Signup",
                                    style: TextStyle(
                                      fontSize: 15.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ])),
            ],
          ),
        ),
      ]),
    )));
  }
}
