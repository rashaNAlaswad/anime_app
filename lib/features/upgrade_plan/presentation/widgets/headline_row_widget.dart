import '../../../../core/constants/app_assets.dart';
import '../../../../core/constants/app_dimensions.dart';
import '../../../../core/theme/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HeadlineRowWidget extends StatelessWidget {
  const HeadlineRowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: Text(
            "Upgrade Plan",
            textAlign: TextAlign.center,
            style: AppTextStyles.font24DarkBlueBold,
          ),
        ),
        SvgPicture.asset(
          AppIcons.exit,
          width: AppDimensions.largeIconSize,
          height: AppDimensions.largeIconSize,
        ),
      ],
    );
  }
}
