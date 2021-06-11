import 'package:SafeMove/data/global.dart';
import 'package:SafeMove/screens/sign_up.dart';
import 'package:SafeMove/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:SafeMove/services/auth.dart';
import 'package:flutter/rendering.dart';

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
      backgroundColor: Global.secondaryColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(30),
          child: Form(
            key: _formKey,
            child: ListView(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(50),
                  child: Image(
                    image: AssetImage("assets/covidlogo.png"),
                    height: 175,
                  ),
                ),
                //Email textfield
                TextFormField(
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
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey[500]),
                        borderRadius: BorderRadius.all(
                          Radius.circular(50),
                        ),
                      ),
                      fillColor: Colors.white,
                      filled: true,
                      prefixIcon: Padding(
                        padding: EdgeInsets.only(left: 8),
                        child: Icon(Icons.email, size: 18),
                      ),
                      hintText: 'Email'),
                  style: TextStyle(fontSize: 18.0, color: Colors.black),
                ),
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
                      prefixIcon: Padding(
                        padding: EdgeInsets.only(left: 8),
                        child: Icon(Icons.lock, size: 18),
                      ),
                      hintText: 'Password'),
                  style: TextStyle(fontSize: 18.0, color: Colors.black),
                  obscureText: true,
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [Color(0xFF91b3fa), Color(0xFF4f52ff)],
                      ),
                      borderRadius: BorderRadius.circular(50)),
                  // ignore: deprecated_member_use
                  child: FlatButton(
                    child: Text(
                      "Login",
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () async {
                      if (_formKey.currentState.validate()) {
                        _formKey.currentState.save();
                        try {
                          await _auth.signIn(_email, _password);
                          Navigator.pushReplacementNamed(
                            context,
                            SplashScreen.routeName,
                          );
                        } catch (e) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(e.message),
                            ),
                          );
                        }
                      }
                    },
                  ),
                ),
                //sign up navigation
                Container(
                  alignment: Alignment.center,
                  height: 60.0,
                  child: GestureDetector(
                      child: RichText(
                    text: TextSpan(
                      text: "Don't have an account? ",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  )),
                ),
                Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [Color(0xFF91b3fa), Color(0xFF4f52ff)],
                      ),
                      borderRadius: BorderRadius.circular(50)),
                  // ignore: deprecated_member_use
                  child: FlatButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(SignUpScreen.routeName);
                    },
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
