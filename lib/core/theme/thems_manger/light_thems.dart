import 'package:clean_arch_templeate/core/fonts/fonts.dart';
import 'package:clean_arch_templeate/core/theme/text_styel.dart/light/light_text_styel.dart';
import 'package:flutter/material.dart';
import 'package:clean_arch_templeate/core/colors/app_colors.dart';
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
    //
    //
    // elevatedButtonTheme: ,
    // filledButtonTheme: const FilledButtonThemeData(
    //   style: ButtonStyle(),
    // ),
    //
    //
    //
    listTileTheme: ListTileThemee.light,
    focusColor: AppColors.darkPrimaryColor,
    //
    dialogTheme: PopupTheme.light,
    //
    expansionTileTheme: ExpanedTheme.light,
    //
    radioTheme: RadioButtonTheme.light,
    //
    checkboxTheme: CheckBoxTheme.light,
    //
    dividerColor: AppColors.blackColor,
    //
    appBarTheme: AppbarTheme.light,
    //
    cardTheme: CardThemee.light,
    //
    bottomNavigationBarTheme: BottomNavBarTheme.light,
    //
    iconTheme: IconThemeTheme.light,
    // /
    primaryColor: AppColors.darkPrimaryColor,
    //
    shadowColor: AppColors.greyColor1,
    // /
    scaffoldBackgroundColor: ScaffoldColor.lightBackGroundColor,
    // /
    textTheme: TextThemeLight.textTheme,
    //

    floatingActionButtonTheme: FABTheme.light,

    // colorScheme:
    //     ColorScheme.fromSwatch().copyWith(secondary: AppColors.blackColor2),
    fontFamily: Fonts.family,
    inputDecorationTheme: TextFormFeaildTheme.light);
