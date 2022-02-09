import 'package:flutter/material.dart';

class Arrows extends StatelessWidget {
  final bool isBackArrow;

  const Arrows({Key? key, required this.isBackArrow}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isBackArrow ? Alignment.centerLeft : Alignment.centerRight,
      child: IconButton(
          splashColor: Colors.transparent,
          color: Colors.white,
          onPressed: () {},
          icon: Icon(
              isBackArrow ? Icons.arrow_back_ios : Icons.arrow_forward_ios)),
    );
  }
}
