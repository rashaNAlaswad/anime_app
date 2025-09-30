import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/app_assets.dart';

class CoverImage extends StatelessWidget {
  const CoverImage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 519.h,
      width: double.infinity,
      child: Image.asset(AppImages.detailsCover, fit: BoxFit.cover),
    );
  }
}
