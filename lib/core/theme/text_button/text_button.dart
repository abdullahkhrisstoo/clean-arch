import 'package:clean_arch_templeate/core/colors/dark_color.dart';
import 'package:clean_arch_templeate/core/colors/light_color.dart';
import 'package:clean_arch_templeate/core/theme/text_styel.dart/light/light_text_styel.dart';
import 'package:flutter/material.dart';

class TextBTN {
  // todo: light
  static TextButtonThemeData? textButtonLight = TextButtonThemeData(
      style: ButtonStyle(
    foregroundColor:
        MaterialStateProperty.all<Color?>(LightColors.primaryColor),
    textStyle: MaterialStateProperty.all<TextStyle?>(TextThemeLight.buttonText),
    padding: MaterialStateProperty.all<EdgeInsetsGeometry?>(
        const EdgeInsets.symmetric(vertical: 3)),
  ));
  // todo: dark
  static TextButtonThemeData? textButtonDark = TextButtonThemeData(
      style: ButtonStyle(
    foregroundColor: MaterialStateProperty.all<Color?>(DarkColors.primaryColor),
    textStyle: MaterialStateProperty.all<TextStyle?>(TextThemeLight.buttonText),
    padding: MaterialStateProperty.all<EdgeInsetsGeometry?>(
        const EdgeInsets.symmetric(vertical: 3)),
  ));
}
