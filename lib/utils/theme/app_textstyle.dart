import 'package:flutter/material.dart';

class AppTextStyle {
  static TextStyle common(
    double? fontSize,
    FontWeight? fontWeight,
    Color? color, [
    TextDecoration? decoration = TextDecoration.none,
    double? height = 1.25,
    String? fontFamily,
    FontStyle? fontStyle,
  ]) {
    return TextStyle(
      color: color ?? Colors.black,
      fontWeight: fontWeight,
      fontSize: fontSize,
      decoration: decoration,
      height: height,
      fontFamily: fontFamily,
      fontStyle: fontStyle,
    );
  }

  static TextStyle t12w700(
      [Color? color,
      double? height,
      String? fontFamily,
      FontStyle? fontStyle]) {
    return common(
        12, FontWeight.w700, color, null, height, fontFamily, fontStyle);
  }
}
