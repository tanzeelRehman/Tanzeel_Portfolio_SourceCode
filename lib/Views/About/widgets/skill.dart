import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio_website/Views/Home/widgets/header_and_subHeader.dart';
import 'package:portfolio_website/constants/colors.dart';

Widget skill(String name, BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(right: 10.0),
    child: Row(
      children: [
        const FaIcon(
          FontAwesomeIcons.caretRight,
          color: kblue,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8),
          child: subHeader1(name, 15, context, false),
        ),
      ],
    ),
  );
}
