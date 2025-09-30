import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

import '../../../../core/helper/spacing.dart';
import '../../../../core/theme/app_text_styles.dart';
import '../../../detailed/presentation/screens/details_screen.dart';
import '../widgets/anime_list.dart';
import '../widgets/filter_chips.dart';
import '../widgets/star_background.dart';
import '../widgets/characters_list.dart';

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
          StarBackground(),
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
                    AnimeList(
                      selectedCategory: selectedCategory,
                      onAnimeTap: () {
                        PersistentNavBarNavigator.pushNewScreen(
                          context,
                          screen: const DetailsScreen(),
                          withNavBar: false,
                          pageTransitionAnimation:
                              PageTransitionAnimation.cupertino,
                        );
                      },
                    ),
                    verticalSpace(24),
                    Text(
                      'Top Characters',
                      style: AppTextStyles.font24blackBold,
                    ),
                    verticalSpace(24),
                    CharactersList(),
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
