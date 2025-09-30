import 'package:flutter/material.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_text_styles.dart';

class InfoChip extends StatelessWidget {
  final String text;
  final String? iconPath;

  const InfoChip({super.key, required this.text, this.iconPath});

  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Text(
        text,
        style: AppTextStyles.font13whiteMedium.copyWith(color: Colors.white),
      ),
      backgroundColor: AppColors.chipBackground,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
        side: BorderSide(color: AppColors.chipBackground),
      ),
    );
  }
}
