import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';

class Arrows extends StatelessWidget {
  final bool isBackArrow;
  final CarouselController controller;

  const Arrows({Key? key, required this.isBackArrow, required this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isBackArrow ? Alignment.centerLeft : Alignment.centerRight,
      child: IconButton(
          splashColor: Colors.transparent,
          color: Colors.white,
          onPressed: () =>
              isBackArrow ? controller.previousPage() : controller.nextPage(),
          icon: Icon(
              isBackArrow ? Icons.arrow_back_ios : Icons.arrow_forward_ios)),
    );
  }
}
