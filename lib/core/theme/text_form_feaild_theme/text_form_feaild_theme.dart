import 'package:clean_arch_templeate/core/colors/dark_color.dart';
import 'package:clean_arch_templeate/core/fonts/fonts.dart';
import 'package:flutter/material.dart';

class TextFormFeaildTheme {
  static InputDecorationTheme dark = InputDecorationTheme(
      errorBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: DarkColors.redColor)),
      labelStyle:
          TextStyle(fontSize: Fonts.s20, color: DarkColors.onSecondryColor),
      hintStyle: TextStyle(fontSize: Fonts.s16),
      errorStyle: const TextStyle(
        color: DarkColors.redColor,
      ));

  static InputDecorationTheme light = InputDecorationTheme(
    errorStyle: const TextStyle(
      color: DarkColors.redColor,
    ),
    errorBorder: const UnderlineInputBorder(
        borderSide: BorderSide(color: DarkColors.redColor)),
    labelStyle: TextStyle(fontSize: Fonts.s20),
    hintStyle: TextStyle(fontSize: Fonts.s16),
  );
}
