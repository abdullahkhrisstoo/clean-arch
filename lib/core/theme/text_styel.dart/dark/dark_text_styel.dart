import 'package:clean_arch_templeate/core/colors/dark_color.dart';
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
      bodyMedium: _bodyText2,
      labelLarge: buttonText);

  static final _h1 = TextStyle(
      color: DarkColors.onSurfaceColor,
      fontSize: Fonts.h1,
      fontWeight: Fonts.bold);
  static final _h2 = TextStyle(
      color: DarkColors.onSurfaceColor,
      fontSize: Fonts.h2,
      fontWeight: Fonts.smeiBold);
  static final h3 = TextStyle(
      color: DarkColors.onSurfaceColor,
      fontSize: Fonts.h3,
      fontWeight: Fonts.bold);
  static final _h4 = TextStyle(
      color: DarkColors.onSurfaceColor,
      fontSize: Fonts.h4,
      fontWeight: Fonts.meduiom);
  static final _h5 = TextStyle(
      color: DarkColors.onSurfaceColor,
      fontSize: Fonts.h5,
      fontWeight: Fonts.light);
  static final _h6 = TextStyle(
      color: DarkColors.onSurfaceColor,
      fontSize: Fonts.h6,
      fontWeight: Fonts.meduiom);

  static final _subtitle1 = TextStyle(
      color: DarkColors.onSurfaceVarianrColor,
      fontSize: Fonts.s16,
      fontWeight: Fonts.bold);
  static final _subtitle2 = TextStyle(
      color: DarkColors.onSurfaceVarianrColor,
      fontSize: Fonts.s18,
      fontWeight: Fonts.meduiom);
  static final _bodyText1 = TextStyle(
      color: DarkColors.onSurfaceVarianrColor,
      fontSize: Fonts.s24,
      fontWeight: Fonts.meduiom);
  static final _bodyText2 = TextStyle(
      color: DarkColors.onSurfaceVarianrColor,
      fontSize: Fonts.s20,
      fontWeight: Fonts.bold);
  static final buttonText =
      TextStyle(fontSize: Fonts.h3, fontWeight: Fonts.bold, color: null);
}
