import 'package:flutter/material.dart';
import 'package:portfolio_website/constants/styles.dart';

Widget detailAbout() {
  return RichText(
      text: TextSpan(style: kwhiteSubHeading, children: const [
    TextSpan(
        text: "I'm a Final Year Software engineering student enrolled ",
        style: _simpletxt),
    TextSpan(text: "COMSATS University, ", style: kemphasize),
    TextSpan(
        text:
            "Islamabad Abbottabad Campus.  I have been developing mobile apps for almost 1 year. I have developed many mobile apps, these apps include",
        style: _simpletxt),
    TextSpan(
        text:
            " Firebase aunthetication, Realtime online database, local database, Google Maps API integration and Webscrapping",
        style: kemphasize),
    TextSpan(text: " I'm an active member of ", style: _simpletxt),
    TextSpan(text: "Google Developer Student Clubs (DSC) ", style: kemphasize),
    TextSpan(text: "Abbottabad Pakistan", style: _simpletxt)
  ]));
}

const _simpletxt = TextStyle(fontSize: 13);
