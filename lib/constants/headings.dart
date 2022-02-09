import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget h2withBoldText(String txt, double fontsize, Color color) {
  return Text(txt,
      style: GoogleFonts.montserrat(
          color: color, fontSize: fontsize, fontWeight: FontWeight.w600));
}
