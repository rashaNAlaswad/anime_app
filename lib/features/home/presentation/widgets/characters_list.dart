import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helper/spacing.dart';
import '../../../../core/utils/dummy_data.dart';
import 'character_item.dart';

class CharactersList extends StatelessWidget {
  const CharactersList({super.key});

  @override
  Widget build(BuildContext context) {
    final items = DummyData.characters;

    return SizedBox(
      height: 150.h,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        itemBuilder: (context, index) => CharacterItem(character: items[index]),
        separatorBuilder: (context, index) => horizontalSpace(12),
      ),
    );
  }
}
