import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

import '../../core/constants/app_assets.dart';
import '../../core/constants/app_dimensions.dart';
import '../../core/theme/app_colors.dart';
import '../../core/theme/app_text_styles.dart';
import '../category/presentation/screens/category_screen.dart';
import '../home/presentation/screens/home_screen.dart';
import '../profile/presentation/screens/setting_screen.dart';
import '../search/presentation/screens/search_screen.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({super.key});

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  late PersistentTabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = PersistentTabController(initialIndex: 0);
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      handleAndroidBackButtonPress: true,
      resizeToAvoidBottomInset: true,
      stateManagement: true,
      hideNavigationBarWhenKeyboardAppears: true,
      navBarHeight: 70,
      backgroundColor: AppColors.scaffoldBackground,
      navBarStyle: NavBarStyle.style7,
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(20),
        colorBehindNavBar: AppColors.scaffoldBackground,
      ),
    );
  }

  List<Widget> _buildScreens() {
    return [
      const HomeScreen(),
      const CategoryScreen(),
      const SearchScreen(),
      const SettingScreen(),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      _buildNavBarItem(icon: AppIcons.home, title: "Home"),
      _buildNavBarItem(icon: AppIcons.category, title: "Category"),
      _buildNavBarItem(icon: AppIcons.search, title: "Search"),
      _buildNavBarItem(icon: AppIcons.setting, title: "Setting"),
    ];
  }

  PersistentBottomNavBarItem _buildNavBarItem({
    required String icon,
    required String title,
  }) {
    return PersistentBottomNavBarItem(
      icon: SvgPicture.asset(
        icon,
        colorFilter: const ColorFilter.mode(AppColors.white, BlendMode.srcIn),
      ),
      inactiveIcon: SvgPicture.asset(
        icon,
        colorFilter: const ColorFilter.mode(AppColors.grey, BlendMode.srcIn),
      ),
      title: title,
      textStyle: AppTextStyles.font14whiteSemiBold,
      activeColorPrimary: AppColors.bluePrimary,
      activeColorSecondary: Colors.white,
      inactiveColorPrimary: AppColors.grey,
      iconSize: AppDimensions.mediumIconSize,
    );
  }
}
