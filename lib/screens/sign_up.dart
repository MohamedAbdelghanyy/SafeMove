import 'package:SafeMove/data/global.dart';
import 'package:SafeMove/screens/sign_in.dart';
import 'package:flutter/material.dart';
import 'package:SafeMove/services/auth.dart';

class SignUpScreen extends StatefulWidget {
  static const routeName = '/signup';
  @override
  SignUpScreenState createState() {
    return SignUpScreenState();
  }
}

class SignUpScreenState extends State<SignUpScreen> {
  final _formKey = GlobalKey<FormState>();
  final _auth = Auth();
  String _name, _phone, _email, _password;
  final nameController = TextEditingController();
  final phoneController = TextEditingController();
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
        backgroundColor: Global.secondaryColor,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(30),
            child: Form(
              key: _formKey,
              child: ListView(children: [
                Padding(
                  padding: EdgeInsets.all(50),
                  child: Image(
                    image: AssetImage("assets/images/logo.png"),
                    height: 175,
                  ),
                ),
                TextFormField(
                  onSaved: (value) {
                    _name = value;
                  },
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Please enter your full name';
                    }
                    if (value.length < 6) {
                      return 'Minimum length is 6 characters';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey[500]),
                          borderRadius: BorderRadius.all(
                            Radius.circular(50),
                          )),
                      fillColor: Colors.white,
                      filled: true,
                      prefixIcon: Padding(
                        padding: EdgeInsets.only(left: 8),
                        child: Icon(Icons.person, size: 18),
                      ),
                      hintText: 'Full Name'),
                  style: TextStyle(fontSize: 18.0, color: Colors.black),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  onSaved: (value) {
                    _email = value;
                  },
                  controller: emailController,
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Please enter your email';
                    }
                    if (!value.contains("@") || !value.contains(".")) {
                      return 'Please enter email in the correct format';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey[500]),
                        borderRadius: BorderRadius.all(
                          Radius.circular(50),
                        ),
                      ),
                      fillColor: Colors.white,
                      filled: true,
                      prefixIcon: Icon(Icons.email),
                      hintText: 'Email'),
                  style: TextStyle(fontSize: 18.0, color: Colors.black),
                  obscureText: true,
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                    onSaved: (value) {
                      _phone = value;
                    },
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
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey[500]),
                          borderRadius: BorderRadius.all(
                            Radius.circular(50),
                          ),
                        ),
                        fillColor: Colors.white,
                        filled: true,
                        prefixIcon: Icon(Icons.add_call),
                        hintText: 'Mobile number'),
                    style: TextStyle(fontSize: 18.0, color: Colors.black)),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  onSaved: (value) {
                    _password = value;
                  },
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
                          borderSide: BorderSide(color: Colors.grey[500]),
                          borderRadius: BorderRadius.all(Radius.circular(50))),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.green[300]),
                          borderRadius: BorderRadius.all(Radius.circular(50))),
                      prefixIcon: Icon(Icons.lock),
                      hintText: 'Password'),
                  style: TextStyle(fontSize: 20.0, color: Colors.black),
                  obscureText: true,
                ),
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Form(
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
                                          borderRadius:
                                              BorderRadius.circular(50)),
                                    ),
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
                                          borderRadius:
                                              BorderRadius.circular(50.0)),
                                    ),
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
                                          borderRadius:
                                              BorderRadius.circular(50.0)),
                                      child: Text('data'),
                                    ),
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
                                            borderRadius:
                                                BorderRadius.circular(50.0)),
                                        child: Text("data")),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            //signup button
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Expanded(
                                  child: Padding(
                                    padding:
                                        EdgeInsets.only(right: 100, left: 100),
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
                                          borderRadius:
                                              BorderRadius.circular(50.0)),
                                      child: FlatButton(
                                          child: Text("Sign Up",
                                              style: TextStyle(
                                                  fontSize: 20.0,
                                                  color: Colors.white)),
                                          onPressed: () async {
                                            if (_formKey.currentState
                                                .validate()) {
                                              _formKey.currentState.save();
                                              try {
                                                await _auth.signUp(_name,
                                                    _phone, _email, _password);

                                                ScaffoldMessenger.of(context)
                                                    .showSnackBar(SnackBar(
                                                        content: Text(
                                                            "Sign up success, please login")));
                                                Navigator.pushNamed(context,
                                                    SignInScreen.routeName);
                                              } catch (e) {
                                                ScaffoldMessenger.of(context)
                                                    .showSnackBar(SnackBar(
                                                        content: Text(e.message
                                                            .toString())));
                                              }
                                            }
                                          }),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ]))
                    ],
                  ),
                ),
              ]),
            ),
          ),
        ));
  }
}
