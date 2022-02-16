import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_website/constants/colors.dart';

class MyTheme {
  static final darkTheme = ThemeData(
      scaffoldBackgroundColor: kmainbgDark,
      textTheme: TextTheme(
          subtitle2: GoogleFonts.montserrat(color: Colors.white),
          subtitle1: GoogleFonts.montserrat(color: Colors.grey[300]),
          headline1: GoogleFonts.playfairDisplay(color: Colors.white)));

  static final lightTheme = ThemeData(
      scaffoldBackgroundColor: kmainbgLight,
      textTheme: TextTheme(
          subtitle2: GoogleFonts.montserrat(color: ktxtcolor2),
          subtitle1: GoogleFonts.montserrat(color: ktxtcolor1),
          headline1: GoogleFonts.playfairDisplay(color: ktxtcolor2)));
}
