import 'package:flutter/material.dart';

Widget imageWithBorder(String path, double screenheight, double screenwidth) {
  return Container(
    height: screenheight / 2,
    width: screenheight / 3,
    decoration: BoxDecoration(border: Border.all(width: 5.0)),
    child: Image(
      fit: BoxFit.cover,
      image: AssetImage(path),
    ),
  );
}
