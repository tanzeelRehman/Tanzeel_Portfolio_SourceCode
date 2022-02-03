import 'package:flutter/material.dart';

Widget picture(double widthAndHeight) {
  return SizedBox(
    width: widthAndHeight,
    height: widthAndHeight,
    child: ClipRRect(
      borderRadius: BorderRadius.circular(widthAndHeight),
      child:
          Image.asset('lib/assets/images/cut_pic.jpg', fit: BoxFit.fitHeight),
    ),
  );
}
