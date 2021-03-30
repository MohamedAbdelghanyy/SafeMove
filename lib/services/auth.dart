import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:SafeMove/services/data_manager.dart';

class Auth {
  final _auth = FirebaseAuth.instance;
  final Future<FirebaseApp> _future = Firebase.initializeApp();
  final databaseRef = FirebaseDatabase.instance.reference().child('users');

  Future signUp(name, phone, email, password) async {
    final authresult = await _auth.createUserWithEmailAndPassword(
        email: email, password: password);
    databaseRef.child(_auth.currentUser.uid).set({
      'name': name.toString(),
      'phone': phone.toString(),
      'email': email.toString(),
      'type': 'user',
    });
    return authresult;
  }

  
}
