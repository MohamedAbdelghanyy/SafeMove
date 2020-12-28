<<<<<<< Updated upstream
import 'package:SafeMove/services/perference_manager.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import './services/auth.dart';
=======
import 'package:SafeMove/profile.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import './services/auth.dart';
import 'package:fluttertoast/fluttertoast.dart';
>>>>>>> Stashed changes

class LoginForm extends StatefulWidget {
  @override
  LoginFormState createState() {
    return LoginFormState();
  }
}

<<<<<<< Updated upstream
class _MyHomePageState extends State<MyHomePage> {
  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);

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
    final emailField = TextField(
      controller: emailController,
      obscureText: false,
      style: style,
      decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Email",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );
    final passwordField = TextField(
      controller: passwordController,
      obscureText: true,
      style: style,
      decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Password",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );
    final loginButon = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Color(0xffdb1f2c),
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {
          var email = emailController.text;
          var password = passwordController.text;
          if (_formKey.currentState.validate()) {
            authHandler
                .handleSignInEmail(
                    emailController.text, passwordController.text)
                .then((FirebaseUser user) {
              Navigator.push(context, new MaterialPageRoute(
                builder: (context) {
                  PrefManager myPrefManager = new PrefManager();
                  myPrefManager.setEmail(email);
                  myPrefManager.setPassword(password);
                  myPrefManager.setPermission(3);
                  myPrefManager.saveDataToLocalMemory();
                  return new TabsScreen();
                },
              ));
            }).catchError((e) {
              print(e);
              if (e.toString().contains("ERROR_USER_NOT_FOUND") ||
                  e.toString().contains("ERROR_WRONG_PASSWORD")) {
                Fluttertoast.showToast(
                  msg: "Invalid email or password",
                  toastLength: Toast.LENGTH_SHORT,
                );
              } else {
                Fluttertoast.showToast(
                  msg: "Please check your internet connection",
                  toastLength: Toast.LENGTH_SHORT,
                );
              }
            });
          }
        },
        child: Text("Login",
            textAlign: TextAlign.center,
            style: style.copyWith(
                color: Colors.white, fontWeight: FontWeight.bold)),
      ),
    );
=======
class LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();
  static const routeName = '/login-screen';
  var authHandler = new Auth();
>>>>>>> Stashed changes

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
    return MaterialApp(
        home: SafeArea(
            child: Scaffold(
                body: ListView(children: [
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
                key: _formKey,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(left: 20.0, right: 20.0),
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
                                      borderRadius: BorderRadius.circular(9.0)),
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
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(9.0)),
                                child: FlatButton(
                                  child: Text("Login",
                                      style: TextStyle(
                                          fontSize: 20.0, color: Colors.white)),
                                  onPressed: () {
                                    if (_formKey.currentState.validate()) {
                                      authHandler
                                          .handleSignInEmail(
                                              emailController.text,
                                              passwordController.text)
                                          .then((FirebaseUser user) {
                                        Navigator.push(context,
                                            new MaterialPageRoute(
                                          builder: (context) {
                                            return new Profile();
                                          },
                                        ));
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
                                        } else {
                                          Fluttertoast.showToast(
                                            msg:
                                                "Please check your internet connection",
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
                                    children: [
                                      TextSpan(
                                        text: "Signup",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            decoration:
                                                TextDecoration.underline),
                                      ),
                                    ]),
                              )),
                            ),
                          ),
                        ],
                      ),
                    ])),
          ],
        ),
      ),
    ]))));
  }
}
