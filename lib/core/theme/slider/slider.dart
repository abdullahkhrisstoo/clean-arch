import 'package:clean_arch_templeate/core/colors/dark_color.dart';
import 'package:clean_arch_templeate/core/colors/light_color.dart';
import 'package:flutter/material.dart';

class SliderTh {
  // todo: light
  static SliderThemeData? sliderThemeLight = SliderThemeData(
    activeTickMarkColor: LightColors.primaryColor,
    inactiveTickMarkColor: LightColors.onPrimaryColor,
    activeTrackColor: LightColors.primaryColor,
    inactiveTrackColor: LightColors.onPrimaryColor,
    thumbColor: LightColors.primaryColor,
    valueIndicatorColor: LightColors.primaryColor,
  );
  // todo: dark
  static SliderThemeData? sliderThemeDark = SliderThemeData(
    activeTickMarkColor: DarkColors.primaryColor,
    inactiveTickMarkColor: DarkColors.onPrimaryColor,
    activeTrackColor: DarkColors.primaryColor,
    inactiveTrackColor: DarkColors.onPrimaryColor,
    thumbColor: DarkColors.primaryColor,
    valueIndicatorColor: DarkColors.primaryColor,
  );
}
