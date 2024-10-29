import 'package:flutter/material.dart';
import 'package:soulcypher/utils/app_colors.dart';
import 'package:soulcypher/utils/font_styles.dart';
import 'package:soulcypher/widgets/playlist_list_builder.dart';
import 'package:soulcypher/widgets/recently_played_builder.dart';
import 'package:soulcypher/widgets/recommendations.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: AlignmentDirectional.topStart,
              end: AlignmentDirectional.bottomCenter,
              colors: [appcolor.gradientColor1, appcolor.gradientColor2],
            ),
          ),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Profile Section
                Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage("assets/test-avatar.jpg"),
                    ),
                    SizedBox(width: 15),
                    Text(
                      "SoulCypher.",
                      style: Fontstyles.logoTextstyle2(context),
                    ),
                  ],
                ),
                SizedBox(height: 20),

                // Recently Played Section
                Text(
                  "Recently played",
                  style: Fontstyles.HeadlineStyle1(context),
                ),
                SizedBox(height: 10),
                RecentlyPlayedSection(),

                SizedBox(height: 5),

                // Your Playlists Section
                Text(
                  "Your playlists",
                  style: Fontstyles.HeadlineStyle1(context),
                ),
                SizedBox(height: 10),
                PlaylistsSection(),

                // Recomendation Section
                Text(
                  "You may also like",
                  style: Fontstyles.HeadlineStyle1(context),
                ),
                SizedBox(height: 10),
                RecommendationsSection(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
