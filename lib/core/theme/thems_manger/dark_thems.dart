import 'package:clean_arch_templeate/core/colors/app_colors.dart';
import 'package:clean_arch_templeate/core/fonts/fonts.dart';
import 'package:clean_arch_templeate/core/theme/app_bar_theme/app_bar_theme.dart';
import 'package:clean_arch_templeate/core/theme/card_theme/card_theme.dart';
import 'package:clean_arch_templeate/core/theme/floating_action_button_theme/floating_action_button_theme.dart';
import 'package:clean_arch_templeate/core/theme/list_tile_theme/list_tile_theme.dart';
import 'package:clean_arch_templeate/core/theme/pop_up_theme/popup_theme.dart';
import 'package:clean_arch_templeate/core/theme/text_form_feaild_theme/text_form_feaild_theme.dart';
import 'package:clean_arch_templeate/core/theme/text_styel.dart/dark/dark_text_styel.dart';
import 'package:flutter/material.dart';

import '../bottom_nav_bar_theme/bottom_nav_bar_theme.dart';
import '../check_box_theme/check_box_them.dart';
import '../expanded_them_flutter/expanded_theme.dart';
import '../icon_theme/icon_theme.dart';
import '../radio_button_theme/radio_button_theme.dart';

ThemeData darkTheme = ThemeData(
  //
  //

  listTileTheme: ListTileThemee.dark,
  //
  //
  focusColor: AppColors.primaryColor,
  //
  dialogTheme: PopupTheme.dark,
  //
  expansionTileTheme: ExpanedTheme.dark,
  //
  radioTheme: RadioButtonTheme.dark,
  //
  checkboxTheme: CheckBoxTheme.dark,
  //
  brightness: Brightness.dark,
  //
  dividerColor: AppColors.whiteColor,
  //
  appBarTheme: AppbarTheme.dark,
  //
  cardTheme: CardThemee.dark,
  //
  bottomNavigationBarTheme: BottomNavBarTheme.dark,
  //
  iconTheme: IconThemeTheme.dark,
  //
  primaryColor: AppColors.primaryColor,
  //
  shadowColor: AppColors.greyColor1,
  //
  scaffoldBackgroundColor: ScaffoldColor.darkBackgroundColor,
  //
  errorColor: AppColors.redColor,
  // /
  fontFamily: Fonts.family,
  //
  textTheme: TextThemeDark.textTheme,
  //
  floatingActionButtonTheme: FABTheme.dark,
  //
  inputDecorationTheme: TextFormFeaildTheme.dark,
);
