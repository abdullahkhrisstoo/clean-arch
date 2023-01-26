import 'package:clean_arch_templeate/core/colors/app_colors.dart';
import 'package:flutter/material.dart';

class RadioButtonTheme {
  static Color darkColor = const Color.fromARGB(255, 194, 248, 255);
  static Color lightColor = AppColors.primaryColor;

  static RadioThemeData dark = RadioThemeData(
    fillColor: MaterialStateProperty.all(darkColor),
  );
  //
  //
  static RadioThemeData light = RadioThemeData(
    fillColor: MaterialStateProperty.all(lightColor),
  );
}
