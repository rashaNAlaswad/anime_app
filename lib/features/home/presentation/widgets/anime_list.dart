import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helper/spacing.dart';
import '../../../../core/utils/dummy_data.dart';
import 'anime_item.dart';

class AnimeList extends StatelessWidget {
  final String selectedCategory;
  final VoidCallback? onAnimeTap;

  const AnimeList({super.key, required this.selectedCategory, this.onAnimeTap});

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
              return AnimeItem(onAnimeTap: onAnimeTap, anime: item);
            },
            separatorBuilder: (_, __) => horizontalSpace(14),
          ),
        ),
      ],
    );
  }
}
