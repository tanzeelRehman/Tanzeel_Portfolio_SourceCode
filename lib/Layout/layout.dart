import 'package:flutter/material.dart';

import 'package:portfolio_website/Layout/desktop_view.dart';
import 'package:portfolio_website/Layout/mobile_view.dart';

import 'package:portfolio_website/Layout/widgets/tab_contents.dart';
import 'package:responsive_framework/responsive_framework.dart';

class Layout extends StatefulWidget {
  @override
  State<Layout> createState() => _LayoutState();
}

class _LayoutState extends State<Layout> with SingleTickerProviderStateMixin {
  late TabController tabController;
  late double screenheight;
  late double screenwidth;
  late double toppadding;
  late double bottompadding;
  var scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  void initState() {
    super.initState();
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
      endDrawer: drawer(contentviews, screenheight),
      key: scaffoldKey,
      backgroundColor: const Color(0xff1e1e24),
      body: Padding(
        padding: EdgeInsets.only(top: toppadding, bottom: bottompadding),
        child: ResponsiveWrapper.of(context).isLargerThan(TABLET)
            ? DesktopView(
                tabController: tabController,
                contentviews: contentviews,
                screenheight: screenheight)
            : MobileView(
                screenwidth: screenwidth,
                scaffoldkey: scaffoldKey,
              ),
      ),
    );
  }
}
