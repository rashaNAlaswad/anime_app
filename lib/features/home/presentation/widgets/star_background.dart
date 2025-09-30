import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/app_assets.dart';

class StarBackground extends StatelessWidget {
  const StarBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: -50.h,
      right: -150.w,
      child: Transform.rotate(
        angle: 0.3,
        child: Image.asset(
          AppImages.star,
          width: 400.w,
          height: 400.h,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
