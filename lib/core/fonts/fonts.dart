
import 'package:flutter/cupertino.dart';

class Fonts {
  static const String family = 'ElMessiri';

  static const FontWeight bold = FontWeight.bold;

  static const FontWeight smeiBold = FontWeight.w600;

  static const FontWeight meduiom = FontWeight.w500;

  static const FontWeight light = FontWeight.w400;

  static final double s16 = getDeviceType(16.0);
  static final double s17 = getDeviceType(17.0);
  static final double s18 = getDeviceType(18.0);
  static final double s20 = getDeviceType(20.0);
  static final double s24 = getDeviceType(24.0);
  static final double s26 = getDeviceType(26.0);
  static final double s28 = getDeviceType(28.0);
  static final double s30 = getDeviceType(30.0);
  static final double s40 = getDeviceType(40.0);

  static final double h1 = getDeviceType(30.0);
  static final double h2 = getDeviceType(27.0);
  static final double h3 = getDeviceType(23.0);
  static final double h4 = getDeviceType(20.0);
  static final double h5 = getDeviceType(17.0);
  static final double h6 = getDeviceType(14.0);

  static const double tabletDeviceIncreace = 6;

  static double getDeviceType(double size) {
    final data = MediaQueryData.fromWindow(WidgetsBinding.instance.window);
    if (data.size.shortestSide < 600) {
      // todo: phone
      return size;
    } else {
      // todo: tablet
      return size + 6;
    }
  }
}
