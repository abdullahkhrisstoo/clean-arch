import 'package:clean_arch_templeate/core/colors/app_colors.dart';
import 'package:clean_arch_templeate/core/fonts/fonts.dart';
import 'package:flutter/material.dart';

class TextThemeDark {
  static final TextTheme textTheme = TextTheme(
    
      displayLarge: _h1,
      displayMedium: _h2,
      displaySmall: h3,
      headlineMedium: _h4,
      headlineSmall: _h5,
      titleLarge: _h6,
      titleMedium: _subtitle1,
      titleSmall: _subtitle2,
      bodyLarge: _bodyText1,
      bodyMedium: _bodyText2);

  static final _h1 = TextStyle(
      color: AppColors.whiteColor, fontSize: Fonts.h1, fontWeight: Fonts.bold);
  static final _h2 = TextStyle(
      color: AppColors.whiteColor,
      fontSize: Fonts.h2,
      fontWeight: Fonts.smeiBold);
  static final h3 = TextStyle(
      color: AppColors.whiteColor, fontSize: Fonts.h3, fontWeight: Fonts.bold);
  static final _h4 = TextStyle(
      color: AppColors.whiteColor,
      fontSize: Fonts.h4,
      fontWeight: Fonts.meduiom);
  static final _h5 = TextStyle(
      color: AppColors.whiteColor, fontSize: Fonts.h5, fontWeight: Fonts.light);
  static final _h6 = TextStyle(
      color: AppColors.whiteColor,
      fontSize: Fonts.h6,
      fontWeight: Fonts.meduiom);
  static final _subtitle1 = TextStyle(
      color: AppColors.greyColor1, fontSize: Fonts.s16, fontWeight: Fonts.bold);
  static final _subtitle2 = TextStyle(
      color: AppColors.greyColor1,
      fontSize: Fonts.s18,
      fontWeight: Fonts.meduiom);
  static final _bodyText1 = TextStyle(
      color: AppColors.greyColor1,
      fontSize: Fonts.s24,
      fontWeight: Fonts.meduiom);
  static final _bodyText2 = TextStyle(
      color: AppColors.greyColor1, fontSize: Fonts.s20, fontWeight: Fonts.bold);
}
