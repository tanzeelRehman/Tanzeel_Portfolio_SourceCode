import 'package:flutter/material.dart';
import 'package:portfolio_website/constants/colors.dart';
import 'package:portfolio_website/outline_button.dart';

class CustomTabBar extends StatelessWidget {
  final TabController tabController;
  final List<Widget> tabs;

  const CustomTabBar(
      {Key? key, required this.tabController, required this.tabs})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
    //? Changes the width of tab items when screen get smaller to avoid line spacing
    //! We use this when we keep tab items at right side
    double tabbarscalling = screenwidth > 1400
        ? 0.21
        : screenwidth > 1100
            ? 0.3
            : 0.4;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        OutlinedCustomBtn(
          btnText: "Resume",
          onPressed: () {},
        ),
        Padding(
          //? Add padding at right side of tabbar
          padding: EdgeInsets.only(right: screenwidth * 0.05),
          child: Container(
            //? width of Tab items
            width: screenwidth * tabbarscalling,

            child: Theme(
              //* Customize the intrection style of tab items the way you want
              data: ThemeData(
                  highlightColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  hoverColor: Colors.transparent),
              child: TabBar(
                indicatorColor: kblue,
                tabs: tabs,
                controller: tabController,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
