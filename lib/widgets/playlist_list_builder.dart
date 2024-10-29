import 'package:flutter/material.dart';
import 'package:soulcypher/utils/font_styles.dart';

class PlaylistsSection extends StatelessWidget {
  const PlaylistsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250, // Set fixed height for Playlists section
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        itemCount: 5,
        itemBuilder: (context, index) {
          return Stack(
            children: [
              Container(
                width: 150,
                height: 250,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Flexible(
                      child: Container(
                        width: 142,
                        height: 160,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          image: DecorationImage(
                            image: AssetImage("assets/The_Eminem_Show.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "Gym",
                      style: Fontstyles.ContentTextStyle3(context),
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      "Abishek",
                      style: Fontstyles.ContentTextStyle3(context),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
        separatorBuilder: (context, index) => SizedBox(width: 10),
      ),
    );
  }
}
