import 'package:flutter/material.dart';

class ColorManager {
  static Color primary = HexToColor.fromHex("#ED9728");
  static Color darkGrey = HexToColor.fromHex("#525252");
  static Color grey = HexToColor.fromHex("#737477");
  static Color lightGrey = HexToColor.fromHex("#9E9E9E");
  static Color primaryOpacity70 = HexToColor.fromHex("#B3ED9728");
  // new colors
  static Color darkPrimary = HexToColor.fromHex("#d17d11");
  static Color grey1 = HexToColor.fromHex("#707070");
  static Color grey2 = HexToColor.fromHex("#797979");
  static Color white = Colors.white;
  static Color error = HexToColor.fromHex("#e61f34"); // red
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
