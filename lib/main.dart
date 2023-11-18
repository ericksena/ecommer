import 'package:ecommerce/src/features/home/pages/home_page.dart';
import 'package:ecommerce/src/themes/base_theme.dart';
import 'package:ecommerce/src/themes/colors/dark_color.dart';
import 'package:ecommerce/src/themes/colors/light_color.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ecommerce App',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: BaseTheme(context: context, colors: LightColor()).theme(),
      darkTheme: BaseTheme(context: context, colors: DarkColor()).theme(),
      home: const HomePage(),
    );
  }
}
