import 'package:clean_arch_templeate/core/colors/app_colors.dart';
import 'package:flutter/material.dart';

class FABTheme {
  static Color lightBackgroundColor = AppColors.secondaryColor;
  static Color lightforegroundColor = AppColors.blackColor;
  static Color darkBackgroundColor = AppColors.primaryColor;
  static Color darkforegroundColor = AppColors.whiteColor;
//
//
//
  static FloatingActionButtonThemeData light = FloatingActionButtonThemeData(
      backgroundColor: lightBackgroundColor,
      iconSize: 30,
      foregroundColor: lightforegroundColor);
  //
  //
  //

  static FloatingActionButtonThemeData dark = FloatingActionButtonThemeData(
      backgroundColor: darkBackgroundColor,
      iconSize: 30,
      foregroundColor: darkforegroundColor);
  //
  //
}
