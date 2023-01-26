import 'package:clean_arch_templeate/core/colors/app_colors.dart';
import 'package:flutter/material.dart';

class CheckBoxTheme {
  static Color darkBackgroundColor = AppColors.greenColor;
  static Color darkTrueColor = AppColors.whiteColor;
  //
  //
  static Color lightBackgroundColor = AppColors.primaryColor;
  static Color lightTrueColor = AppColors.whiteColor;
  //
  //
  //
  static CheckboxThemeData dark = CheckboxThemeData(
      fillColor: MaterialStateProperty.all(darkBackgroundColor),
      checkColor: MaterialStateProperty.all(darkTrueColor),
      side: const BorderSide(color: AppColors.greyColor1, width: 1.7),
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(3.0))));
  //
  //
  static CheckboxThemeData light = CheckboxThemeData(
      fillColor: MaterialStateProperty.all(lightBackgroundColor),
      checkColor: MaterialStateProperty.all(lightTrueColor),
      side: const BorderSide(color: AppColors.greyColor1, width: 1.7),
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(3.0))));
}
