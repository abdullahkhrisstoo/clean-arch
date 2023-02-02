import 'package:clean_arch_templeate/core/colors/dark_color.dart';
import 'package:clean_arch_templeate/core/colors/light_color.dart';
import 'package:clean_arch_templeate/core/fonts/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppbarTheme {
  //
  //todo: light
  static AppBarTheme? light = AppBarTheme(
      foregroundColor: LightColors.onSurfaceVarianrColor,
      titleTextStyle: TextStyle(
          fontSize: Fonts.h3,
          fontFamily: Fonts.family,
          color: LightColors.onSurfaceVarianrColor),
      systemOverlayStyle: SystemUiOverlayStyle(
          systemStatusBarContrastEnforced: true,
          statusBarBrightness: Brightness.dark,
          systemNavigationBarIconBrightness: Brightness.dark,
          statusBarIconBrightness: Brightness.dark,
          statusBarColor: LightColors.surfaceColor),
      backgroundColor: LightColors.surfaceVarianrColor,
      elevation: 0,
      centerTitle: false,
      iconTheme:
          IconThemeData(color: LightColors.onSurfaceVarianrColor, size: 30));
//
//todo dark
  static AppBarTheme? dark = AppBarTheme(
      foregroundColor: DarkColors.onSurfaceVarianrColor,
      titleTextStyle: TextStyle(
          fontSize: Fonts.h3,
          fontFamily: Fonts.family,
          color: DarkColors.onSurfaceVarianrColor),
      // titleTextStyle: TextThemeDark.h3,
      systemOverlayStyle: const SystemUiOverlayStyle(
        systemStatusBarContrastEnforced: true,
        statusBarBrightness: Brightness.light,
        systemNavigationBarIconBrightness: Brightness.light,
        statusBarIconBrightness: Brightness.dark,
        // statusBarColor: DarkColors.secondryColor,
      ),
      backgroundColor: DarkColors.surfaceVarianrColor,
      elevation: 0,
      centerTitle: false,
      iconTheme:
          IconThemeData(color: DarkColors.onSurfaceVarianrColor, size: 30));
}
