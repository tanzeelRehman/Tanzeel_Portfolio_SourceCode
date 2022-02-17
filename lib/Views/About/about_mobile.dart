import 'dart:js';

import 'package:flutter/material.dart';
import 'package:portfolio_website/Views/About/widgets/detail_about.dart';
import 'package:portfolio_website/Views/About/widgets/skill.dart';
import 'package:portfolio_website/Views/Home/widgets/header_and_subHeader.dart';
import 'package:portfolio_website/Widgets/community_icon_button.dart';
import 'package:portfolio_website/Widgets/outline_button.dart';
import 'package:portfolio_website/constants/colors.dart';
import 'package:portfolio_website/constants/headings.dart';
import 'package:portfolio_website/constants/strings.dart';

class AboutMobile extends StatelessWidget {
  final List communityIconHeight;
  AboutMobile({
    Key? key,
    required this.communityIconHeight,
  }) : super(key: key);

  late Size screen;

  @override
  Widget build(BuildContext context) {
    screen = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(vertical: screen.height * 0.2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          header1(screen.width * 0.2, "About Me", kblue),
          SizedBox(height: screen.height * 0.05),
          subHeader1(
              "I'm Tanzeel ur Rehman, a Flutter developer and Graphics designer",
              24,
              context,
              true),

          SizedBox(height: screen.height * 0.03),
          //*=========================================================

          detailAbout(context),

          SizedBox(height: screen.height * 0.05),
          //*=========================================================
          //? COMSATS RESUME AND GDSC ICON
          Row(
            children: [
              OutlinedCustomBtn(btnText: "Contact Me", onPressed: () {}),
              SizedBox(
                width: screen.width * 0.05,
              ),
              for (int i = 0; i < kCommunityLogo.length; i++)
                CommunityIconBtn(
                    icon: kCommunityLogo[i],
                    link: kCommunityLogoLinks[i],
                    height: communityIconHeight[i])
            ],
          ),

          SizedBox(
            height: screen.height * 0.04,
          ),
          //*=========================================================
          header1(20, "Technologies and languages I have worked with", kblue),
          SizedBox(
            height: screen.height * 0.03,
          ),

          //*=========================================================
          //? SKILLS ICONS
          FittedBox(
            child: Row(
              children: [
                for (var i = 0; i < 4; i++) skill(kskills[i], context),
              ],
            ),
          ),
          FittedBox(
            child: Row(
              children: [
                for (var i = 4; i < 8; i++) skill(kskills[i], context),
              ],
            ),
          ),

          skill(kskills[kskills.length - 1], context)
        ],
      ),
    );
  }
}
