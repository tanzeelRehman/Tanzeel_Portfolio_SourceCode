import 'package:flutter/material.dart';
import 'package:portfolio_website/Layout/layout.dart';
import 'package:portfolio_website/constants/colors.dart';
import 'package:responsive_framework/responsive_wrapper.dart';
import 'package:responsive_framework/utils/scroll_behavior.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'tanzRfolio',
      builder: (context, child) => ResponsiveWrapper.builder(
          ClampingScrollWrapper.builder(context, child!),
          breakpoints: const [
            ResponsiveBreakpoint.resize(380, name: MOBILE),
            ResponsiveBreakpoint.resize(600, name: TABLET),
            ResponsiveBreakpoint.resize(800, name: DESKTOP),
            ResponsiveBreakpoint.resize(350, name: 'XL')
          ]),
      theme: ThemeData(
        primarySwatch: Colors.blue,
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(primary: kblue),
        ),
      ),
      home: Layout(),
    );
  }
}
