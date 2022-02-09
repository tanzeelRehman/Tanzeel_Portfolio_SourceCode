import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio_website/Services/handle_url.dart';

class BottomBarIcons extends StatelessWidget {
  late double screenheight;
  late double screenwidth;

  @override
  Widget build(BuildContext context) {
    screenheight = MediaQuery.of(context).size.height;
    screenwidth = MediaQuery.of(context).size.width;
    return Row(
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
    );
  }
}
