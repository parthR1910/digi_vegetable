import 'package:flutter/material.dart';

class AppColors {
  AppColors._privateConstructor();

  static AppColors instance = AppColors._privateConstructor();

  static const Color primary = Color(0xffB12A1C);
  static const Color textFieldBorderColor = Color(0xffe8e8e8);
  static const Color textFieldBackgroundColor = Color(0xffF6F6F6);
  static const Color hintTextColor = Color(0xffBDBDBD);
  static const Color textGreyColor = Color(0xff666666);
  static const Color subTextGreyColor = Color(0xffABABAB);
  static const Color tabBorderColorEDEDED = Color(0xffEDEDED);
  static const Color textLightBlueColor = Color(0xff3F434A);

  static const Color white = Color(0xffFFFFFF);
  static const Color red = Color(0xffFF0000);
  static const Color black = Color(0xff000000);
  static const Color transparent = Colors.transparent;
  static const Color homeSummary = Color(0xff404E7E);

  Color textMainFontByTheme() => primary;
}
