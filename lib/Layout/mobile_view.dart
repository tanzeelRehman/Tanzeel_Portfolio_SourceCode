import 'package:flutter/material.dart';
import 'package:portfolio_website/Views/content_view.dart';
import 'package:portfolio_website/constants/colors.dart';
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
              ))
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
