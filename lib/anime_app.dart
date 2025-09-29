import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/routes/app_routes.dart';
import 'core/routes/routes.dart';
import 'core/theme/app_theme.dart';

class AnimeApp extends StatelessWidget {
  const AnimeApp({super.key, required this.appRouter});

  final AppRouter appRouter;

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        theme: appTheme(),
        debugShowCheckedModeBanner: false,
        initialRoute: Routes.navigation,
        onGenerateRoute: appRouter.onGenerateRoute,
      ),
    );
  }
}
