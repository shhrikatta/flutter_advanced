import 'package:flutter/material.dart';
import 'package:flutter_advanced/presentation/color_manager.dart';
import 'package:flutter_advanced/presentation/font_manager.dart';
import 'package:flutter_advanced/presentation/style_manager.dart';
import 'package:flutter_advanced/presentation/value_manager.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
    // main app colors
    primaryColor: ColorManager.primary,
    primaryColorDark: ColorManager.darkPrimary,
    primaryColorLight: ColorManager.primary,
    disabledColor: ColorManager.grey1,
    colorScheme: ColorScheme.fromSwatch().copyWith(
      secondary: ColorManager.grey,
    ),
    // ripple color
    splashColor: ColorManager.primaryOpacity70,
    cardTheme: CardTheme(
        color: ColorManager.white,
        shadowColor: ColorManager.grey,
        elevation: AppSize.s12),
    appBarTheme: AppBarTheme(
      centerTitle: true,
      color: ColorManager.primary,
      elevation: AppSize.s4,
      shadowColor: ColorManager.primaryOpacity70,
      titleTextStyle: getRegularTextStyle(
        color: ColorManager.white,
        fontSize: FontSize.s16,
      ),
    ),
    buttonTheme: ButtonThemeData(
      shape: const StadiumBorder(),
      disabledColor: ColorManager.grey1,
      buttonColor: ColorManager.primary,
      splashColor: ColorManager.primaryOpacity70,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        textStyle: getRegularTextStyle(color: ColorManager.white),
        primary: ColorManager.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSize.s12),
        ),
      ),
    ),
    textTheme: TextTheme(
      headline1: getSemiBoldTextStyle(
          color: ColorManager.darkGrey, fontSize: FontSize.s16),
      subtitle1: getMediumTextStyle(
          color: ColorManager.lightGrey, fontSize: FontSize.s14),
      caption: getRegularTextStyle(color: ColorManager.grey1),
      bodyText1: getRegularTextStyle(color: ColorManager.grey),
    ),
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: const EdgeInsets.all(AppPadding.p8),
      hintStyle: getRegularTextStyle(color: ColorManager.grey1),
      labelStyle: getMediumTextStyle(color: ColorManager.darkGrey),
      errorStyle: getRegularTextStyle(color: ColorManager.error),
      enabledBorder: OutlineInputBorder(
        borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8)),
        borderSide: BorderSide(color: ColorManager.grey, width: AppSize.s1_5),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8)),
        borderSide:
            BorderSide(color: ColorManager.primary, width: AppSize.s1_5),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8)),
        borderSide: BorderSide(color: ColorManager.error, width: AppSize.s1_5),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8)),
        borderSide:
            BorderSide(color: ColorManager.primary, width: AppSize.s1_5),
      ),
    ),
  );
}
