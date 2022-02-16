import 'package:flutter/material.dart';

import 'package:portfolio_website/constants/colors.dart';

class OutlinedCustomBtn extends StatelessWidget {
  final String btnText;
  VoidCallback onPressed;

  OutlinedCustomBtn({Key? key, required this.btnText, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: MaterialButton(
        hoverColor: kblue.withAlpha(150),
        padding: const EdgeInsets.all(17.0),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0),
            side: const BorderSide(color: kblue)),
        onPressed: onPressed,
        child: Text(
          btnText,
          style: Theme.of(context).textTheme.subtitle2!.copyWith(fontSize: 17),
        ),
      ),
    );
  }
}
