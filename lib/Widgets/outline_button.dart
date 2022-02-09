import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_website/constants/colors.dart';

class OutlinedCustomBtn extends StatelessWidget {
  final String btnText;
  VoidCallback onPressed;

  OutlinedCustomBtn({Key? key, required this.btnText, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      hoverColor: kblue.withAlpha(150),
      padding: const EdgeInsets.all(17.0),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
          side: const BorderSide(color: kblue)),
      onPressed: onPressed,
      child: Text(
        btnText,
        style: GoogleFonts.montserrat(
            fontWeight: FontWeight.w300, color: Colors.white, fontSize: 17),
      ),
    );
  }
}
