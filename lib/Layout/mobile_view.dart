import 'package:flutter/material.dart';
import 'package:portfolio_website/Layout/bottom_bar.dart';
import 'package:portfolio_website/Layout/widgets/content_view.dart';
import 'package:portfolio_website/bottom_bar_icons.dart';
import 'package:portfolio_website/constants/colors.dart';
import 'package:portfolio_website/tab_contents.dart';
import 'layout.dart';

class MobileView extends StatelessWidget {
  const MobileView({
    Key? key,
    required this.screenwidth,
    required this.scaffoldkey,
  }) : super(key: key);
  final double screenwidth;

  final GlobalKey<ScaffoldState> scaffoldkey;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenwidth,
      padding: EdgeInsets.only(left: screenwidth * 0.08),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          IconButton(
              iconSize: screenwidth * 0.05,
              onPressed: () => scaffoldkey.currentState!.openEndDrawer(),
              icon: const Icon(
                Icons.menu_rounded,
                color: Colors.white,
              )),

          //? Here Goes the content of every Tab when it will change, will cover 85% of the screen (scrrenheight * 0.85) = 85%
          Expanded(
              child: ListView.builder(
                  itemCount: contentviews.length,
                  itemBuilder: (context, index) =>
                      contentviews[index].content)),
        ],
      ),
    );
  }
}

Widget drawer(List<ContentView> contentviews, double screenheight) {
  return Drawer(
    child: Padding(
      padding: EdgeInsets.only(top: screenheight * 0.10),
      child: ListView(
        children: contentviews
            .map((e) => ListTile(
                  title: Text(
                    e.tab.text,
                    style: const TextStyle(
                        color: klightRed,
                        fontWeight: FontWeight.w800,
                        fontSize: 20),
                  ),
                  onTap: () {},
                ))
            .toList(),
      ),
    ),
  );
}
