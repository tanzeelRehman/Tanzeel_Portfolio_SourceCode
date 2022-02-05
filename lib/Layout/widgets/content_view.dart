import 'package:flutter/cupertino.dart';
import 'package:portfolio_website/Layout/widgets/custom_tab.dart';

class ContentView {
  final CustomTab tab;
  final Widget content;
  final IconData icon;

  ContentView({required this.tab, required this.content, required this.icon});
}
