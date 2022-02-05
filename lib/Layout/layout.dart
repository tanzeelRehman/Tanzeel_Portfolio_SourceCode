import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:portfolio_website/Layout/desktop_view.dart';
import 'package:portfolio_website/Layout/mobile_view.dart';
import 'package:portfolio_website/Layout/widgets/content_view.dart';
import 'package:portfolio_website/constants/colors.dart';

import 'package:portfolio_website/tab_contents.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class Layout extends StatefulWidget {
  @override
  State<Layout> createState() => _LayoutState();
}

class _LayoutState extends State<Layout> with SingleTickerProviderStateMixin {
  late TabController tabController;
  late ItemScrollController itemScrollController;
  late double screenheight;
  late double screenwidth;
  late double toppadding;
  late double bottompadding;
  var scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  void initState() {
    super.initState();
    itemScrollController = ItemScrollController();
    tabController = TabController(length: contentviews.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    screenheight = MediaQuery.of(context).size.height;
    screenwidth = MediaQuery.of(context).size.width;
    //? Padding of top tabbar
    toppadding = screenheight * 0.02;
    bottompadding = screenheight * 0.01;
    return Scaffold(
      endDrawer: drawer(),
      key: scaffoldKey,
      backgroundColor: kmainbg,
      body: Padding(
        padding: EdgeInsets.only(top: toppadding, bottom: bottompadding),
        child: ResponsiveWrapper.of(context).isLargerThan(TABLET)
            ? DesktopView(
                tabController: tabController, screenheight: screenheight)
            : MobileView(
                itemScrollController: itemScrollController,
                screenwidth: screenwidth,
                scaffoldkey: scaffoldKey,
              ),
      ),
    );
  }
  //* DRAWER =========================================================
  //?=================================================================

  Widget drawer() {
    return SizedBox(
      width: screenwidth * 0.60,
      child: Drawer(
          backgroundColor: kcomplimentry,
          child: ListView(
              children: [
                    SizedBox(
                      height: screenheight * 0.08,
                    ),
                    SizedBox(
                      child: Image(
                          height: screenheight * 0.1,
                          fit: BoxFit.fitHeight,
                          image: const AssetImage(
                              'lib/assets/images/tanzeel3_dark.png')),
                    ),
                    SizedBox(
                      height: screenheight * 0.08,
                    ),
                  ] +
                  contentviews
                      .map((e) => SizedBox(
                            child: ListTile(
                              leading: Icon(
                                e.icon,
                                color: Colors.white,
                                size: screenheight * 0.03,
                              ),
                              title: Text(
                                e.tab.text,
                                style: GoogleFonts.montserrat(
                                    color: Colors.white,
                                    fontSize: screenheight * 0.03),
                              ),
                              hoverColor: kblue,
                              onTap: () {
                                itemScrollController.scrollTo(
                                    index: contentviews.indexOf(e),
                                    duration:
                                        const Duration(milliseconds: 300));
                                Navigator.pop(context);
                              },
                            ),
                          ))
                      .toList())),
    );
  }
}
