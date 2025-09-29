import '../../features/detailed/presentation/screens/detailes_screen.dart';
import '../../features/home/presentation/screens/home_screen.dart';
import '../../features/navigations/navigation_screen.dart';
import 'package:flutter/material.dart';

import '../../features/category/presentation/screens/category_screen.dart';
import '../../features/profile/presentation/screens/setting_screen.dart';
import '../../features/search/presentation/screens/search_screen.dart';
import 'routes.dart';

class AppRouter {
  Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.navigation:
        return MaterialPageRoute(builder: (_) => const NavigationScreen());
      case Routes.home:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case Routes.cartegory:
        return MaterialPageRoute(builder: (_) => const CategoryScreen());
      case Routes.search:
        return MaterialPageRoute(builder: (_) => const SearchScreen());
      case Routes.setting:
        return MaterialPageRoute(builder: (_) => const SettingScreen());
      case Routes.details:
        return MaterialPageRoute(builder: (_) => const DetailesScreen());
    }
    return null;
  }
}
