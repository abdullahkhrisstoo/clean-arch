import 'package:clean_arch_templeate/core/colors/dark_color.dart';
import 'package:clean_arch_templeate/core/colors/light_color.dart';
import 'package:clean_arch_templeate/core/theme/text_styel.dart/light/light_text_styel.dart';
import 'package:flutter/material.dart';

class OutlinedBTN {
  // todo: light
  static OutlinedButtonThemeData? outlinedButtonThemeLight =
      OutlinedButtonThemeData(
          style: ButtonStyle(
              foregroundColor:
                  MaterialStateProperty.all<Color?>(LightColors.primaryColor),
              side: MaterialStateProperty.all<BorderSide?>(
                BorderSide(
                  width: 2.0,
                  color: LightColors.primaryColor,
                ),
              ),
              textStyle: MaterialStateProperty.all<TextStyle?>(
                  TextThemeLight.buttonText),
              padding: MaterialStateProperty.all<EdgeInsetsGeometry?>(
                  const EdgeInsets.symmetric(vertical: 3)),
              shape: MaterialStateProperty.all<OutlinedBorder?>(
                RoundedRectangleBorder(
                  side: BorderSide(width: 2, color: LightColors.primaryColor),
                  borderRadius: BorderRadius.circular(10),
                ),
              )));

  // todo: dark

  static OutlinedButtonThemeData? outlinedButtonThemeDark =
      OutlinedButtonThemeData(
          style: ButtonStyle(
              foregroundColor:
                  MaterialStateProperty.all<Color?>(DarkColors.primaryColor),
              side: MaterialStateProperty.all<BorderSide?>(
                BorderSide(
                  width: 2.0,
                  color: DarkColors.primaryColor,
                ),
              ),
              textStyle: MaterialStateProperty.all<TextStyle?>(
                  TextThemeLight.buttonText),
              padding: MaterialStateProperty.all<EdgeInsetsGeometry?>(
                  const EdgeInsets.symmetric(vertical: 3)),
              shape: MaterialStateProperty.all<OutlinedBorder?>(
                RoundedRectangleBorder(
                  side: BorderSide(width: 2, color: DarkColors.primaryColor),
                  borderRadius: BorderRadius.circular(10),
                ),
              )));
}
