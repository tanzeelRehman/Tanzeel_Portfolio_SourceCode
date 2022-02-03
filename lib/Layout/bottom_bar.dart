import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_website/Services/handle_url.dart';
import 'package:portfolio_website/bottom_bar_icons.dart';

class BottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenheight = MediaQuery.of(context).size.height;
    double screenwidth = MediaQuery.of(context).size.width;
    return Container(
      child: Column(
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 2,
              width: screenwidth * 0.90,
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: screenheight * 0.02,
          ),
          Container(
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
                    Text(
                      "Designed & Built by Tanzeel ur Rehman  💙  Flutter  \u00a9 2022",
                      style: GoogleFonts.montserrat(color: Colors.white),
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
