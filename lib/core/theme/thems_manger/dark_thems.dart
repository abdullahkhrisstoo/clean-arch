import 'package:clean_arch_templeate/core/colors/dark_color.dart';
import 'package:clean_arch_templeate/core/colors/light_color.dart';
import 'package:clean_arch_templeate/core/fonts/fonts.dart';
import 'package:clean_arch_templeate/core/theme/app_bar_theme/app_bar_theme.dart';
import 'package:clean_arch_templeate/core/theme/card_theme/card_theme.dart';
import 'package:clean_arch_templeate/core/theme/filled_button_theme/fiiled_button_theme.dart';
import 'package:clean_arch_templeate/core/theme/floating_action_button_theme/floating_action_button_theme.dart';
import 'package:clean_arch_templeate/core/theme/list_tile_theme/list_tile_theme.dart';
import 'package:clean_arch_templeate/core/theme/outlined_button.dart/outlined_button.dart';
import 'package:clean_arch_templeate/core/theme/pop_up_theme/popup_theme.dart';
import 'package:clean_arch_templeate/core/theme/slider/slider.dart';
import 'package:clean_arch_templeate/core/theme/text_button/text_button.dart';
import 'package:clean_arch_templeate/core/theme/text_form_feaild_theme/text_form_feaild_theme.dart';
import 'package:clean_arch_templeate/core/theme/text_styel.dart/dark/dark_text_styel.dart';
import 'package:flutter/material.dart';
import '../bottom_nav_bar_theme/bottom_nav_bar_theme.dart';
import '../check_box_theme/check_box_them.dart';
import '../expanded_them_flutter/expanded_theme.dart';
import '../icon_theme/icon_theme.dart';
import '../radio_button_theme/radio_button_theme.dart';

ThemeData darkTheme = ThemeData(
  primaryColorLight: DarkColors.primaryColor,
  primaryColorDark: DarkColors.onPrimaryColor,
  secondaryHeaderColor: DarkColors.secondryColor,
  useMaterial3: true, //todo
  filledButtonTheme: FilledBTNTheme.darkfilledButton, //todo
  outlinedButtonTheme: OutlinedBTN.outlinedButtonThemeDark, //todo
  textButtonTheme: TextBTN.textButtonDark, //todo
  fontFamily: Fonts.family, //todo
  textTheme: TextThemeDark.textTheme, //todo
  checkboxTheme: CheckBoxTheme.dark, //todo
  radioTheme: RadioButtonTheme.dark, //todo
  brightness: Brightness.dark, //todo
  sliderTheme: SliderTh.sliderThemeDark, //todo
  floatingActionButtonTheme: FABTheme.dark, //todo
  appBarTheme: AppbarTheme.dark, //todo
  navigationBarTheme: BottomNavBarTheme.dark, //todo
  dividerColor: DarkColors.outlineColor, //todo
  iconTheme: IconThemeTheme.dark, //todo
  shadowColor: DarkColors.outlineColor, //todo
  scaffoldBackgroundColor: DarkColors.backgroundColor, //todo
  primaryColor: DarkColors.primaryColor, //todo
  // colo

  //
  //
  // filledButtonTheme: ,
  listTileTheme: ListTileThemee.dark,
  //
  //
  // focusColor: AppColors.darkPrimaryColor,
  //
  dialogTheme: PopupTheme.dark,
  //
  expansionTileTheme: ExpanedTheme.dark,
  //
  //
  //
  cardTheme: CardThemee.dark,
  //
  //
  //
  //
  //
  //

  //
  inputDecorationTheme: TextFormFeaildTheme.dark,

  colorScheme: ColorScheme(
      background: DarkColors.primaryColor,
      brightness: Brightness.dark,
      error: DarkColors.primaryColor,
      onBackground: DarkColors.onBackgroundColor,
      onError: DarkColors.onPrimaryColor,
      onPrimary: DarkColors.onPrimaryColor,
      onSecondary: DarkColors.onSecondryColor,
      onSurface: DarkColors.onSurfaceColor,
      primary: DarkColors.primaryColor,
      secondary: DarkColors.secondryColor,
      surface: DarkColors.surfaceColor),
);
