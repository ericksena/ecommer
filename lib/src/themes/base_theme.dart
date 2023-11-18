import 'package:ecommerce/src/themes/colors/light_color.dart';
import 'package:flutter/material.dart';

class BaseTheme {
  final BuildContext context;
  final LightColor colors;

  const BaseTheme({required this.context, required this.colors});

  ThemeData theme() {
    return ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      useMaterial3: true,
      scaffoldBackgroundColor: colors.defaultScaffoldBackgroundColor,
      appBarTheme: AppBarTheme(
        backgroundColor: colors.appbarBackgroundColor,
        foregroundColor: colors.appbarForegroundColor,
      ),
      textTheme: TextTheme(
        bodyMedium: TextStyle(
          fontFamily: 'Poppins',
          color: colors.defaultBodyColor,
        ),
        labelMedium: TextStyle(
          color: colors.defaultLabelColor,
        ),
      ),
      dividerTheme: DividerThemeData(color: colors.defaultDividerColor),
      cardTheme: CardTheme(
        elevation: 0,
        color: colors.defaultCardColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4.0),
          side: BorderSide(color: colors.defaultDividerColor),
        ),
      ),
    );
  }
}
