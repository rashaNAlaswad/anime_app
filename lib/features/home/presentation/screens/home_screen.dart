import 'package:anime_ui/core/constants/app_assets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theme/app_text_styles.dart';
import 'package:flutter/material.dart';

import '../../../../core/helper/spacing.dart';
import '../widgets/filter_chips.dart';
import '../widgets/category_items.dart';
import '../widgets/top_characters_list.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String selectedCategory = "All";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
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
          ),
          SafeArea(
            child: SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.all(14),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Where Anime Comes Alive',
                      style: AppTextStyles.font24DarkBlueBold,
                    ),
                    verticalSpace(24),
                    FilterChips(
                      onCategorySelected: (category) {
                        setState(() {
                          selectedCategory = category;
                        });
                      },
                    ),
                    verticalSpace(20),
                    CategoryItems(selectedCategory: selectedCategory),
                    verticalSpace(24),
                    Text(
                      'Top Characters',
                      style: AppTextStyles.font24blackBold,
                    ),
                    verticalSpace(24),
                    TopCharactersList(),
                    verticalSpace(28),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
