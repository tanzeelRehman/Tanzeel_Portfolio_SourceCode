import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_website/constants/colors.dart';

Widget header(double fontSize, BuildContext context) {
  return Wrap(
    children: [
      Text("Hi, my name is ",
          style: Theme.of(context)
              .textTheme
              .headline1!
              .copyWith(fontSize: fontSize)),
      Text("Tanzeel",
          style: Theme.of(context)
              .textTheme
              .headline1!
              .copyWith(fontSize: fontSize, color: kblue)),
      Text("!",
          style: Theme.of(context)
              .textTheme
              .headline1!
              .copyWith(fontSize: fontSize)),
    ],
  );
}

Widget header1(double fontSize, String text, Color color) {
  return Wrap(
    children: [
      Text(text,
          style: GoogleFonts.playfairDisplay(color: color, fontSize: fontSize)),
    ],
  );
}

Widget subHeader1(
    String text, double fontSize, BuildContext context, bool isBoald) {
  return Text(text,
      style: Theme.of(context).textTheme.subtitle1!.copyWith(
          fontSize: fontSize,
          fontWeight: isBoald ? FontWeight.w600 : FontWeight.normal));
}

Widget subHeader2(
    String text, double fontSize, BuildContext context, bool isBoald) {
  return Text(text,
      style: Theme.of(context).textTheme.subtitle2!.copyWith(
          fontSize: fontSize,
          fontWeight: isBoald ? FontWeight.w600 : FontWeight.normal));
}
