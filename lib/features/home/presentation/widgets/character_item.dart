import '../../../../core/helper/spacing.dart';
import '../../../../core/theme/app_font_weight.dart';
import '../../../../core/theme/app_text_styles.dart';
import '../../domain/models/character_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CharacterItem extends StatelessWidget {
  const CharacterItem({super.key, required this.character});

  final CharacterModel character;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: CircleAvatar(
            radius: 50.r,
            child: Image.asset(
              character.image,
              width: 100.w,
              height: 100.h,
              fit: BoxFit.cover,
            ),
          ),
        ),
        verticalSpace(8),
        Column(
          spacing: 4.h,
          children: [
            Text(
              character.name,
              style: AppTextStyles.font16blackSemiBold,
              textAlign: TextAlign.center,
            ),
            Text(
              character.series,
              style: AppTextStyles.font12greyMedium.copyWith(
                fontSize: 14,
                fontWeight: AppFontWeight.semiBold,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ],
    );
  }
}
