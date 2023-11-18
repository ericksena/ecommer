import 'package:ecommerce/src/themes/colors/light_color.dart';
import 'package:flutter/material.dart';

class DarkColor extends LightColor {
  // Scaffolding colors
  @override
  get defaultScaffoldBackgroundColor => Colors.black;

  @override
  get appbarBackgroundColor => Colors.black;

  @override
  get appbarForegroundColor => Colors.white;

  // Text colors
  @override
  get defaultBodyColor => Colors.white;

  @override
  get defaultLabelColor => Colors.white54;

  // Divider colors
  @override
  get defaultDividerColor => Colors.white12;

  // Card colors
  @override
  get defaultCardColor => Colors.white.withOpacity(0.07);
}
