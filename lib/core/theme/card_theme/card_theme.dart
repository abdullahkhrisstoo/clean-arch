import 'package:clean_arch_templeate/core/colors/app_colors.dart';
import 'package:flutter/material.dart';

class CardThemee {
  static Color backgroundLight = AppColors.lightBackGround;
  static Color backgroundDark = AppColors.darkBackGround;

  //
  //
  static CardTheme light = CardTheme(
      elevation: 0,
      margin: const EdgeInsets.symmetric(vertical: 4),
      color: backgroundLight);
//
//
  static CardTheme dark = CardTheme(
      elevation: 0,
      margin: const EdgeInsets.symmetric(vertical: 4),
      color: backgroundDark);
}
