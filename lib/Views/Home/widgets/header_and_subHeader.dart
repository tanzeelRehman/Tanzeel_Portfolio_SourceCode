import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_website/constants/colors.dart';

Widget header(double fontSize) {
  return Wrap(
    children: [
      Text("Hi, my name is ",
          style: GoogleFonts.playfairDisplay(
              color: Colors.white, fontSize: fontSize)),
      Text("Tanzeel",
          style: GoogleFonts.playfairDisplay(color: kblue, fontSize: fontSize)),
      Text("!",
          style: GoogleFonts.playfairDisplay(
              color: Colors.white, fontSize: fontSize)),
    ],
  );
}

Widget h1(double fontSize, String text, Color color) {
  return Wrap(
    children: [
      Text(text,
          style: GoogleFonts.playfairDisplay(color: color, fontSize: fontSize)),
    ],
  );
}

Widget subHeader(String text, double fontSize) {
  return Text(text,
      style:
          GoogleFonts.montserrat(color: Colors.grey[300], fontSize: fontSize));
}
