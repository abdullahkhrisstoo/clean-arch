import 'package:clean_arch_templeate/core/colors/dark_color.dart';
import 'package:clean_arch_templeate/core/colors/light_color.dart';
import 'package:clean_arch_templeate/core/theme/text_styel.dart/light/light_text_styel.dart';
import 'package:flutter/material.dart';

class FilledBTNTheme {
  // todo:light
  static FilledButtonThemeData? lightfilledButton = FilledButtonThemeData(
    style: ButtonStyle(
        textStyle:
            MaterialStateProperty.all<TextStyle?>(TextThemeLight.buttonText),
        padding: MaterialStateProperty.all<EdgeInsetsGeometry?>(
            const EdgeInsets.symmetric(vertical: 3)),
        shape: MaterialStateProperty.all<OutlinedBorder?>(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
        backgroundColor:
            MaterialStateProperty.all<Color?>(LightColors.primaryColor),
        foregroundColor:
            MaterialStateProperty.all<Color?>(LightColors.onPrimaryColor)),
  );
  // todo: dark
  static FilledButtonThemeData? darkfilledButton = FilledButtonThemeData(
    style: ButtonStyle(
        textStyle:
            MaterialStateProperty.all<TextStyle?>(TextThemeLight.buttonText),
        padding: MaterialStateProperty.all<EdgeInsetsGeometry?>(
            const EdgeInsets.symmetric(vertical: 3)),
        shape: MaterialStateProperty.all<OutlinedBorder?>(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
        backgroundColor:
            MaterialStateProperty.all<Color?>(DarkColors.primaryColor),
        foregroundColor:
            MaterialStateProperty.all<Color?>(DarkColors.onPrimaryColor)),
  );
}
