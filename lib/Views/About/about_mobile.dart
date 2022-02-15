import 'package:flutter/material.dart';
import 'package:portfolio_website/Views/About/widgets/detail_about.dart';
import 'package:portfolio_website/Views/About/widgets/skill.dart';
import 'package:portfolio_website/Views/Home/widgets/header_and_subHeader.dart';
import 'package:portfolio_website/Widgets/community_icon_button.dart';
import 'package:portfolio_website/Widgets/outline_button.dart';
import 'package:portfolio_website/constants/colors.dart';
import 'package:portfolio_website/constants/headings.dart';
import 'package:portfolio_website/constants/strings.dart';

Widget aboutMobile(
    double screenheight, double screenwidth, List communityIconHeight) {
  return Padding(
    padding: EdgeInsets.symmetric(vertical: screenheight * 0.2),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        h1(screenwidth * 0.2, "About Me", kblue),
        SizedBox(height: screenheight * 0.05),
        h2withBoldText(
            "I'm Tanzeel ur Rehman, a Flutter developer and Graphics designer",
            24,
            Colors.white),

        SizedBox(height: screenheight * 0.03),
        //*=========================================================

        detailAbout(),

        SizedBox(height: screenheight * 0.05),
        //*=========================================================
        //? COMSATS RESUME AND GDSC ICON
        Row(
          children: [
            OutlinedCustomBtn(btnText: "Contact Me", onPressed: () {}),
            SizedBox(
              width: screenwidth * 0.05,
            ),
            for (int i = 0; i < kCommunityLogo.length; i++)
              CommunityIconBtn(
                  icon: kCommunityLogo[i],
                  link: kCommunityLogoLinks[i],
                  height: communityIconHeight[i])
          ],
        ),

        SizedBox(
          height: screenheight * 0.04,
        ),
        //*=========================================================
        h1(20, "Technologies and languages I have worked with", kblue),
        SizedBox(
          height: screenheight * 0.03,
        ),

        //*=========================================================
        //? SKILLS ICONS
        FittedBox(
          child: Row(
            children: [
              for (var i = 0; i < 4; i++) skill(kskills[i]),
            ],
          ),
        ),
        FittedBox(
          child: Row(
            children: [
              for (var i = 4; i < 8; i++) skill(kskills[i]),
            ],
          ),
        ),

        skill(kskills[kskills.length - 1])
      ],
    ),
  );
}
