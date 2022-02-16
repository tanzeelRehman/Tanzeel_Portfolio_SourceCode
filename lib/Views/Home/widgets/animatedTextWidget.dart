import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_website/constants/colors.dart';
import 'package:responsive_framework/responsive_framework.dart';

Widget animatedText(String text1, String text2, String text3, double fontSize,
    double screenwidth, BuildContext context) {
  return Row(
    mainAxisAlignment: ResponsiveWrapper.of(context).isLargerThan(TABLET)
        ? MainAxisAlignment.start
        : MainAxisAlignment.center,
    children: [
      const FaIcon(
        FontAwesomeIcons.caretRight,
        color: kblue,
      ),
      SizedBox(width: screenwidth * 0.01),
      DefaultTextStyle(
        style:
            Theme.of(context).textTheme.subtitle1!.copyWith(fontSize: fontSize),
        child: AnimatedTextKit(
          isRepeatingAnimation: true,
          totalRepeatCount: 10,
          animatedTexts: [
            TypewriterAnimatedText(text1),
            TypewriterAnimatedText(text2),
            TypewriterAnimatedText(text3),
          ],
          onTap: () {
            print("Tap Event");
          },
        ),
      ),
    ],
  );
}
