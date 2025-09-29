import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helper/spacing.dart';
import '../../../../core/theme/app_text_styles.dart';
import '../../../../core/utils/dummy_data.dart';
import '../../domain/models/anime_model.dart';

class CategoryItems extends StatelessWidget {
  final String selectedCategory;

  const CategoryItems({super.key, required this.selectedCategory});

  @override
  Widget build(BuildContext context) {
    final items = DummyData.categoryData[selectedCategory] ?? [];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 287.h,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: items.length,
            itemBuilder: (context, index) {
              final item = items[index];
              return _buildAnimeCard(item);
            },
            separatorBuilder: (_, __) => horizontalSpace(14),
          ),
        ),
      ],
    );
  }

  Widget _buildAnimeCard(AnimeModel item) {
    return SizedBox(
      width: 180.w,
      height: 290.h,
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(12.r)),
            child: Image.asset(
              item.image,
              width: 180.w,
              height: 230.h,
              fit: BoxFit.cover,
            ),
          ),
          verticalSpace(8),
          Column(
            spacing: 4.h,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(item.title, style: AppTextStyles.font14darkBlueBold),
              Text(item.type, style: AppTextStyles.font12greyMedium),
            ],
          ),
        ],
      ),
    );
  }
}
