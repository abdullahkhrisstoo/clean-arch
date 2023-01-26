import 'package:clean_arch_templeate/core/colors/app_colors.dart';
import 'package:flutter/material.dart';

class ListTileTheme {
  ListTileThemeData listTileTheme = const ListTileThemeData(
    minVerticalPadding: 0,
    contentPadding: EdgeInsets.zero,
    iconColor: AppColors.primaryColor,
    style: ListTileStyle.list,
  );
}
