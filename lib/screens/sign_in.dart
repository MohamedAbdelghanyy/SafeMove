import 'package:SafeMove/screens/sign_up.dart';
import 'package:SafeMove/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:SafeMove/services/auth.dart';

class SignInScreen extends StatefulWidget {
  static const routeName = '/signin-screen';
  @override
  SignInScreenState createState() {
    return SignInScreenState();
  }
}

class SignInScreenState extends State<SignInScreen> {
  final _formKey = GlobalKey<FormState>();
  String _email, _password;
  final _auth = Auth();

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
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [Color(0xFFff8e89), Color(0xFFff7366)],
            ),
          ),
          child: ListView(
            children: [
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
                                          onSaved: (value) {
                                            _email = value;
                                          },
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
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(50))),
                                              focusedBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: Colors.green[300]),
                                                  borderRadius:
                                                      BorderRadius.all(
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
                                        onSaved: (value) {
                                          _password = value;
                                        },
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
                                            fontSize: 20.0,
                                            color: Colors.black),
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
                                        borderRadius:
                                            BorderRadius.circular(50)),
                                    child: FlatButton(
                                      child: Text("Login",
                                          style: TextStyle(
                                              fontSize: 20.0,
                                              color: Colors.white)),
                                      onPressed: () async {
                                        if (_formKey.currentState.validate()) {
                                          _formKey.currentState.save();
                                          try {
                                            await _auth.signIn(
                                                _email, _password);
                                            Navigator.pushReplacementNamed(
                                              context,
                                              SplashScreen.routeName,
                                            );
                                          } catch (e) {
                                            ScaffoldMessenger.of(context)
                                                .showSnackBar(
                                              SnackBar(
                                                content: Text(e.message),
                                              ),
                                            );
                                          }
                                        }
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
                                      Navigator.of(context)
                                          .pushNamed(SignUpScreen.routeName);
                                    },
                                    child: Text(
                                      "Sign Up",
                                      style: TextStyle(
                                        fontSize: 15.0,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
