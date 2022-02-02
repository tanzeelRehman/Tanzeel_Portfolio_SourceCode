import 'package:flutter/material.dart';

class CustomTab extends StatelessWidget {
  final String text;

  const CustomTab({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Text(
        text,
        style: const TextStyle(fontSize: 17),
      ),
    );
  }
}
