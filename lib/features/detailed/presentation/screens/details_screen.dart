import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/app_assets.dart';
import '../widgets/cover_image.dart';
import '../widgets/detail_bottom_sheet.dart';
import '../widgets/anime_info_section.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [const CoverImage(), const AnimeInfoSection()],
            ),
          ),
          Positioned(
            top: 519.h - 96,
            left: 0,
            right: 0,
            child: Center(
              child: Image.asset(
                AppImages.demonSlayer,
                width: 146.w,
                height: 193.h,
              ),
            ),
          ),
        ],
      ),
      bottomSheet: const DetailBottomSheet(),
    );
  }
}
