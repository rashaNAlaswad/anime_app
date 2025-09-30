import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constants/app_dimensions.dart';
import '../theme/app_colors.dart';
import '../theme/app_text_styles.dart';

class AppButton extends StatelessWidget {
  final String text;
  final String? iconPath;
  final VoidCallback? onTap;
  final bool isPrimary;
  final double? width;
  final double? height;
  final double? borderRadius;

  const AppButton({
    super.key,
    required this.text,
    this.iconPath,
    this.onTap,
    this.isPrimary = true,
    this.width,
    this.height,
    this.borderRadius
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius ?? 37),
          color: isPrimary
              ? AppColors.bluePrimary
              : AppColors.bluePrimary.withValues(alpha: 0.40),
        ),
        padding: const EdgeInsets.all(14),
        child: Row(
          spacing: 7,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (iconPath != null)
              SvgPicture.asset(
                iconPath!,
                width: AppDimensions.mediumIconSize.w,
                height: AppDimensions.mediumIconSize.h,
                colorFilter: ColorFilter.mode(AppColors.white, BlendMode.srcIn),
              ),
            Text(text, style: AppTextStyles.font15whiteSemiBold),
          ],
        ),
      ),
    );
  }
}
