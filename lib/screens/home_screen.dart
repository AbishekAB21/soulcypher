import 'package:flutter/material.dart';
import 'package:soulcypher/utils/app_colors.dart';
import 'package:soulcypher/utils/font_styles.dart';
import 'package:soulcypher/widgets/recently_played_builder.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: AlignmentDirectional.topStart,
                  end: AlignmentDirectional.bottomCenter,
                  colors: [appcolor.gradientColor1, appcolor.gradientColor2])),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Image.asset(
                    "assets/logo.png",
                    height: 40,
                    width: 40,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "SoulCypher",
                    style: Fontstyles.logoTextstyle2(context),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Recently played",
                style: Fontstyles.HeadlineStyle1(context),
              ),
              SizedBox(
                height: 10,
              ),
              RecentlyPlayed()
            ],
          ),
        ),
      ),
    );
  }
}
