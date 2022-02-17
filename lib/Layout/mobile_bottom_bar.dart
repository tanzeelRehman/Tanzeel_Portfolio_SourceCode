import 'package:flutter/material.dart';
import 'package:portfolio_website/Views/Home/widgets/header_and_subHeader.dart';

Widget mobileBottomBar(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
        padding: const EdgeInsets.only(top: 15, bottom: 10),
        child: subHeader1(
            "Designed & Built by Tanzeel ur Rehman  💙  Flutter  \u00a9 2022",
            12,
            context,
            false),
      ),
    ],
  );
}
