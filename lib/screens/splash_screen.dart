import 'package:flutter/material.dart';
import 'package:soulcypher/functions/authentication.dart';
import 'package:soulcypher/screens/login_screen.dart';
import 'package:soulcypher/utils/app_colors.dart';
import 'package:soulcypher/utils/font_styles.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    goHome(context);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: AlignmentDirectional.topStart,
                end: AlignmentDirectional.bottomCenter,
                colors: [
              appcolor.gradientColor2,
              appcolor.gradientColor1,
            ])),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
                child: Container(
                    child: Image.asset(
              "assets/logo.png",
              height: 100,
              width: 100,
            ))),
            SizedBox(
              height: 15,
            ),
            Flexible(
                child: Text(
              "SoulCypher.",
              style: Fontstyles.logoTextstyle(context),
            ))
          ],
        ),
      ),
    );
  }
}

Future<void> goHome(BuildContext context) async {
  await Future.delayed(Duration(seconds: 3));

  Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => AuthenticationPage(),
      ));
}
