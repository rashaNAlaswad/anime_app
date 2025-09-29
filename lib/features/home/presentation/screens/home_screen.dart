import 'package:anime_ui/core/theme/app_text_styles.dart';
import 'package:flutter/material.dart';

import '../../../../core/helper/spacing.dart';
import '../widgets/filter_chips.dart';
import '../widgets/category_items.dart';

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
      body: SafeArea(
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
              Expanded(
                child: CategoryItems(selectedCategory: selectedCategory),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
