import 'package:flutter/material.dart';

class AppTextStyles {
  static TextStyle coverMenuButtonTextStyle({required double fontSize}) =>
      TextStyle(
        letterSpacing: 0,
        fontSize: fontSize,
        fontWeight: FontWeight.w500,
        color: Colors.white,
      );

  static TextStyle coverMenuHeaderTextStyle({required double fontSize}) =>
      TextStyle(
        letterSpacing: 0,
        fontSize: fontSize,
        fontFamily: "Gotham",
        fontWeight: FontWeight.bold,
        color: Colors.black,
      );

  static TextStyle pricingAppPricingLabelTextStyle({
    required double fontSize,
  }) =>
      TextStyle(
        fontSize: fontSize,
        fontFamily: "Gotham",
        fontWeight: FontWeight.w400,
        color: Colors.white,
      );

  static TextStyle pricingAppProductNameTextStyle({
    required double fontSize,
  }) =>
      TextStyle(
        fontSize: fontSize,
        fontFamily: "Gotham",
        fontWeight: FontWeight.bold,
        color: Colors.black,
      );
}
