import 'headline_row_widget.dart';
import 'rocket_boy_image.dart';

import '../../../../core/helper/spacing.dart';
import '../../../../core/theme/app_text_styles.dart';
import 'package:flutter/material.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            HeadlineRowWidget(),
            verticalSpace(4),
            RocketBoyImage(),
            ...[
              Text(
                "Seamless Anime\nExperience, Ad-Free.",
                textAlign: TextAlign.center,
                style: AppTextStyles.font24DarkBlueBold,
              ),
              Text(
                "Enjoy unlimited anime streaming without interruptions.",
                textAlign: TextAlign.center,
                style: AppTextStyles.font14greyMedium,
              ),
            ],
          ],
        ),
      ),
    );
  }
}
