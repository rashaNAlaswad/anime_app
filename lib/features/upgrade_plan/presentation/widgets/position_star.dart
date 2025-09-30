import '../../../../core/constants/app_assets.dart';
import 'package:flutter/material.dart';

class PositionStar extends StatelessWidget {
  const PositionStar({super.key, this.top, this.left, this.right, this.bottom});

  final double? top;
  final double? left;
  final double? right;
  final double? bottom;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      left: left,
      right: right,
      bottom: bottom,
      child: Image.asset(AppImages.star, width: 430, fit: BoxFit.cover),
    );
  }
}
