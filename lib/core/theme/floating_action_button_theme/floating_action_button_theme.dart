import 'package:clean_arch_templeate/core/colors/dark_color.dart';
import 'package:clean_arch_templeate/core/colors/light_color.dart';
import 'package:flutter/material.dart';

class FABTheme {
// todo light
  static FloatingActionButtonThemeData light = FloatingActionButtonThemeData(
    backgroundColor: LightColors.secondryContainerColor,
    iconSize: 30,
    foregroundColor: LightColors.onSecondryContainerColor,
    elevation: 3,
  );

// todo dark

  static FloatingActionButtonThemeData dark = FloatingActionButtonThemeData(
    backgroundColor: DarkColors.secondryContainerColor,
    iconSize: 30,
    foregroundColor: DarkColors.onSecondryContainerColor,
    elevation: 3,
  );
  //
  //
}
