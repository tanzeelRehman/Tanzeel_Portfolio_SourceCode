import 'package:flutter/material.dart';

Widget detailAbout(BuildContext context) {
  const _simpletxt = TextStyle(fontSize: 13);
  final kemphasize = Theme.of(context).textTheme.caption;

  return RichText(
      text: TextSpan(
          style: Theme.of(context)
              .textTheme
              .subtitle1!
              .copyWith(letterSpacing: 1.0, height: 2.0),
          children: [
        const TextSpan(
            text: "I'm a Final Year Software engineering student enrolled ",
            style: _simpletxt),
        TextSpan(text: "COMSATS University, ", style: kemphasize),
        const TextSpan(
            text:
                "Islamabad Abbottabad Campus.  I have been developing mobile apps for almost 1 year. I have developed many mobile apps, these apps include",
            style: _simpletxt),
        TextSpan(
            text:
                " Firebase aunthetication, Realtime online database, local database, Google Maps API integration and Webscrapping",
            style: kemphasize),
        const TextSpan(text: " I'm an active member of ", style: _simpletxt),
        TextSpan(
            text: "Google Developer Student Clubs (DSC) ", style: kemphasize),
        const TextSpan(text: "Abbottabad Pakistan", style: _simpletxt)
      ]));
}
