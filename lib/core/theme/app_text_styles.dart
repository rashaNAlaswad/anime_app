import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app_colors.dart';
import 'app_font_weight.dart';

class AppTextStyles {
  AppTextStyles._();

  static TextStyle font14whiteSemiBold = TextStyle(
    fontSize: 14.sp,
    fontWeight: AppFontWeight.semiBold,
    color: AppColors.white,
  );

  static TextStyle font24DarkBlueBold = TextStyle(
    fontSize: 24.sp,
    fontWeight: AppFontWeight.bold,
    color: AppColors.drakBlue,
  );

  static TextStyle font14darkBlueBold = TextStyle(
    fontSize: 14.sp,
    fontWeight: AppFontWeight.bold,
    color: AppColors.drakBlue,
  );

  static TextStyle font12greyMedium = TextStyle(
    fontSize: 12.sp,
    fontWeight: AppFontWeight.medium,
    color: AppColors.grey,
  );

  static TextStyle font24blackBold = TextStyle(
    fontSize: 24.sp,
    fontWeight: AppFontWeight.bold,
    color: AppColors.black,
  );

  static TextStyle font16blackSemiBold = TextStyle(
    fontSize: 16.sp,
    fontWeight: AppFontWeight.semiBold,
    color: AppColors.black,
  );
}
