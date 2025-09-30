import '../../../../core/constants/app_assets.dart';
import 'package:flutter/material.dart';

class RocketBoyImage extends StatelessWidget {
  const RocketBoyImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      AppImages.rocketBoy,
      fit: BoxFit.cover,
      width: 207,
      height: 207,
    );
  }
}
