import 'package:flutter/material.dart';

class Constants {
  // Homepage Colors
  static final Color homePageDefaultFontColor = Colors.black;
  static final Color homePageDefaultColor = Colors.deepOrange[100];
  static final Color homePageDefaultBackgroundColor = Colors.white;

  // Homepage Sizes
  static final double homePageDefaultCircularRadius = 10.0;
  static final double homePageDefaultFontSize = 20.0;

  // Homepage TextStyles
  static final TextStyle homePageDefaultTextStyle = TextStyle(
    fontSize: homePageDefaultFontSize,
    color: homePageDefaultFontColor,
  );
  static final TextStyle homePageSecondaryTextStyle = TextStyle(
    fontSize: 15.0,
    color: homePageDefaultFontColor,
  );

  // Circular Box Decoration
  static final BoxDecoration homePageDefaultCircularBoxDecoration =
      BoxDecoration(
    color: homePageDefaultColor,
    borderRadius: BorderRadius.all(
      Radius.circular(
        homePageDefaultCircularRadius,
      ),
    ),
  );
}
