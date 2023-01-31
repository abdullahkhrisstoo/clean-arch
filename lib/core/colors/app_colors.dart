import 'package:clean_arch_templeate/core/extensions/color_extension.dart';
import 'package:flutter/material.dart';

class AppColors {
  static const Color darkBackGround = Color.fromARGB(255, 29, 31, 33);
  static const Color lightBackGround = Color.fromARGB(255, 255, 255, 255);

  static const Color blackColor = Color.fromARGB(255, 41, 40, 40);
  static const Color blackColor2 = Color.fromARGB(255, 26, 25, 29);

  static const Color whiteColor = Color.fromARGB(255, 255, 254, 254);
  static const Color whiteColor2 = Color.fromARGB(255, 238, 233, 233);

  static const Color redColor = Color.fromARGB(255, 239, 56, 43);

  static const Color greyColor1 = Color.fromARGB(255, 138, 132, 132);
  static const Color greyColor2 = Color.fromARGB(255, 100, 99, 99);
  static const Color greyColor3 = Color.fromARGB(255, 71, 67, 67);

  static const Color blueColor = Color.fromARGB(255, 159, 202, 255);

  static Color darkPrimaryColor = HexColor.fromHex('007965');
  static Color lightprimaryColor = HexColor.fromHex('97DECE');

  static Color secondaryColor = HexColor.fromHex(
      '4E6C50'); //todo: using for all icon or backGroung icon in the app
  static const Color greenColor = Color.fromARGB(255, 29, 173, 41);
}

class ScaffoldColor {
  static const Color darkBackgroundColor = Color.fromARGB(255, 0, 0, 0);
  static const Color lightBackGroundColor = Color.fromARGB(255, 255, 254, 254);
}
