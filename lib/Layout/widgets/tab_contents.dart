import 'package:flutter/material.dart';
import 'package:portfolio_website/Layout/widgets/content_view.dart';
import 'package:portfolio_website/Layout/widgets/custom_tab.dart';

List<ContentView> contentviews = [
  ContentView(
      tab: const CustomTab(text: "Home"),
      content: Center(
        child: Container(
          width: 100,
          height: 100,
          color: Colors.green,
        ),
      )),
  ContentView(
      tab: const CustomTab(text: "About"),
      content: Center(
        child: Container(
          width: 100,
          height: 100,
          color: Colors.red,
        ),
      )),
  ContentView(
      tab: const CustomTab(text: "Projects"),
      content: Center(
        child: Container(
          width: 100,
          height: 100,
          color: Colors.blue,
        ),
      ))
];
