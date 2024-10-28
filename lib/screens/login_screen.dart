import 'package:flutter/material.dart';
import 'package:soulcypher/utils/app_colors.dart';
import 'package:soulcypher/utils/font_styles.dart';
import 'package:soulcypher/widgets/login_box.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  child: Image.asset(
                "assets/logo.png",
                height: 60,
                width: 60,
              )),
              Text(
                "SoulCypher.",
                style: Fontstyles.logoTextstyle(context),
              ),
              SizedBox(
                height: 50,
              ),
              LogInBox()
            ],
          ),
        ),
      ),
    );
  }
}
