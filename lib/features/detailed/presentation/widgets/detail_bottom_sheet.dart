import '../../../upgrade_plan/presentation/screens/upgrade_plan_screen.dart';
import 'package:flutter/material.dart';

import '../../../../core/constants/app_assets.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/widgets/app_button.dart';

class DetailBottomSheet extends StatelessWidget {
  const DetailBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.bottomSheetBackground,
      padding: const EdgeInsets.all(16),
      child: Row(
        spacing: 16,
        children: [
          Expanded(
            child: AppButton(
              text: 'preview',
              iconPath: AppIcons.preview,
              isPrimary: false,
              onTap: () {},
            ),
          ),
          Expanded(
            child: AppButton(
              text: 'Watch Now',
              iconPath: AppIcons.watchNow,
              isPrimary: true,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const UpgradePlanScreen(),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
