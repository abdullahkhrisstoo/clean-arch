import 'package:clean_arch_templeate/core/colors/app_colors.dart';
import 'package:clean_arch_templeate/core/fonts/fonts.dart';
import 'package:flutter/material.dart';

class PopupTheme {
  //
  static const Color darkBackgroundColor = AppColors.blackColor2;
  static const Color darkIconColor = AppColors.whiteColor;
  static const Color darkTitleColor = AppColors.whiteColor;
  static const Color darkBodyColor = AppColors.greyColor1;
  //
  static const Color lightBackgroundColor = AppColors.whiteColor;
  static const Color lightIconColor = AppColors.primaryColor;
  static const Color lightTitleColor = AppColors.primaryColor;
  static const Color lightBodyColor = AppColors.greyColor1;

  //

  static DialogTheme dark = DialogTheme(
    elevation: 0,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    backgroundColor: darkBackgroundColor,
    iconColor: darkIconColor,
    titleTextStyle:  TextStyle(
        color: darkTitleColor, fontSize: Fonts.s18, fontWeight: Fonts.bold),
    contentTextStyle:
         TextStyle(color: darkBodyColor, fontSize: Fonts.s18),
  );
  //
  //
  static DialogTheme light = DialogTheme(
    elevation: 0,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    backgroundColor: lightBackgroundColor,
    iconColor: lightIconColor,
    titleTextStyle:  TextStyle(
        color: lightTitleColor, fontSize: Fonts.s18, fontWeight: Fonts.bold),
    contentTextStyle:  TextStyle(
      color: lightBodyColor,
      fontSize: Fonts.s18,
    ),
  );
}
