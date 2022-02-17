import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_website/constants/colors.dart';

class MyTheme {
  static final darkTheme = ThemeData(
      scaffoldBackgroundColor: kmainbgDark,
      drawerTheme: const DrawerThemeData(backgroundColor: ktxtcolor2),
      iconTheme: const IconThemeData(color: ktxtcolor1),
      textTheme: TextTheme(
          subtitle2: GoogleFonts.montserrat(color: Colors.white),
          subtitle1: GoogleFonts.montserrat(color: Colors.grey[300]),
          headline1: GoogleFonts.playfairDisplay(color: Colors.white),
          caption: const TextStyle(
              fontWeight: FontWeight.w700,
              fontStyle: FontStyle.italic,
              fontSize: 15,
              color: Colors.white)));

  static final lightTheme = ThemeData(
      drawerTheme: const DrawerThemeData(backgroundColor: babyblue),
      scaffoldBackgroundColor: kmainbgLight,
      iconTheme: const IconThemeData(color: kmainbgDark),
      textTheme: TextTheme(
          subtitle2: GoogleFonts.montserrat(color: ktxtcolor2),
          subtitle1: GoogleFonts.montserrat(color: ktxtcolor1),
          headline1: GoogleFonts.playfairDisplay(color: ktxtcolor2),
          caption: const TextStyle(
              fontWeight: FontWeight.w700,
              fontStyle: FontStyle.italic,
              fontSize: 15,
              color: ktxtcolor2)));
}
