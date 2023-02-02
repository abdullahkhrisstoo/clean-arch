import 'package:clean_arch_templeate/core/colors/light_color.dart';
import 'package:clean_arch_templeate/core/fonts/fonts.dart';
import 'package:clean_arch_templeate/core/theme/filled_button_theme/fiiled_button_theme.dart';
import 'package:clean_arch_templeate/core/theme/outlined_button.dart/outlined_button.dart';
import 'package:clean_arch_templeate/core/theme/slider/slider.dart';
import 'package:clean_arch_templeate/core/theme/text_button/text_button.dart';
import 'package:clean_arch_templeate/core/theme/text_styel.dart/light/light_text_styel.dart';
import 'package:flutter/material.dart';
import 'package:clean_arch_templeate/core/theme/app_bar_theme/app_bar_theme.dart';
import 'package:clean_arch_templeate/core/theme/card_theme/card_theme.dart';
import 'package:clean_arch_templeate/core/theme/floating_action_button_theme/floating_action_button_theme.dart';
import 'package:clean_arch_templeate/core/theme/list_tile_theme/list_tile_theme.dart';
import 'package:clean_arch_templeate/core/theme/pop_up_theme/popup_theme.dart';
import 'package:clean_arch_templeate/core/theme/text_form_feaild_theme/text_form_feaild_theme.dart';

import '../bottom_nav_bar_theme/bottom_nav_bar_theme.dart';
import '../check_box_theme/check_box_them.dart';
import '../expanded_them_flutter/expanded_theme.dart';
import '../icon_theme/icon_theme.dart';
import '../radio_button_theme/radio_button_theme.dart';

ThemeData lightTheme = ThemeData(
  indicatorColor: LightColors.primaryColor,
  primaryColorLight: LightColors.primaryColor,
  primaryColorDark: LightColors.onPrimaryColor,
  secondaryHeaderColor: LightColors.secondryColor,
  useMaterial3: true, //todo
  filledButtonTheme: FilledBTNTheme.lightfilledButton, //todo
  outlinedButtonTheme: OutlinedBTN.outlinedButtonThemeLight, //todo
  textButtonTheme: TextBTN.textButtonLight, //todo
  textTheme: TextThemeLight.textTheme, //todo
  fontFamily: Fonts.family, //todo
  checkboxTheme: CheckBoxTheme.light, //todo
  radioTheme: RadioButtonTheme.light, //todo
  sliderTheme: SliderTh.sliderThemeLight, //todo
  floatingActionButtonTheme: FABTheme.light, //todo
  appBarTheme: AppbarTheme.light, //todo
  navigationBarTheme: BottomNavBarTheme.light, //todo
  dividerColor: LightColors.outlineColor, //todo
  iconTheme: IconThemeTheme.light, //todo
  shadowColor: LightColors.outlineColor, //todo
  scaffoldBackgroundColor: LightColors.backgroundColor, //todo
  primaryColor: LightColors.primaryColor, //todo

  listTileTheme: ListTileThemee.light,
  // focusColor: AppColors.darkPrimaryColor,
  //
  dialogTheme: PopupTheme.light,
  //
  expansionTileTheme: ExpanedTheme.light,
  //
  //

  //
  //
  //
  cardTheme: CardThemee.light,
  //
  //
  // /
  //
  // /
  // /

  //

  // colorScheme:
  //     ColorScheme.fromSwatch().copyWith(secondary: AppColors.blackColor2),

  inputDecorationTheme: TextFormFeaildTheme.light,
  colorScheme: ColorScheme(
      background: LightColors.primaryColor,
      brightness: Brightness.light,
      error: LightColors.primaryColor,
      onBackground: LightColors.onBackgroundColor,
      onError: LightColors.onPrimaryColor,
      onPrimary: LightColors.onPrimaryColor,
      onSecondary: LightColors.onSecondryColor,
      onSurface: LightColors.onSurfaceColor,
      primary: LightColors.primaryColor,
      secondary: LightColors.secondryColor,
      surface: LightColors.surfaceColor),
);
