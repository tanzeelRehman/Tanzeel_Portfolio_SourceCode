import 'package:flutter/material.dart';

Widget picture(double widthAndHeight, String imagePath) {
  return SizedBox(
    width: widthAndHeight,
    height: widthAndHeight,
    child: ClipRRect(
      borderRadius: BorderRadius.circular(widthAndHeight),
      child: Image.asset(imagePath, fit: BoxFit.fitHeight),
    ),
  );
}
