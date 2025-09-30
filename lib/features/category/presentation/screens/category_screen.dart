import 'package:flutter/material.dart';

import '../../../../core/helper/spacing.dart';
import '../../../../core/theme/app_text_styles.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Cartegory Screen', style: AppTextStyles.font24DarkBlueBold),
            verticalSpace(8),
            Text(
              'Your category collection',
              style: AppTextStyles.font12greyMedium.copyWith(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
