import 'package:flutter/material.dart';

import '../../../../core/constants/app_assets.dart';
import '../../../../core/helper/spacing.dart';
import '../../../../core/theme/app_colors.dart';
import 'info_chip.dart';
import 'info_row.dart';

class AnimeInfoSection extends StatelessWidget {
  const AnimeInfoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 300,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [AppColors.gradientStart, AppColors.gradientEnd],
        ),
      ),
      child: Column(
        children: [
          verticalSpace(80),
          Row(
            spacing: 10,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InfoChip(text: "Dark Fantasy"),
              InfoChip(text: "Action"),
              InfoChip(text: "Adventure"),
            ],
          ),
          verticalSpace(23),
          Divider(
            thickness: 2,
            indent: 40,
            endIndent: 40,
            color: AppColors.grey,
          ),
          verticalSpace(12),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InfoRow(text: "2.3M views", iconPath: AppIcons.watchNow),
                InfoRow(text: "2K clap", iconPath: AppIcons.clap),
                InfoRow(text: "4 Seasons", iconPath: AppIcons.seasons),
              ],
            ),
          ),
          verticalSpace(12),
          Divider(
            thickness: 2,
            indent: 40,
            endIndent: 40,
            color: AppColors.grey,
          ),
        ],
      ),
    );
  }
}
