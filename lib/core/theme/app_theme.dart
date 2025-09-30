import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';

ThemeData appTheme() {
  return ThemeData(
    scaffoldBackgroundColor: AppColors.scaffoldBackground,
    primaryColor: AppColors.bluePrimary,
    fontFamily: GoogleFonts.raleway().fontFamily,

    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.scaffoldBackground,
      centerTitle: true,
      elevation: 0,
    ),
  );
}
