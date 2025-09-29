import 'package:flutter/material.dart';

import 'app_colors.dart';

ThemeData appTheme() {
  return ThemeData(
    scaffoldBackgroundColor: AppColors.scafoldBackground,
    primaryColor: AppColors.bluePrimary,

    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.scafoldBackground,
      centerTitle: true,
      elevation: 0,
    ),
  );
}
