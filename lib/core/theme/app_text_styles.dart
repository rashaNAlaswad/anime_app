import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';
import 'app_font_weight.dart';

class AppTextStyles {
  AppTextStyles._();

  static TextStyle font14whiteSemiBold = GoogleFonts.raleway(
    fontSize: 14.sp,
    fontWeight: AppFontWeight.semiBold,
    color: AppColors.white,
  );

  static TextStyle font24DarkBlueBold = GoogleFonts.raleway(
    fontSize: 24.sp,
    fontWeight: AppFontWeight.bold,
    color: AppColors.darkBlue,
  );

  static TextStyle font14darkBlueBold = GoogleFonts.raleway(
    fontSize: 14.sp,
    fontWeight: AppFontWeight.bold,
    color: AppColors.darkBlue,
  );

  static TextStyle font12greyMedium = GoogleFonts.raleway(
    fontSize: 12.sp,
    fontWeight: AppFontWeight.medium,
    color: AppColors.grey,
  );

  static TextStyle font24blackBold = GoogleFonts.raleway(
    fontSize: 24.sp,
    fontWeight: AppFontWeight.bold,
    color: AppColors.black,
  );

  static TextStyle font16blackSemiBold = GoogleFonts.raleway(
    fontSize: 16.sp,
    fontWeight: AppFontWeight.semiBold,
    color: AppColors.black,
  );

  static TextStyle font15whiteSemiBold = GoogleFonts.raleway(
    fontSize: 15.sp,
    fontWeight: AppFontWeight.semiBold,
    color: AppColors.white,
  );

  static TextStyle font13whiteMedium = GoogleFonts.raleway(
    fontSize: 13.sp,
    fontWeight: AppFontWeight.medium,
    color: AppColors.white,
  );
}
