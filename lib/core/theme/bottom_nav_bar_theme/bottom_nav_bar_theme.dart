import 'package:clean_arch_templeate/core/colors/app_colors.dart';
import 'package:clean_arch_templeate/core/fonts/fonts.dart';
import 'package:flutter/material.dart';

class BottomNavBarTheme {
  static const Color darkSelected = Color.fromARGB(255, 255, 254, 254);
  static const Color darkUnSelected = Color.fromARGB(255, 159, 155, 161);
  static const Color darkBackGroundColor = AppColors.darkBackGround;
//
  static final Color lightSelected = AppColors.darkPrimaryColor;
  static const Color lightUnSelected = Color.fromARGB(255, 123, 134, 138);
  static const Color lightBackGroundColor = AppColors.lightBackGround;
  //
  //
  static BottomNavigationBarThemeData light = BottomNavigationBarThemeData(
    elevation: 10,
    backgroundColor: lightBackGroundColor,
    type: BottomNavigationBarType.fixed,
    selectedItemColor: lightSelected,
    unselectedItemColor: lightUnSelected,
    selectedLabelStyle: TextStyle(
      color: lightSelected,
      fontSize: 11,
      fontWeight: Fonts.meduiom,
    ),
    unselectedLabelStyle: const TextStyle(color: lightUnSelected, fontSize: 11),
  );
  //
  //
  static BottomNavigationBarThemeData dark = const BottomNavigationBarThemeData(
    elevation: 10,
    backgroundColor: darkBackGroundColor,
    type: BottomNavigationBarType.fixed,
    selectedItemColor: darkSelected,
    unselectedItemColor: darkUnSelected,
    selectedLabelStyle: TextStyle(
      color: darkSelected,
      fontSize: 11,
      fontWeight: Fonts.meduiom,
    ),
    unselectedLabelStyle: TextStyle(color: darkUnSelected, fontSize: 11),
  );
}
