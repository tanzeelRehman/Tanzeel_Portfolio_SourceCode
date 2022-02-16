import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

import 'package:portfolio_website/Views/Home/widgets/header_and_subHeader.dart';
import 'package:portfolio_website/Widgets/bottom_bar_icons.dart';

class BottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenheight = MediaQuery.of(context).size.height;
    double screenwidth = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Align(
          alignment: Alignment.center,
          child: Container(
            height: 2,
            width: screenwidth * 0.90,
            color: Theme.of(context).textTheme.subtitle2!.color,
          ),
        ),
        SizedBox(
          height: screenheight * 0.02,
        ),
        SizedBox(
            height: screenheight * 0.05,
            child: Padding(
              padding: EdgeInsets.only(
                left: screenwidth * 0.05,
                right: screenwidth * 0.05,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BottomBarIcons(),
                  //  subHeader1("reman.tanzeel481@gmail.com", 20, context),
                  Text(
                    "Designed & Built by Tanzeel ur Rehman  💙  Flutter  \u00a9 2022",
                    style: Theme.of(context).textTheme.subtitle1,
                  )
                ],
              ),
            ))
      ],
    );
  }
}
