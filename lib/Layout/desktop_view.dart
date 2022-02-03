import 'package:flutter/material.dart';
import 'package:portfolio_website/Layout/bottom_bar.dart';
import 'package:portfolio_website/Layout/nav_bar.dart';
import 'package:portfolio_website/Layout/widgets/content_view.dart';
import 'package:portfolio_website/tab_contents.dart';

class DesktopView extends StatelessWidget {
  const DesktopView({
    Key? key,
    required this.tabController,
    required this.screenheight,
  }) : super(key: key);

  final TabController tabController;

  final double screenheight;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        //? This is Tabbar with no of tabs, which will start from right side

        CustomTabBar(
            tabController: tabController,
            tabs: contentviews.map((e) => e.tab).toList()),

        //? Here Goes the content of every Tab when it will change, will cover 85% of the screen (scrrenheight * 0.85) = 85%
        Container(
          height: screenheight * 0.75,
          child: TabBarView(
              controller: tabController,
              children: contentviews.map((e) => e.content).toList()),
        ),

        BottomBar()
      ],
    );
  }
}
