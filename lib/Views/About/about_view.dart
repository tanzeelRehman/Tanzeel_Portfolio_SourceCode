import 'package:flutter/material.dart';
import 'package:portfolio_website/Views/About/about_desktop.dart';

import 'package:portfolio_website/Views/About/about_mobile.dart';
import 'package:responsive_framework/responsive_framework.dart';

class AboutView extends StatelessWidget {
  late double screenwidth;
  late double screenheight;
  late List communityIconHeight;

  @override
  Widget build(BuildContext context) {
    screenheight = MediaQuery.of(context).size.height;
    screenwidth = MediaQuery.of(context).size.width;
    communityIconHeight = [60.0, 40.0];

    return ResponsiveWrapper.of(context).isLargerThan(TABLET)
        ? AboutDesktopView(
            communityIconHeight: communityIconHeight,
          )
        : AboutMobile(communityIconHeight: communityIconHeight);
  }
}
