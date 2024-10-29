import 'package:flutter/material.dart';
import 'package:soulcypher/utils/font_styles.dart';

class RecentlyPlayed extends StatelessWidget {
  const RecentlyPlayed({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
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
                decoration: BoxDecoration(),
                child: Column(
                  children: [
                    Flexible(
                      child: Container(
                        width: 150,
                        height: 150,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            image: DecorationImage(
                                image: AssetImage(
                                  "assets/The_Eminem_Show.jpg",
                                ),
                                fit: BoxFit.cover)),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Sing for the moment",
                        style: Fontstyles.ContentTextStyle3(context),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text("Eminem",
                          style: Fontstyles.ContentTextStyle3(context)),
                    )
                  ],
                ),
              )
            ],
          );
        },
        separatorBuilder: (context, index) {
          return SizedBox(
            width: 10,
          );
        },
      ),
    );
  }
}
