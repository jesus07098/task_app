import 'package:flutter/material.dart';

import 'app_sizes.dart';

class AppFont {
  // Font Families
  static String? fontFamily = 'DM-Sans';

  //Font Weight
  static const FontWeight weightLight = FontWeight.w300;
  static const FontWeight weightRegular = FontWeight.w400;
  static const FontWeight weightMedium = FontWeight.w500;
  static const FontWeight weightSemiBold = FontWeight.w600;
  static const FontWeight weightBold = FontWeight.w700;

  //Variedad de Font Styles
  static TextStyle getTextStyle(
      double fontSize,
      String fontFamily,
      FontWeight fontWeight,
      Color? color,
      double? letterSpacing,
      double? height,
      
      TextOverflow? overflow) {
    return TextStyle(
        overflow: overflow,
        fontSize: fontSize,
        fontFamily: fontFamily,
        color: color,
        letterSpacing: letterSpacing,
        fontWeight: fontWeight,
        height: height);
  }

  static TextStyle getRegularStyle(
      {double fontSize = AppSizes.s12,
      Color? color,
      double? letterSpacing,
      double? height,
      FontWeight fontWeight = AppFont.weightRegular,
      TextOverflow? overflow}) {
    return getTextStyle(
      fontSize,
      AppFont.fontFamily!,
      fontWeight,
      color,
      letterSpacing,
      height,
      overflow,
    );
  }

  static TextStyle getLightStyle(
      {double fontSize = AppSizes.s12,
      Color? color,
      double? letterSpacing,
      double? height,
      TextOverflow? overflow}) {
    return getTextStyle(fontSize, AppFont.fontFamily!, AppFont.weightLight,
        color, letterSpacing, height, overflow);
  }

  static TextStyle getBoldStyle(
      {double fontSize = AppSizes.s12,
      Color? color,
      double? letterSpacing,
      double? height,
      TextOverflow? overflow}) {
    return getTextStyle(fontSize, AppFont.fontFamily!, AppFont.weightBold,
        color, letterSpacing, height, overflow);
  }

  static TextStyle getSemiBoldStyle(
      {double fontSize = AppSizes.s12,
      Color? color,
      double? letterSpacing,
      double? height,
      TextOverflow? overflow}) {
    return getTextStyle(fontSize, AppFont.fontFamily!, AppFont.weightSemiBold,
        color, letterSpacing, height, overflow);
  }

  static TextStyle getMediumStyle(
      {double fontSize = AppSizes.s12,
      Color? color,
      double? letterSpacing,
      double? height,
      TextOverflow? overflow}) {
    return getTextStyle(fontSize, AppFont.fontFamily!, AppFont.weightMedium,
        color, letterSpacing, height, overflow);
  }
}
