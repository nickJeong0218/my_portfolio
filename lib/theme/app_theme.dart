import 'package:flutter/material.dart';

class AppTheme {
  // Main colors
  static const Color primaryColor = Color(0x003BB273);
  static const Color secondaryColor = Color(0x0025291C);

  // Text colors
  static const Color onPrimaryColor = primaryColor;
  static const Color onSecondaryColor = secondaryColor;
  static const Color onSelectedColor = Colors.white;

  // Buttons and Icons colors
  static const Color onPrimaryColorButton = primaryColor;
  static const Color onSecondaryColorButton = secondaryColor;
  static const Color onSelectedColorButton = Colors.white;
  static const Color onPrimaryIcon = primaryColor;
  static const Color onSecondaryIcon = secondaryColor;
  static const Color onSelectedIcon = Colors.white;

  // Background colors
  static const Color backgroundBlack = Color(0x00000000);
  static const Color backgroundGrey = Colors.grey;
  static const Color backgroundWhite = Colors.white;

  // Opacity
  static const double opacityPrimary = 0.3;
  static const double opacitySecondary = 0.3;

  // Radius
  static const double radiusPrimary = 10.0;
  static const double radiusSecondary = 10.0;

  // Text styles
  static const TextStyle textStylePrimary = TextStyle(
    color: onPrimaryColor,
    fontSize: 16.0,
    fontWeight: FontWeight.w400,
  );
  static const TextStyle textStyleSecondary = TextStyle(
    color: onSecondaryColor,
    fontSize: 12.0,
    fontWeight: FontWeight.w300,
  );
}
