import 'package:clean_arch_templeate/core/colors/dark_color.dart';
import 'package:clean_arch_templeate/core/colors/light_color.dart';
import 'package:flutter/material.dart';

class CardThemee {

  static CardTheme light = CardTheme(
      elevation: 0,
      margin: const EdgeInsets.symmetric(vertical: 4),
      color: LightColors.surfaceColor);

  static CardTheme dark = CardTheme(
      elevation: 0,
      margin: const EdgeInsets.symmetric(vertical: 4),
      color: DarkColors.surfaceColor);
}
