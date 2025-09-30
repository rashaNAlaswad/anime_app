import '../../../../core/constants/app_assets.dart';
import '../../../../core/helper/spacing.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_text_styles.dart';
import 'package:flutter/material.dart';

class UpgradePlanButton extends StatefulWidget {
  const UpgradePlanButton({super.key});

  @override
  State<UpgradePlanButton> createState() => _UpgradePlanButtonState();
}

class _UpgradePlanButtonState extends State<UpgradePlanButton> {
  String selectedPlan = "monthly";
  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 16,
      children: [
        _buildPlanCard(
          id: "monthly",
          title: "Monthly",
          price: "\$5 USD",
          description: "Include Family Sharing",
        ),
        _buildPlanCard(
          id: "annually",
          title: "Annually",
          price: "\$50 USD",
          description: "Include Family Sharing",
        ),
      ],
    );
  }

  Widget _buildPlanCard({
    required String id,
    required String title,
    required String price,
    required String description,
  }) {
    final bool isSelected = selectedPlan == id;

    return GestureDetector(
      onTap: () {
        setState(() {
          selectedPlan = id;
        });
      },
      child: Container(
        padding: const EdgeInsets.all(16),
        height: 120,
        decoration: BoxDecoration(
          color: isSelected ? AppColors.darkBlue : AppColors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(AppImages.files, width: 108, height: 108),
            horizontalSpace(16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: isSelected ? AppColors.white : AppColors.black,
                    ),
                  ),
                  verticalSpace(8),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "$price ",
                          style: AppTextStyles.font14whiteiBold.copyWith(
                            color: isSelected
                                ? AppColors.white
                                : AppColors.darkBlue,
                          ),
                        ),
                        TextSpan(
                          text: "/$title",
                          style: AppTextStyles.font14greyMedium,
                        ),
                      ],
                    ),
                  ),
                  verticalSpace(8),
                  Text(
                    description,
                    style: TextStyle(
                      fontSize: 12,
                      color: isSelected ? AppColors.white : AppColors.grey,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 24,
              height: 24,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: isSelected
                      ? AppColors.bluePrimary
                      : AppColors.darkBlue,
                  width: 2,
                ),
                color: isSelected ? AppColors.bluePrimary : Colors.transparent,
              ),
              child: isSelected
                  ? const Icon(Icons.check, size: 15, color: AppColors.black)
                  : null,
            ),
          ],
        ),
      ),
    );
  }
}
