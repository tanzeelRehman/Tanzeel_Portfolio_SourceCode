import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio_website/Services/handle_url.dart';

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
          Container(
              height: screenheight * 0.05,
              child: Padding(
                padding: EdgeInsets.only(
                    left: screenwidth * 0.05, right: screenwidth * 0.05),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        //TODO: Add linkedin launch url links
                        IconButton(
                          onPressed: () => HandleUrl.launchUrl("#"),
                          icon: const FaIcon(FontAwesomeIcons.linkedin),
                          splashColor: Colors.transparent,
                          iconSize: screenheight * 0.05,
                          color: Colors.blue,
                          highlightColor: Colors.transparent,
                        ),
                        SizedBox(
                          width: screenwidth * 0.025,
                        ),
                        //TODO: Add github launch url links
                        IconButton(
                          onPressed: () => HandleUrl.launchUrl("#"),
                          icon: const FaIcon(FontAwesomeIcons.github),
                          splashColor: Colors.transparent,
                          iconSize: screenheight * 0.05,
                          color: Colors.white,
                          highlightColor: Colors.transparent,
                        )
                      ],
                    ),
                    const Text(
                      "Made with Flutter Web \u00a9 2022",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
