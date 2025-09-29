import '../../../../core/theme/app_font_weight.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helper/spacing.dart';
import '../../../../core/theme/app_text_styles.dart';
import '../../../../core/utils/dummy_data.dart';
import '../../domain/models/character_model.dart';

class TopCharactersList extends StatelessWidget {
  const TopCharactersList({super.key});

  @override
  Widget build(BuildContext context) {
    final items = DummyData.characters;

    return SizedBox(
      height: 150.h,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        itemBuilder: (context, index) => _buildCharacterCard(items[index]),
        separatorBuilder: (context, index) => horizontalSpace(12),
      ),
    );
  }

  Widget _buildCharacterCard(CharacterModel item) {
    return Column(
      children: [
        Center(
          child: CircleAvatar(
            radius: 50.r,
            child: Image.asset(
              item.image,
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
              item.name,
              style: AppTextStyles.font16blackSemiBold,
              textAlign: TextAlign.center,
            ),
            Text(
              item.series,
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
