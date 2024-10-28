import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:soulcypher/screens/home_screen.dart';

class AuthenticationProvider with ChangeNotifier {
  FirebaseAuth _auth = FirebaseAuth.instance;

  // Sign in
  Future<void> signin(
      String email, String password, BuildContext context) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => HomeScreen(),
          ));
    } catch (e) {
      print(e);
    }
  }

  // Sign up
}
