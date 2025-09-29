import 'package:anime_ui/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helper/spacing.dart';
import '../../../../core/theme/app_text_styles.dart';
import '../../../../core/utils/dummy_data.dart';
import '../../domain/models/anime_model.dart';

class CategoryItems extends StatelessWidget {
  final String selectedCategory;
  final VoidCallback? onAnimeTap;

  const CategoryItems({
    super.key,
    required this.selectedCategory,
    this.onAnimeTap,
  });

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
    return GestureDetector(
      onTap: onAnimeTap,
      child: SizedBox(
        width: 180.w,
        height: 290.h,
        child: Column(
          children: [
            Expanded(
              child: Stack(
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
                  Positioned(
                    top: 12.h,
                    right: 12.w,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 8.w,
                        vertical: 4.h,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20.r),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.star,
                            color: AppColors.bluePrimary,
                            size: 16.sp,
                          ),
                          horizontalSpace(4),
                          Text(
                            item.rating.toString(),
                            style: AppTextStyles.font16blackSemiBold.copyWith(
                              fontSize: 12.sp,
                              color: AppColors.bluePrimary,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 8.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    item.title,
                    style: AppTextStyles.font14darkBlueBold,
                    textAlign: TextAlign.center,
                  ),
                  verticalSpace(4),
                  Text(
                    item.type,
                    style: AppTextStyles.font12greyMedium,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
