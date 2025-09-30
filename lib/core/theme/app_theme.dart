import 'package:flutter/material.dart';

import 'app_colors.dart';

ThemeData appTheme() {
  return ThemeData(
    scaffoldBackgroundColor: AppColors.scaffoldBackground,
    primaryColor: AppColors.bluePrimary,

    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.scaffoldBackground,
      centerTitle: true,
      elevation: 0,
    ),
  );
}
