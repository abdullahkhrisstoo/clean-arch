import 'package:flutter/material.dart';

class CardThemee {
  static Color backgroundLight = const Color.fromARGB(255, 231, 231, 231);
  static Color backgroundDark = const Color.fromARGB(255, 41, 44, 42);

  //
  //
  static CardTheme light = CardTheme(
      elevation: 0,
      margin: const EdgeInsets.symmetric(vertical: 4),
      color: backgroundLight);
//
//
  static CardTheme dark = CardTheme(
      elevation: 0,
      margin: const EdgeInsets.symmetric(vertical: 4),
      color: backgroundDark);
}
