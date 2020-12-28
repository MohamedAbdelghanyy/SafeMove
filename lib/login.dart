import 'package:SafeMove/services/perference_manager.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import './services/auth.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

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

    final signUp = Text(
      "Don't Have an Account? Sign Up",
      style: TextStyle(color: Colors.white, fontSize: 17),
    );

    final forgotPass = Text(
      "Reset Password",
      style: TextStyle(color: Colors.white, fontSize: 17),
    );

    return Scaffold(
      body: Center(
        child: new Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/background.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.all(36.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      height: 195.0,
                      child: Image.asset(
                        "assets/logo.png",
                        fit: BoxFit.contain,
                      ),
                    ),
                    SizedBox(height: 45.0),
                    emailField,
                    SizedBox(height: 25.0),
                    passwordField,
                    SizedBox(
                      height: 35.0,
                    ),
                    loginButon,
                    SizedBox(
                      height: 15.0,
                    ),
                    signUp,
                    SizedBox(
                      height: 10,
                    ),
                    forgotPass,
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
