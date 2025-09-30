import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helper/spacing.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_text_styles.dart';

class FilterChips extends StatefulWidget {
  final Function(String) onCategorySelected;

  const FilterChips({super.key, required this.onCategorySelected});

  @override
  State<FilterChips> createState() => _FilterChipsState();
}

class _FilterChipsState extends State<FilterChips> {
  final List<String> filters = ["All", "Popular", "Trending", "New Releases"];

  String selected = "All";

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45.h,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: filters.length,
        itemBuilder: (context, index) {
          final item = filters[index];
          return _buildFilterChip(item);
        },
        separatorBuilder: (_, __) => horizontalSpace(4.w),
      ),
    );
  }

  FilterChip _buildFilterChip(String item) {
    return FilterChip(
      label: Text(item),
      labelPadding: EdgeInsets.fromLTRB(18, 8, 18, 8),
      labelStyle: selected == item
          ? AppTextStyles.font14whiteSemiBold.copyWith(
              color: AppColors.white,
              fontWeight: FontWeight.bold,
            )
          : AppTextStyles.font14whiteSemiBold.copyWith(
              color: AppColors.bluePrimary,
              fontWeight: FontWeight.bold,
            ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(100.r),
        side: BorderSide(color: AppColors.white),
      ),
      selectedColor: AppColors.bluePrimary,
      showCheckmark: false,
      selected: selected == item,
      onSelected: (value) {
        setState(() {
          selected = item;
        });
        widget.onCategorySelected(item);
      },
    );
  }
}
