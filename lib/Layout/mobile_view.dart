import 'package:flutter/material.dart';
import 'package:portfolio_website/Layout/bottom_bar.dart';
import 'package:portfolio_website/Layout/mobile_bottom_bar.dart';
import 'package:portfolio_website/Layout/widgets/content_view.dart';
import 'package:portfolio_website/Widgets/bottom_bar_icons.dart';
import 'package:portfolio_website/constants/colors.dart';
import 'package:portfolio_website/tab_contents.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'layout.dart';

class MobileView extends StatelessWidget {
  const MobileView({
    Key? key,
    required this.screenwidth,
    required this.scaffoldkey,
    required this.itemScrollController,
  }) : super(key: key);
  final double screenwidth;

  final GlobalKey<ScaffoldState> scaffoldkey;
  final ItemScrollController itemScrollController;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenwidth,
      padding:
          EdgeInsets.only(left: screenwidth * 0.04, right: screenwidth * 0.04),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
          ),
          IconButton(
              iconSize: screenwidth * 0.07,
              onPressed: () => scaffoldkey.currentState!.openEndDrawer(),
              icon: const Icon(
                Icons.menu_rounded,
                color: kblue,
              )),

          //? Here Goes the content of every Tab when it will change, will cover 85% of the screen (scrrenheight * 0.85) = 85%
          Expanded(
              child: ScrollablePositionedList.builder(
                  itemCount: contentviews.length,
                  itemScrollController: itemScrollController,
                  itemBuilder: (context, index) =>
                      contentviews[index].content)),
          mobileBottomBar(context),
        ],
      ),
    );
  }
}
