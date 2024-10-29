import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:soulcypher/screens/home_screen.dart';
import 'package:soulcypher/screens/login_screen.dart';

class AuthenticationPage extends StatelessWidget {
  const AuthenticationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {

          // if signed in
          if(snapshot.hasData){
            return HomeScreen();
          }
          
          // if logged out
          else{
            return LoginScreen();
          }
        },
      ),
    );
  }
}