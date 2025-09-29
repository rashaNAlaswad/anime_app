import 'package:flutter/material.dart';

import 'app_colors.dart';

ThemeData appTheme() {
  return ThemeData(
    scaffoldBackgroundColor: AppColors.white,
    primaryColor: AppColors.bluePrimary,

    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.white,
      centerTitle: true,
      elevation: 0,
    ),
  );
}
