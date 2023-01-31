import 'package:clean_arch_templeate/core/colors/app_colors.dart';
import 'package:clean_arch_templeate/core/fonts/fonts.dart';
import 'package:flutter/material.dart';

class TextFormFeaildTheme {
  //
  static const Color darkBackgroundColor = Color.fromARGB(255, 103, 108, 101);
  static Color darkErrorBorderColor = AppColors.redColor;
  static Color darkDisabeldBorderColor = AppColors.redColor;
  static Color darkFoucesBorderColor = AppColors.darkPrimaryColor;
  static Color darkEnabeldBorderColor = AppColors.whiteColor;
  static Color darkIconColor = AppColors.whiteColor;
  static Color darkLabelColor = AppColors.whiteColor;
  static Color darkHintColor = AppColors.whiteColor;
  static Color darkCounterColor = AppColors.greyColor1;
  //
  static Color lightBackgroundColor = Color.fromARGB(255, 255, 255, 255);
  static Color lightErrorBorderColor = AppColors.redColor;
  static Color lightDisabeldBorderColor = AppColors.redColor;
  static Color lightFoucesBorderColor = AppColors.darkPrimaryColor;
  static Color lightEnabeldBorderColor = AppColors.secondaryColor;
  static Color lightIconColor = AppColors.darkPrimaryColor;
  static Color lightLabelColor = AppColors.darkPrimaryColor;
  static Color lightHintColor = AppColors.greyColor1;
  static Color lightCounterColor = AppColors.greyColor1;

  static InputDecorationTheme dark = InputDecorationTheme(
    filled: true,
    alignLabelWithHint: false,
    iconColor: darkIconColor,
    fillColor: darkBackgroundColor,

    labelStyle: TextStyle(fontSize: Fonts.s20, color: darkLabelColor),
    // floatingLabelStyle:,
    // helperStyle,
    // helperMaxLines,
    hintStyle: TextStyle(
        fontSize: Fonts.s16, color: darkHintColor, fontWeight: Fonts.bold),
    errorStyle: TextStyle(fontSize: Fonts.s16, color: darkErrorBorderColor),
    errorMaxLines: 4,

    contentPadding:
        const EdgeInsetsDirectional.only(top: 9, start: 8, bottom: 5),

    // prefixStyle,
    prefixIconColor: darkIconColor,
    // suffixStyle,
    suffixIconColor: darkIconColor,
    counterStyle: TextStyle(color: darkCounterColor, fontSize: Fonts.s18),

    // focusColor,
    // hoverColor:,

    errorBorder: UnderlineInputBorder(
        borderSide: BorderSide(width: 2, color: darkErrorBorderColor)),
    //
    disabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(width: 2, color: darkDisabeldBorderColor)),
    //

    focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(width: 2, color: darkFoucesBorderColor)),

    //

    //
    enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(width: 1.3, color: darkEnabeldBorderColor)),

    // constraints,
  );

  static InputDecorationTheme light = InputDecorationTheme(
    filled: true,
    alignLabelWithHint: false,
    iconColor: lightIconColor,
    fillColor: lightBackgroundColor,
    labelStyle: TextStyle(fontSize: Fonts.s20, color: lightLabelColor),
    // floatingLabelStyle:,
    // helperStyle,
    // helperMaxLines,
    hintStyle: TextStyle(
        fontSize: Fonts.s16, color: lightHintColor, fontWeight: Fonts.bold),
    errorStyle: TextStyle(fontSize: Fonts.s16, color: lightErrorBorderColor),
    errorMaxLines: 4,

    contentPadding:
        const EdgeInsetsDirectional.only(top: 9, start: 8, bottom: 5),

    // prefixStyle,
    prefixIconColor: lightIconColor,
    // suffixStyle,
    suffixIconColor: lightIconColor,
    counterStyle: TextStyle(color: lightCounterColor, fontSize: Fonts.s18),

    // focusColor,
    // hoverColor:,

    errorBorder: UnderlineInputBorder(
        borderSide: BorderSide(width: 2, color: lightErrorBorderColor)),
    //
    disabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(width: 2, color: lightDisabeldBorderColor)),
    //

    focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(width: 2, color: lightFoucesBorderColor)),

    //

    //
    enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(width: 1.3, color: lightEnabeldBorderColor)),

    // constraints,
  );
}
