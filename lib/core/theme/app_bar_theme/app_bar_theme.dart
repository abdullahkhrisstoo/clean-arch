import 'package:clean_arch_templeate/core/colors/app_colors.dart';
import 'package:clean_arch_templeate/core/theme/text_styel.dart/dark/dark_text_styel.dart';
import 'package:clean_arch_templeate/core/theme/text_styel.dart/light/light_text_styel.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppbarTheme {
  //
  static const Color darkBackgroundColor = AppColors.darkBackGround;
  static const Color lightBackGroundColor = AppColors.lightBackGround;
  //
  static AppBarTheme? light =  AppBarTheme(
      titleTextStyle: TextThemeLight.h3,
      systemOverlayStyle: SystemUiOverlayStyle(
          systemStatusBarContrastEnforced: true,
          statusBarBrightness: Brightness.dark,
          systemNavigationBarIconBrightness: Brightness.dark,
          statusBarIconBrightness: Brightness.dark,
          statusBarColor: lightBackGroundColor),
      backgroundColor: lightBackGroundColor,
      elevation: 0,
      centerTitle: false,
      iconTheme: IconThemeData(color: AppColors.secondaryColor, size: 30));
//
//
  static AppBarTheme? dark =  AppBarTheme(
      titleTextStyle: TextThemeDark.h3,
      systemOverlayStyle: SystemUiOverlayStyle(
          statusBarBrightness: Brightness.light,
          systemNavigationBarIconBrightness: Brightness.light,
          statusBarIconBrightness: Brightness.light,
          statusBarColor: darkBackgroundColor),
      backgroundColor: darkBackgroundColor,
      elevation: 0,
      centerTitle: false,
      iconTheme: IconThemeData(color: AppColors.secondaryColor, size: 30));
}
