import 'dart:convert';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:safemove/services/data_manager.dart';
import 'package:http/http.dart' as http;

class Auth {
  final _auth = FirebaseAuth.instance;
  // ignore: unused_field
  final Future<FirebaseApp> _future = Firebase.initializeApp();
  static const url =
      'https://safe-move-da6ea-default-rtdb.firebaseio.com/users.json';

  Future signUp(name, phone, email, password) async {
    final authresult = await _auth.createUserWithEmailAndPassword(
        email: email, password: password);
    final response = await http.patch(
      Uri.parse(url),
      body: jsonEncode(
        {
          _auth.currentUser.uid: {
            'name': name.toString(),
            'phone': phone.toString(),
            'email': email.toString(),
            'type': 'user',
          }
        },
      ),
    );
    return authresult;
  }

  Future signIn(String email, String password) async {
    try {
      final authresult = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      final response =
          await http.get(Uri.parse(url + _auth.currentUser.uid + '.json'));
      var dbData = json.decode(response.body) as Map<String, dynamic>;
      var name = dbData['name'];
      var phone = dbData['phone'];
      var type = dbData['type'];

      await DataManager.mPrefManager.setLoggedInData(
          _auth.currentUser.uid, name, phone, email, password, type);

      return authresult;
    } catch (e) {
      print('Error' + e.toString());
    }
  }
}
