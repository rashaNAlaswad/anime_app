import 'package:flutter/material.dart';

import '../../../../core/helper/spacing.dart';
import '../../../../core/theme/app_text_styles.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Search Screen', style: AppTextStyles.font24DarkBlueBold),
            verticalSpace(8),
            Text(
              'Find your favorite anime here',
              style: AppTextStyles.font12greyMedium.copyWith(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
