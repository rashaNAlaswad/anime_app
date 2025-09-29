import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'anime_app.dart';
import 'core/routes/app_routes.dart';

void main() async {
  await ScreenUtil.ensureScreenSize();
  runApp(AnimeApp(appRouter: AppRouter()));
}
