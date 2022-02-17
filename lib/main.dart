import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:portfolio_website/Layout/layout.dart';
import 'package:portfolio_website/Services/theme_service.dart';
import 'package:portfolio_website/Theme/my_theme.dart';
import 'package:portfolio_website/constants/colors.dart';
import 'package:responsive_framework/responsive_wrapper.dart';
import 'package:responsive_framework/utils/scroll_behavior.dart';
import 'package:get/get.dart';

void main() async {
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'tanzRfolio',
      builder: (context, child) => ResponsiveWrapper.builder(
          ClampingScrollWrapper.builder(context, child!),
          breakpoints: const [
            ResponsiveBreakpoint.resize(380, name: MOBILE),
            ResponsiveBreakpoint.resize(600, name: TABLET),
            ResponsiveBreakpoint.resize(800, name: DESKTOP),
            ResponsiveBreakpoint.resize(350, name: 'XL')
          ]),
      themeMode: ThemeService().getThemeMode(),
      darkTheme: MyTheme.darkTheme,
      theme: MyTheme.lightTheme,
      home: Layout(),
    );
  }
}
