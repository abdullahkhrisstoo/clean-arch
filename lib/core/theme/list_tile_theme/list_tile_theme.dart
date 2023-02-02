import 'package:clean_arch_templeate/core/theme/icon_theme/icon_theme.dart';
import 'package:flutter/material.dart';

class ListTileThemee {
  //
  //
  static ListTileThemeData light = ListTileThemeData(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
    minVerticalPadding: 0,
    // iconColor: IconThemeTheme.lightIconColor,
    style: ListTileStyle.list,
  );
  //
  //
  static ListTileThemeData dark = ListTileThemeData(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
    minVerticalPadding: 0,
    // iconColor: IconThemeTheme.darkIconColor,
    style: ListTileStyle.list,
  );
}
