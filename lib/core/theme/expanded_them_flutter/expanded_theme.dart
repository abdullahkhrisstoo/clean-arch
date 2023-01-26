import 'package:clean_arch_templeate/core/colors/app_colors.dart';
import 'package:clean_arch_templeate/core/theme/icon_theme/icon_theme.dart';
import 'package:flutter/material.dart';

class ExpanedTheme {
  static ExpansionTileThemeData dark = const ExpansionTileThemeData(
      textColor: AppColors.whiteColor,
      iconColor: IconThemeTheme.darkIconColor,
      backgroundColor: AppColors.darkBackGround,
      collapsedBackgroundColor: AppColors.blackColor2);
  //
  //
  //
  static ExpansionTileThemeData light = const ExpansionTileThemeData(
      textColor: AppColors.blackColor,
      iconColor: IconThemeTheme.lightIconColor,
      backgroundColor: AppColors.lightBackGround,
      collapsedBackgroundColor: AppColors.whiteColor2);
}
