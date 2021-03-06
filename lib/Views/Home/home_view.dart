import 'package:flutter/material.dart';
import 'package:portfolio_website/Services/handle_sizes.dart';
import 'package:portfolio_website/Views/Home/widgets/animatedTextWidget.dart';
import 'package:portfolio_website/Views/Home/widgets/header_and_subHeader.dart';
import 'package:portfolio_website/Views/Home/widgets/pictureWidget.dart';
import 'package:portfolio_website/Widgets/outline_button.dart';
import 'package:responsive_framework/responsive_framework.dart';

class HomeView extends StatefulWidget {
  HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  late double screenwidth;
  late double screenheight;
  late HandleSizes sizes;

  @override
  Widget build(BuildContext context) {
    screenheight = MediaQuery.of(context).size.height;
    screenwidth = MediaQuery.of(context).size.width;
    //? Handle sizes is a class which has 2 methods getImageSize and get fontSize
    //? which returns image and font size accordings to screen constraints
    sizes = HandleSizes(screenHeight: screenheight, screenWidth: screenwidth);
    return ResponsiveWrapper.of(context).isLargerThan(TABLET)
        ? _desktopView()
        : _mobileView();
  }

  //* DESK TOP VIEW ===========================================================
  //? =========================================================================

  Widget _desktopView() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          width: screenwidth * 0.50,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              subHeader1("WELCOME TO MY PORTFOLIO!", screenheight * 0.03,
                  context, false),
              header(sizes.getFontSize(true), context),
              SizedBox(height: screenheight * 0.05),
              animatedText(
                  "UI/UX Designer",
                  "Graphic Designer",
                  "Flutter Developer",
                  sizes.getFontSize(false),
                  screenwidth,
                  context)
            ],
          ),
        ),
        SizedBox(width: screenwidth * 0.03),
        picture(sizes.getImageSize(), 'lib/assets/images/cut_pic.jpg')
      ],
    );
  }
  //* MOBILE VIEW ===========================================================+
  //? =========================================================================

  Widget _mobileView() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        picture(sizes.getImageSize(), 'lib/assets/images/cut_pic.jpg'),
        SizedBox(height: screenheight * 0.07),
        subHeader1(
            "WELCOME TO MY PORTFOLIO!", screenwidth * 0.05, context, false),
        SizedBox(height: screenheight * 0.02),
        Align(
          alignment: Alignment.center,
          child: Container(
            height: 2,
            width: screenwidth * 0.70,
            color: Theme.of(context).textTheme.subtitle1!.color,
          ),
        ),
        SizedBox(height: screenheight * 0.03),
        header(screenwidth * 0.07, context),
        SizedBox(height: screenheight * 0.05),
        animatedText("UI/UX Designer", "Graphic Designer", "Flutter Developer",
            screenwidth * 0.06, screenheight, context),
        SizedBox(
          height: screenheight * 0.04,
        ),
        OutlinedCustomBtn(btnText: "Resume", onPressed: () {})
      ],
    );
  }
}
