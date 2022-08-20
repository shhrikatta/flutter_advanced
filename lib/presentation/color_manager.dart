import 'package:flutter/material.dart';

class ColorManager {
  static Color primary = HexToColor.fromHex("#ED9728");
  static Color darkGrey = HexToColor.fromHex("#525252");
  static Color grey = HexToColor.fromHex("#737477");
  static Color lightGrey = HexToColor.fromHex("#9E9E9E");
}

extension HexToColor on Color {
  static Color fromHex(String hexColorString) {
    hexColorString = hexColorString.replaceAll('#', '');

    if (hexColorString.length == 6) {
      hexColorString = "FF$hexColorString";
    }

    return Color(int.parse(hexColorString));
  }
}