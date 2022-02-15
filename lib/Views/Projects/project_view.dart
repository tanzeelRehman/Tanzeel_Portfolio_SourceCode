import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:portfolio_website/Layout/widgets/arrows.dart';
import 'package:portfolio_website/constants/colors.dart';
import 'package:portfolio_website/constants/strings.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ProjectView extends StatefulWidget {
  @override
  State<ProjectView> createState() => _ProjectViewState();
}

class _ProjectViewState extends State<ProjectView> {
  late Size totalScreen;

  late double projectViewScreenHeight;
  late int activeIndex = 0;
  final controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    totalScreen = MediaQuery.of(context).size;
    projectViewScreenHeight = totalScreen.height * 0.80;

    return ResponsiveWrapper.of(context).isLargerThan(TABLET)
        ? projectDesktopView()
        : projectMobileView();
  }

  // ?? PROJECT VIEWS ================================================
  //* ==========================================================

  Widget projectMobileView() {
    return Column(
      children: [
        SizedBox(
          height: projectViewScreenHeight * 0.25,
          child: Container(
            child: Column(
              children: [
                Text(projects[activeIndex].title),
                Text(projects[activeIndex].desc)
              ],
            ),
          ),
        ),
        SizedBox(
            height: projectViewScreenHeight * 0.75, child: buildCarousal(1)),
        // buildIndicator()
      ],
    );
  }

  Widget projectDesktopView() {
    return Column(
      children: [
        SizedBox(
          height: projectViewScreenHeight * 0.25,
          child: Container(
            child: Column(
              children: [
                Text(projects[activeIndex].title),
                Text(projects[activeIndex].desc)
              ],
            ),
          ),
        ),
        Expanded(
          child: SizedBox(
              height: projectViewScreenHeight * 0.75,
              child: buildCarousal(0.3)),
        ),
        buildIndicator()
      ],
    );
  }

  // ?? WIDGETS ================================================
  //* ==========================================================

  Widget buildIndicator() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Arrows(
          isBackArrow: true,
          controller: controller,
        ),
        Padding(
          padding:
              const EdgeInsets.only(top: 40, bottom: 20, left: 20, right: 20),
          child: AnimatedSmoothIndicator(
              effect: const WormEffect(activeDotColor: kblue),
              activeIndex: activeIndex,
              count: projects.length),
        ),
        Arrows(
          isBackArrow: false,
          controller: controller,
        ),
      ],
    );
  }

  Widget buildCarousal(double viewport) {
    return CarouselSlider.builder(
      carouselController: controller,
      options: CarouselOptions(
          autoPlay: true,
          enlargeCenterPage: true,
          onPageChanged: (index, reason) {
            setState(() {
              activeIndex = index;
            });
          },
          height: 400.0,
          viewportFraction: viewport),
      itemCount: projects.length,
      itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) =>
          Container(
        color: Colors.grey,
        child: Image(image: AssetImage(projects[activeIndex].url)),
      ),
    );
  }
}
