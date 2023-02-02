import 'package:clean_arch_templeate/core/colors/dark_color.dart';
import 'package:clean_arch_templeate/core/colors/light_color.dart';
import 'package:flutter/material.dart';

class RadioButtonTheme {
  static RadioThemeData dark = RadioThemeData(
      fillColor: MaterialStateProperty.all(DarkColors.primaryColor));
  static RadioThemeData light = RadioThemeData(
      fillColor: MaterialStateProperty.all(LightColors.primaryColor));
}
