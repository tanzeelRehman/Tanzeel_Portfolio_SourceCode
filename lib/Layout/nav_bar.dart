import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio_website/Services/theme_service.dart';
import 'package:portfolio_website/Theme/my_theme.dart';
import 'package:portfolio_website/constants/colors.dart';
import 'package:portfolio_website/Widgets/outline_button.dart';

class CustomTabBar extends StatefulWidget {
  final TabController tabController;
  final List<Widget> tabs;

  const CustomTabBar(
      {Key? key, required this.tabController, required this.tabs})
      : super(key: key);

  @override
  State<CustomTabBar> createState() => _CustomTabBarState();
}

class _CustomTabBarState extends State<CustomTabBar> {
  late bool currentMode;
  @override
  Widget build(BuildContext context) {
    currentMode = Get.isDarkMode;
    double screenwidth = MediaQuery.of(context).size.width;
    double screenheight = MediaQuery.of(context).size.height;
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
        Padding(
          padding: EdgeInsets.only(left: screenwidth * 0.01, top: 4),
          child: Image(
              height: screenheight * 0.07,
              fit: BoxFit.fitHeight,
              image: ThemeService().isSavedDarkMode()
                  ? const AssetImage('lib/assets/images/tanzeel3_dark.png')
                  : const AssetImage('lib/assets/images/tanzeel3_light.png')),
        ),
        Padding(
          //? Add padding at right side of tabbar
          padding: EdgeInsets.only(right: screenwidth * 0.05),
          child: Container(
            //? width of Tab items
            width: screenwidth * tabbarscalling,

            child: Theme(
              //* Customize the intrection style of tab items the way you want
              data: ThemeService().isSavedDarkMode()
                  ? MyTheme.darkTheme.copyWith(
                      highlightColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      hoverColor: Colors.transparent)
                  : MyTheme.lightTheme.copyWith(
                      highlightColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      hoverColor: Colors.transparent),

              child: TabBar(
                indicatorColor: kblue,
                tabs: widget.tabs,
                controller: widget.tabController,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Row(
            children: [
              OutlinedCustomBtn(
                btnText: "Resume",
                onPressed: () {},
              ),
              const SizedBox(
                width: 6,
              ),
              Switch(
                  value: ThemeService().isSavedDarkMode(),
                  onChanged: (value) {
                    ThemeService().changeThemeMode();
                  }),
            ],
          ),
        ),
      ],
    );
  }
}
