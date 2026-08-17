import 'package:flutter/material.dart';
import 'package:news/utils/app_color.dart';

class AppTheme {
  static final ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: AppColor.whiteColor,
    cardColor:AppColor.darkColor,
  );

  static final ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: AppColor.darkColor,
    cardColor:AppColor.whiteColor,
  );
}