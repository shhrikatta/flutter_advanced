import 'package:flutter/material.dart';
import 'package:flutter_advanced/presentation/resources/font_manager.dart';

TextStyle getTextStyle(
    {required double fontSize,
    String fontFamily = FontConstants.fontFamily,
    required FontWeight fontWeight,
    required Color color}) {
  return TextStyle(
    fontSize: fontSize,
    fontFamily: fontFamily,
    fontWeight: fontWeight,
    color: color,
  );
}

TextStyle getRegularTextStyle(
    {double fontSize = FontSize.s12, required Color color}) {
  return TextStyle(
    fontSize: fontSize,
    fontWeight: FontWeightManager.regular,
    color: color,
  );
}

TextStyle getMediumTextStyle(
    {double fontSize = FontSize.s12, required Color color}) {
  return TextStyle(
    fontSize: fontSize,
    fontWeight: FontWeightManager.medium,
    color: color,
  );
}

TextStyle getLightTextStyle(
    {double fontSize = FontSize.s12, required Color color}) {
  return TextStyle(
    fontSize: fontSize,
    fontWeight: FontWeightManager.light,
    color: color,
  );
}

TextStyle getSemiBoldTextStyle(
    {double fontSize = FontSize.s12, required Color color}) {
  return TextStyle(
    fontSize: fontSize,
    fontWeight: FontWeightManager.semiBold,
    color: color,
  );
}

TextStyle getBoldTextStyle(
    {double fontSize = FontSize.s12, required Color color}) {
  return TextStyle(
    fontSize: fontSize,
    fontWeight: FontWeightManager.bold,
    color: color,
  );
}
