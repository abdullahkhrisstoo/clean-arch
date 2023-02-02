import 'package:clean_arch_templeate/core/colors/dark_color.dart';
import 'package:clean_arch_templeate/core/colors/light_color.dart';
import 'package:flutter/material.dart';

class CheckBoxTheme {
  static CheckboxThemeData dark = CheckboxThemeData(
      fillColor: MaterialStateProperty.all(DarkColors.primaryColor),
      checkColor: MaterialStateProperty.all(DarkColors.onPrimaryColor),
      side: BorderSide(color: LightColors.secondryColor, width: 1.7),
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(3.0))));
  //
  //
  static CheckboxThemeData light = CheckboxThemeData(
      fillColor: MaterialStateProperty.all(LightColors.primaryColor),
      checkColor: MaterialStateProperty.all(LightColors.onPrimaryColor),
      side: BorderSide(color: DarkColors.secondryColor, width: 1.7),
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(3.0))));
}
