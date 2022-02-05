import 'package:flutter/material.dart';
import 'package:portfolio_website/Layout/widgets/content_view.dart';
import 'package:portfolio_website/Layout/widgets/custom_tab.dart';
import 'package:portfolio_website/Views/About/about_view.dart';
import 'package:portfolio_website/Views/Home/home_view.dart';
import 'package:portfolio_website/Views/Projects/project_view.dart';

List<ContentView> contentviews = [
  ContentView(
      tab: const CustomTab(text: "Home"),
      content: HomeView(),
      icon: Icons.home),
  ContentView(
      tab: const CustomTab(text: "About"),
      content: AboutView(),
      icon: Icons.person),
  ContentView(
      tab: const CustomTab(text: "Projects"),
      content: ProjectView(),
      icon: Icons.safety_divider)
];
