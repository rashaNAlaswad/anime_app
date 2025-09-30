import 'package:anime_ui/core/constants/app_dimensions.dart';
import 'package:anime_ui/core/helper/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/theme/app_font_weight.dart' show AppFontWeight;
import '../../../../core/theme/app_text_styles.dart';

class InfoRow extends StatelessWidget {
  final String text;
  final String iconPath;

  const InfoRow({super.key, required this.text, required this.iconPath});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          iconPath,
          width: AppDimensions.smallIconSize.w,
          height: AppDimensions.smallIconSize.h,
        ),
        horizontalSpace(7),
        Text(
          text,
          style: AppTextStyles.font13whiteMedium.copyWith(
            fontWeight: AppFontWeight.regular,
          ),
        ),
      ],
    );
  }
}
